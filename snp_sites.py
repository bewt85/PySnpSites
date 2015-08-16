#!/usr/bin/env python

import argparse
import json
import unittest

from collections import OrderedDict
from cStringIO import StringIO

def write_row(row, output_file):
  output_file.write("\t".join(map(str, row)) + "\n")

def write_header(sequence_names, reference_length, output_file):
  args.output.write("""\
##fileformat=VCFv4.1
##contig=<ID=1,length=%i>
##FORMAT=<ID=GT,Number=1,Type=String,Description="Genotype">
""" % reference_length)
  header_row = ["#CHROM", "POS", "ID", "REF", "ALT", "QUAL", "FILTER", "INFO", "FORMAT"]
  header_row += sequence_names
  write_row(header_row, output_file)

def update_snps(sequence_names, snps, reference_seq, sequence_name, sequence_seq):
  sequence_names.append(sequence_name)
  for i in xrange(len(reference_seq)):
    if reference_seq[i] != sequence_seq[i]:
      snps.setdefault(i, []).append((len(sequence_names)-1, sequence_seq[i]))

def parse_fasta(input_fasta):
  for line in input_fasta:
    if line[0] == '>':
      break
  sequence_name = line[1:].strip()
  sequence_lines = []
  for line in input_fasta:
    if line[0] == '>':
      yield (sequence_name, "".join(sequence_lines))
      sequence_name = line[1:].strip()
      sequence_lines = []
    else:
      sequence_lines.append(line.strip())
  yield(sequence_name, "".join(sequence_lines))

if __name__ == '__main__':
  parser = argparse.ArgumentParser()
  parser.add_argument('input', type=argparse.FileType('r'),
                      default=open('random.short.fa', 'r'))
  parser.add_argument('output', type=argparse.FileType('w'),
                      default=open('random.short.fa.vcf', 'w'))
  args = parser.parse_args()
  
  sequences = parse_fasta(args.input)
  ref_name,ref_seq = sequences.next()
  snps = {}
  sequence_names = []
  sequence_names.append(ref_name)
  
  for seq_name,seq_seq in sequences:
    update_snps(sequence_names, snps, ref_seq, seq_name, seq_seq)
  
  snps = OrderedDict([(posn, snps[posn]) for posn in sorted(snps.keys())])
  
  write_header(sequence_names, len(ref_seq), args.output)
  
  for row_idx, (posn, snp_in_posn) in enumerate(snps.items()):
    ref_base = ref_seq[posn]
    output_row = [1, posn+1, '.', ref_base]
    alts_set = set([seq_base for _,seq_base in snp_in_posn])
    alts = {a: i+1 for i,a in enumerate(alts_set)}
    output_row.append(",".join(alts.keys()))
    output_row += ['.', '.', '.', 'GT']
    alts[ref_base] = 0
    snp_index_in_posn = [(idx, str(alts.get(base, '0'))) for idx,base in snp_in_posn]
    indices_at_posn = []
    for (seq_index, snp_base) in snp_index_in_posn:
      indices_at_posn += ['0'] * (seq_index - len(indices_at_posn)) + [snp_base]
    indices_at_posn += ['0'] * (len(sequence_names) - len(indices_at_posn))
    output_row += indices_at_posn
    write_row(output_row, args.output)

class TestParseFasta(unittest.TestCase):
  def test_parse(self):
    input_fasta = StringIO("""\
>foo
AAAAAAAAAAAAAAAAAAA
>bar
GGGGGGGGGGGGGGGGGGG
""")
    sequences = parse_fasta(input_fasta)
    self.assertEqual(sequences.next(), ('foo', 'AAAAAAAAAAAAAAAAAAA'))
    self.assertEqual(sequences.next(), ('bar', 'GGGGGGGGGGGGGGGGGGG'))

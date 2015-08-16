#!/usr/bin/env python

import argparse
import json
from Bio import SeqIO
from collections import OrderedDict

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

def update_snps(sequence_names, snps, reference_seq, sequence):
  sequence_seq = str(sequence.seq)
  sequence_names.append(sequence.name)
  for i in xrange(len(reference_seq)):
    if reference_seq[i] != sequence_seq[i]:
      snps.setdefault(i, []).append((len(sequence_names)-1, sequence_seq[i]))

if __name__ == '__main__':
  parser = argparse.ArgumentParser()
  parser.add_argument('input', type=argparse.FileType('r'),
                      default=open('random.short.fa', 'r'))
  parser.add_argument('output', type=argparse.FileType('w'),
                      default=open('random.short.fa.vcf', 'w'))
  args = parser.parse_args()
  
  sequences = SeqIO.parse(args.input, 'fasta')
  ref = sequences.next()
  snps = {}
  sequence_names = []
  sequence_names.append(ref.name)
  
  reference_seq = str(ref.seq)
  for seq in sequences:
    update_snps(sequence_names, snps, reference_seq, seq)
  
  snps = OrderedDict([(posn, snps[posn]) for posn in sorted(snps.keys())])
  
  write_header(sequence_names, len(ref.seq), args.output)
  
  for row_idx, (posn, snp_in_posn) in enumerate(snps.items()):
    ref_base = str(ref.seq)[posn]
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

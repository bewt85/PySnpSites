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

def update_snps(sequence_names, snps, reference, sequence):
  for i, (r, s) in enumerate(zip(str(reference.seq), str(sequence.seq))):
    if r != s:
      snps.setdefault(i, {})[sequence.name] = s
  sequence_names.append(sequence.name)

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
  
  for seq in sequences:
    update_snps(sequence_names, snps, ref, seq)
  
  snps = OrderedDict([(posn, snps[posn]) for posn in sorted(snps.keys())])
  
  write_header(sequence_names, len(ref.seq), args.output)
  
  for row_idx, (posn, snp_in_posn) in enumerate(snps.items()):
    ref_base = str(ref.seq)[posn]
    output_row = [1, posn+1, '.', ref_base]
    alts_set = set(snp_in_posn.values())
    alts = {a: i+1 for i,a in enumerate(alts_set)}
    output_row.append(",".join(alts.keys()))
    output_row += ['.', '.', '.', 'GT']
    alts[ref_base] = 0
    bases_at_posn = (snp_in_posn.get(name, ref_base) for name in sequence_names)
    indices_at_posn = [str(alts.get(base, '.')) for base in bases_at_posn]
    output_row += indices_at_posn
    write_row(output_row, args.output)

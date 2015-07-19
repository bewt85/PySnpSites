#!/usr/bin/env python

import json
from Bio import SeqIO
from collections import OrderedDict

input_file = open('random.short.fa', 'rU')
output_file = open('random.short.fa.vcf', 'w')

ref = SeqIO.parse(input_file, 'fasta').next()
snps = {}
sequence_names = []
sequence_names.append(ref.name)

def update_snps(sequence_names, snps, reference, sequence):
  for i, (r, s) in enumerate(zip(str(reference.seq), str(sequence.seq))):
    if r != s:
      snps.setdefault(i, {})[sequence.name] = s
  sequence_names.append(sequence.name)

for seq in SeqIO.parse(input_file, 'fasta'):
  update_snps(sequence_names, snps, ref, seq)

snps = OrderedDict([(posn, snps[posn]) for posn in sorted(snps.keys())])

for row_idx, (posn, snp_in_posn) in enumerate(snps.items()):
  ref_base = str(ref.seq)[posn]
  output_row = [str(posn), ref_base]
  alts_set = set(snp_in_posn.values())
  alts = {a: i+1 for i,a in enumerate(alts_set)}
  output_row.append(",".join(alts.keys()))
  alts[ref_base] = 0
  bases_at_posn = (snp_in_posn.get(name, ref_base) for name in sequence_names)
  indices_at_posn = [str(alts.get(base, '.')) for base in bases_at_posn]
  output_row += indices_at_posn
  output_file.write('\t'.join(output_row) + '\n')

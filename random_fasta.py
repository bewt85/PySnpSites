#!/usr/bin/env python

import pyximport
import random
from Bio import SeqIO

pyximport.install()
import random_fasta_extensions

# Makes about 1GB of sequences
N_SEQUENCES = 422
SEQUENCE_LENGTH = 5000000
MUTATION_RATE = 0.0001

bases = 'ACGT'
output_file = open('random.fa', 'w')

ref_sequence = ''.join([random.choice(bases) for i in xrange(SEQUENCE_LENGTH)])
name = "ref"

def write_sequence(output_file, name, sequence):
  output_file.write(">%s\n" % name)
  for i in xrange(0, len(sequence), 80):
    output_file.write("%s\n" % sequence[i:i+80])

write_sequence(output_file, name, ref_sequence)

for i in xrange(N_SEQUENCES):
  name = "seq_%s" % i
  sequence = random_fasta_extensions.mutate_sequence(ref_sequence, bases, MUTATION_RATE)
  write_sequence(output_file, name, sequence)

output_file.close()

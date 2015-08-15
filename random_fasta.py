#!/usr/bin/env python

import random
from Bio import SeqIO

# Makes about 1GB of sequences
N_SEQUENCES = 211
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

def mutate_sequence(sequence, mutation_rate):
  mutation = [s for s in sequence]
  for i,base in enumerate(sequence):
    if random.random() < mutation_rate:
      mutation[i] = random.choice(bases)
  return ''.join(mutation)

for i in xrange(N_SEQUENCES):
  name = "seq_%s" % i
  sequence = mutate_sequence(ref_sequence, MUTATION_RATE)
  write_sequence(output_file, name, sequence)

output_file.close()

import random

def mutate_sequence(sequence, bases, mutation_rate):
  mutation = [s for s in sequence]
  for i,base in enumerate(sequence):
    if random.random() < mutation_rate:
      mutation[i] = random.choice(bases)
  return ''.join(mutation)

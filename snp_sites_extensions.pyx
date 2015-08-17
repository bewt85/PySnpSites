from Bio import SeqIO

def parse_fasta(input_file):
  sequences = SeqIO.parse(input_file, 'fasta')
  for sequence in sequences:
    yield (sequence.name, str(sequence.seq))

def update_snps(sequence_names, snps, char[:] ref_seq, sequence_name, char[:] sequence_seq):
  sequence_names.append(sequence_name)
  cdef int i
  cdef char r,s
  for i in xrange(len(ref_seq)):
    r,s  = ref_seq[i], sequence_seq[i]
    if r != s:
      snps.setdefault(i, []).append((len(sequence_names)-1, chr(s)))

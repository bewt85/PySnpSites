def parse_fasta(input_fasta):
  for line in input_fasta:
     if line[0] == '>':
       break
  sequence_name = line[1:].rstrip()
  sequence_lines = []
  for line in input_fasta:
    if line[0] == '>':
      yield (sequence_name, "".join(sequence_lines))
      sequence_name = line[1:].rstrip()
      sequence_lines = []
    else:
      sequence_lines.append(line.rstrip())
  yield(sequence_name, "".join(sequence_lines))

def update_snps(sequence_names, snps, char[:] ref_seq, sequence_name, char[:] sequence_seq):
  sequence_names.append(sequence_name)
  cdef int i
  cdef char r,s
  for i in xrange(len(ref_seq)):
    r,s  = ref_seq[i], sequence_seq[i]
    if r != s:
      snps.setdefault(i, []).append((len(sequence_names)-1, chr(s)))

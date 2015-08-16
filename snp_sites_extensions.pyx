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

def update_snps(sequence_names, snps, ref_seq, sequence_name, sequence_seq):
  sequence_names.append(sequence_name)
  for i in xrange(len(ref_seq)):
    if ref_seq[i] != sequence_seq[i]:
      snps.setdefault(i, []).append((len(sequence_names)-1, sequence_seq[i]))

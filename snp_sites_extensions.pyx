def update_snps(sequence_names, snps, ref_seq, sequence_name, sequence_seq):
  sequence_names.append(sequence_name)
  for i in xrange(len(ref_seq)):
    if ref_seq[i] != sequence_seq[i]:
      snps.setdefault(i, []).append((len(sequence_names)-1, sequence_seq[i]))

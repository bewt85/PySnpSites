# PySnpSites

Experiments profiling and optimising something like [snp-sites](https://github.com/sanger-pathogens/snp_sites) written in Python.

Have a look at the git history to see the difference optimisations used, it's now plenty quick (10s for 1GB aligned fasta?).  The full log entries include run times for processing a cynthetic 1GB fasta (with a couple of exceptions).

This uses Cython; there are probably more annotations I could add to make this even quicker

## Usage

Create an aligned fasta with random sequences in your current directory (211 x 5MBases ~= 1GB fasta)

```
./random_fasta.py
```

Create a VCF from an aligned fasta

```
./snp_sites.py random.fa random.python.vcf
```

This should take about 10s per GB of input fasta

## WARNING

This is not a replacement for snp-sites.  For one thing, it uses a really hacky fasta parser which probably doesn't play nicely with any input not created by the `random_fasta.py` script used in this project.  For another, it doesn't sanity check the file are all.

Basically don't use this for anything, it is retained more as a quick reference for me.

(venv)~/PySnpSites$ time ./snp_sites.py random.short.fa random.short.vcf

real    0m9.919s
user    0m9.400s
sys     0m0.510s

(venv)~/PySnpSites$ time snp-sites -v -o random.original.short.vcf random.short.fa

real    0m14.865s
user    0m13.780s
sys     0m1.070s

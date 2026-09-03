#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --job-name=count99_2
#SBATCH --cpus-per-task=8
#SBATCH --time=6:00:00

FILE="/projects/bgmp/roj/bioinfo/Bi623/Project2/Project2_QAA/trimmomatic_out/SRR25630399_2Paired.fastq.gz"

zcat $FILE |
sed -n '2~4p' |\
awk '{print length($0)}' |\
sort -n |\
uniq -c >\
${FILE}.tsv
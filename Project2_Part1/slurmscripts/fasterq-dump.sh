#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=8
#SBATCH --job-name=fastqc
#SBATCH --time=12:00:00

export PATH=/projects/bgmp/roj/bioinfo/Bi623/rmsjdg-Bi623-ICA1/sratoolkit.3.4.1-ubuntu64/bin:$PATH

FIRST=SRR25630304
SECOND=SRR25630399

/usr/bin/time -v prefetch $FIRST --max-size u
/usr/bin/time -v prefetch $SECOND --max-size u
/usr/bin/time -v fasterq-dump $FIRST --threads 8 
/usr/bin/time -v fasterq-dump $SECOND --threads 8
/usr/bin/time -v fastqc SRR* -o /projects/bgmp/roj/bioinfo/Bi623/Project2/Project2_QAA
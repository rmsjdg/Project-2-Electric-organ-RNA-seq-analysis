#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --job-name=zipEmUp
#SBATCH --cpus-per-task=8
#SBATCH --time=6:00:00

pigz /projects/bgmp/roj/bioinfo/Bi623/Project2/Project2_QAA/sratoolkit_fqs/SRR25630399_1.fastq \
 /projects/bgmp/roj/bioinfo/Bi623/Project2/Project2_QAA/sratoolkit_fqs/SRR25630399_2.fastq \
 -p 8
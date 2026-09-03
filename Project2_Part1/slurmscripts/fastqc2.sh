#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=8
#SBATCH --job-name=fastqc
#SBATCH --time=12:00:00

export PATH=/projects/bgmp/roj/bioinfo/Bi623/rmsjdg-Bi623-ICA1/sratoolkit.3.4.1-ubuntu64/bin:$PATH

/usr/bin/time -v pixi run fastqc SRR* -o /projects/bgmp/roj/bioinfo/Bi623/Project2/Project2_QAA
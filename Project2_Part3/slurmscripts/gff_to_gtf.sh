#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=16
#SBATCH --job-name=gff_to_gtf
#SBATCH --output=slurm-%j-%x.out
#SBATCH --time=3:00:00

cd /projects/bgmp/roj/bioinfo/Bi623/Project2/Project2_QAA

/usr/bin/time -v pixi run agat_convert_sp_gff2gtf.pl \
 --gff Part2/campylomormyrus.gff \
 -o Part2/campylomormyrus.gtf
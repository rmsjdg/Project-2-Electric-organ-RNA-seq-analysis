#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=8
#SBATCH --job-name=star_db
#SBATCH --output=slurm-%j-%x.out
#SBATCH --time=3:00:00

cd /projects/bgmp/roj/bioinfo/Bi623/Project2/Project2_QAA

gtffile="Part2/campylomormyrus.gtf"
fastafile="Part2/campylomormyrus.fasta"

/usr/bin/time -v pixi run STAR \
 --runThreadN 8 \
 --runMode genomeGenerate \
 --genomeDir Part2/Campylomormyrus_compressirostris.dryad_c59zw3rcj.STAR_2.7.11b \
 --genomeFastaFiles $fastafile \
 --sjdbGTFfile $gtffile
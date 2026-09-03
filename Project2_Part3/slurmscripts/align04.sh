#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=8
#sbatch --mem=64G
#SBATCH --job-name=align04
#SBATCH --time=6:00:00
#SBATCH --output=slurm-%j-%x.out

cd /projects/bgmp/roj/bioinfo/Bi623/Project2/Project2_QAA

database='Part2/Campylomormyrus_compressirostris.dryad_c59zw3rcj.STAR_2.7.11b'
readsfile1="/projects/bgmp/roj/bioinfo/Bi623/Project2/Project2_QAA/trimmomatic_out/SRR25630304_1Paired.fastq.gz"
readsfile2="/projects/bgmp/roj/bioinfo/Bi623/Project2/Project2_QAA/trimmomatic_out/SRR25630304_2Paired.fastq.gz"

/usr/bin/time -v pixi run STAR \
 --runThreadN 8 \
 --runMode alignReads \
 --outFilterMultimapNmax 3 \
 --outSAMunmapped Within KeepPairs \
 --alignIntronMax 1000000 --alignMatesGapMax 1000000 \
 --readFilesCommand zcat \
 --readFilesIn $readsfile1 $readsfile2 \
 --genomeDir $database \
 --outFileNamePrefix alignments/align04_
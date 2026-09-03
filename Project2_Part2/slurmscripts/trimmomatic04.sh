#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=8
#SBATCH --job-name=trimmo04
#SBATCH --time=6:00:00


cd /projects/bgmp/roj/bioinfo/Bi623/Project2/Project2_QAA

/usr/bin/time -v pixi run trimmomatic PE\
 -Xmx16G\
 -threads 8\
 /projects/bgmp/roj/bioinfo/Bi623/Project2/Project2_QAA/cutadapt_out/SRR25630304_1_trimmed.fastq\
 /projects/bgmp/roj/bioinfo/Bi623/Project2/Project2_QAA/cutadapt_out/SRR25630304_2_trimmed.fastq\
 trimmomatic_out/SRR25630304_1Paired.fastq\
 trimmomatic_out/SRR25630304_1Unpaired.fastq\
 trimmomatic_out/SRR25630304_2Paired.fastq\
 trimmomatic_out/SRR25630304_2Unpaired.fastq\
 LEADING:3\
 TRAILING:3\
 SLIDINGWINDOW:5:15\
 MINLEN:35
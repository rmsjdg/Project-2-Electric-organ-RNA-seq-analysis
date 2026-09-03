#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=8
#SBATCH --job-name=trimmo99
#SBATCH --time=6:00:00
#SBATCH --output=slurm-%j.%x.out


cd /projects/bgmp/roj/bioinfo/Bi623/Project2/Project2_QAA

/usr/bin/time -v pixi run trimmomatic PE\
 -Xmx16G\
 -threads 8\
 cutadapt_out/SRR25630399_1_cut.fastq\
 cutadapt_out/SRR25630399_2_cut.fastq\
 trimmomatic_out/SRR25630399_1Paired.fastq.gz\
 trimmomatic_out/SRR25630399_1Unpaired.fastq.gz\
 trimmomatic_out/SRR25630399_2Paired.fastq.gz\
 trimmomatic_out/SRR25630399_2Unpaired.fastq.gz\
 LEADING:3\
 TRAILING:3\
 SLIDINGWINDOW:5:15\
 MINLEN:35
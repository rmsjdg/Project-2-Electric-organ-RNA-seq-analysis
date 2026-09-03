#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=8
#SBATCH --job-name=cutadapt
#SBATCH --time=6:00:00


#forward
cd /projects/bgmp/roj/bioinfo/Bi623/Project2/Project2_QAA

# /usr/bin/time -v pixi run cutadapt\
#  -a AGATCGGAAGAGCACACGTCTGAACTCCAGTCA\
#  -o cutadapt_out/SRR25630304_1_cut.fastq\
#  sratoolkit_fqs/SRR25630304_1.fastq

 /usr/bin/time -v pixi run cutadapt\
 -a AGATCGGAAGAGCACACGTCTGAACTCCAGTCA\
 -o cutadapt_out/SRR25630399_1_cut.fastq\
 sratoolkit_fqs/SRR25630399_1.fastq.gz

#  #reverse
#  /usr/bin/time -v pixi run cutadapt\
#  -a AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT\
#  -o cutadapt_out/SRR25630304_2_cut.fastq\
#  sratoolkit_fqs/SRR25630304_2.fastq

 /usr/bin/time -v pixi run cutadapt\
 -a AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT\
 -o cutadapt_out/SRR25630399_2_cut.fastq\
 sratoolkit_fqs/SRR25630399_2.fastq.gz
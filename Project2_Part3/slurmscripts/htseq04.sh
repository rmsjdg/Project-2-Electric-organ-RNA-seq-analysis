#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=8
#SBATCH --job-name=hseq04
#SBATCH --time=6:00:00
#SBATCH --output=slurm-%j-%x.out

cd /projects/bgmp/roj/bioinfo/Bi623/Project2/Project2_QAA

##stranded=reverse
/usr/bin/time -v pixi run htseq-count \
 -i Parent\
 --stranded=reverse\
 /projects/bgmp/roj/bioinfo/Bi623/Project2/Project2_QAA/alignments/align04_Aligned.out.sam \
 /projects/bgmp/roj/bioinfo/Bi623/Project2/Project2_QAA/Part3/campylomormyrus.gff >\
 /projects/bgmp/roj/bioinfo/Bi623/Project2/Project2_QAA/Part3/htseq_04_rev.txt

#--stranded=yes
 /usr/bin/time -v pixi run htseq-count \
 -i Parent\
 --stranded=yes\
 /projects/bgmp/roj/bioinfo/Bi623/Project2/Project2_QAA/alignments/align04_Aligned.out.sam \
 /projects/bgmp/roj/bioinfo/Bi623/Project2/Project2_QAA/Part3/campylomormyrus.gff >\
 /projects/bgmp/roj/bioinfo/Bi623/Project2/Project2_QAA/Part3/htseq_04_yes.txt
# Project 2 Part 3 Answers

## Un/Mapped Reads
When running `report_reads.py` on my 04 fie:  
- Unmapped reads: 3771295
- Mapped reads: 80815131
- Total reads: 84586426

When running `report_reads.py` on my 99 file:  
- Unmapped reads: 4670164
- Mapped reads: 80493368
- Total reads: 85163532

## Library Strandedness
**Demonstrate convincingly whether or not the data are from "strand-specific" RNA-Seq libraries and which stranded= parameter should you use for counting your reads for a future differential gene expression analyses. Include any commands/scripts used. Briefly describe your evidence, using quantitative statements (e.g. "I propose that these data are/are not strand-specific, because X% of the reads are y, as opposed to z.").**


The NEXTFLEX Rapid Directional RNA-Seq Kit 2.0 is a strand-specific RNA-seq prep kit, clearly indicating that the library was stranded. 

Values for number and percent mapped reads: 
- 04_yes: 1328146 = 3.14%
- 04_rev: 24123958 = 57.04%
- 99_yes: 1195497 = 2.08%
- 99_rev: 23357415 = 54.85% 

Since the `yes` run had almost no reads mapped compared to the `reverse` run, it is an indicator that the library was stranded. If the library prep was not stranded, we'd have approximately the same proportion of mapped reads when compare + to + (`--stranded=yes`) than when we compare + to - (`--stranded=reverse`). 

If we had the same type of library prep, we'd want to use `--stranded=reverse` in the future too! 
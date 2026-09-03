# Project 2 Part 2 Answers
[Link to R code (for plotting)](./frequency/Project2_Part2_answers.R)

### Cutadapt
**What proportion of reads were trimmed?**  
- 04_1: 8.0%
- 04_2: 8.7%
- 99_1: 11.6%
- 99_2: 12.2%

The 99 file had more contamination than the 04 file, and the reverse reads had slightly more trimming than the forward reads. 

To determine the adapter sequence, I referenced the final graph of the fastqc results and noticed Illumina adapter contamination. I then looked up the Illumina universal adapter sequence. [Illumina Website Link](https://knowledge.illumina.com/library-preparation/general/library-preparation-general-reference_material-list/000001314)

### Trimmomatic
**Comment on whether you expect R1s and R2s to be adapter-trimmed at different rates and why.**  
Adapter contamination would happen if the insert length was shorter than the read length and hopefully the inserts would be the same length, so the reads would be the same length and there wouldn't be a bias on which read would contain more adapter sequence than the other. However, reviewing the cutadapt outs, the reverse files had a slightly higher rate of adapter contamination. This may be due to the order that the reads are taken in? 
# Project 2 QC Analysis (`fastqc`)
## **SRR25630304**

Both forward and back reads showed the same 6.3 Gbp with 48% GC content. No sequences were flagged as low-quality. The per base sequence content looks troublesome, but that is simply due to primers and will be removed later. 

The sequence duplication section got a poor score, but that's because it's designed for WGS data and we're analyzing RNA data. The adapter content is low (approx 3%).

## **SRR25630399**

Forward and back reads both showed 6.4 Gbp with 47% GC content and no seqs flagged as low-quality. The same observations regarding per-base sequence content and sequence duplication are present as in SRR25630304. 

These files differ as they have higher adapter content toward the end of the read (~7%).
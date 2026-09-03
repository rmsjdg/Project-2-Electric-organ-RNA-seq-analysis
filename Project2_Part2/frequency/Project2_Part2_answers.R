setwd("/projects/bgmp/roj/bioinfo/Bi623/Project2/Project-2-Electric-organ-RNA-seq-analysis/Project2_Part2/frequency")

library(ggplot2)
library(dplyr)

#Load in data
A1 = read.table("SRR25630304_1.txt")
A2 = read.table("SRR25630304_2.txt")
B1 = read.table("SRR25630399_1.txt")
B2 = read.table("SRR25630399_2.txt")

A_combo = bind_rows("Read 1" = A1, "Read 2" = A2, .id = "Read") #Combine fw and rv read freqs into one object.

ggplot(A_combo, aes(x=V2, y=log(V1), color=Read)) + #Initialize the plot, feed in data, set x, y, and color.
  geom_point(alpha=0.5) + #Plot as scatter, alpha for transparency
  theme_bw() + #Clear background
  labs( #Labels
    title="Post-Trimming Read Length Frequency by Read (SRR25630304)", 
    x = "Length",
    y="Log Frequency"
  ) +
  scale_color_manual(values=c("cornflowerblue", "hotpink")) #Set colors

ggsave("SRR25630304.png", width = 7, height = 5) #Save file

B_combo = bind_rows("Read 1" = B1, "Read 2" = B2, .id = "Read")

ggplot(B_combo, aes(x=V2, y=log(V1), color=Read)) +
  geom_point(alpha=0.5) +
  theme_bw() + 
  labs(
    title="Post-Trimming Read Length Frequency by Read (SRR25630399)",
    x = "Length",
    y="Log Frequency"
  ) +
  scale_color_manual(values=c("cornflowerblue", "hotpink"))

ggsave("SRR25630399.png", width = 7, height = 5)

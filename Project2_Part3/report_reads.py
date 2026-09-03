#!/usr/bin/env python

import argparse

def get_args():
    parser = argparse.ArgumentParser(description="A program that _.")
    parser.add_argument("-s", "--sam-file", help="Input aligned .sam file.", required = True, type = str)
    return parser.parse_args()
args = get_args()

with open(args.sam_file) as fh:
    mapped_reads = 0
    unmapped_reads = 0
    for line in fh:
        if not line.startswith("@"):
            line_split = line.split("\t")
            flag = int(line_split[1])
            if (flag & 256) != 256:
                if((flag & 4) != 4):
                    mapped_reads+=1
                else:
                    unmapped_reads+=1
    total_reads=mapped_reads+unmapped_reads


print(f"Unmapped reads: {unmapped_reads}\nMapped reads: {mapped_reads}\nTotal reads: {total_reads}")
#!/usr/bin/env python3
# CIFAR-10, binary representation to ASCII representation, takes roughly ~4x
# the space of the binary file

import sys

if len(sys.argv) != 3:
    print(f"usage: {sys.argv[0]} <binary file> <target ASCII file>")

binfile = sys.argv[1]
outfile = sys.argv[2]

print(f"reading from {binfile}...")

datapoints = []
with open(binfile, "rb") as f:
    bs = f.read()
    # each data point should be (1 + 3072) bytes each:
    modlength = len(bs) % (1 + 3072)
    assert modlength == 0, f"invalid modlength {modlength} (len(bs): {len(bs)})"
    i = 0
    while i < len(bs):
        cls = bs[i]
        data = [b for b in bs[i+1:i+1+3072]]
        datapoints.append((cls, data))
        i += 1 + 3072

print(f"writing to {outfile}...")

# Outfile format is the bytes written in decimal, with LF separating datapoints
with open(outfile, "w+") as f:
    for (cls, data) in datapoints:
        f.write(f"{cls}")
        for d in data:
            f.write(f" {d}")
        f.write("\n")

print("done.")

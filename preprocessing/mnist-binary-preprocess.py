#!/usr/bin/env python3
# MNIST dataset decoding (http://yann.lecun.com/exdb/mnist/), binary
# representation to ASCII representation, takes roughly ~4x the space of the
# binary file

import struct
import sys

def uint32_from_be(bs):
    assert len(bs) == 4
    return struct.unpack(">I", bs)[0]

if len(sys.argv) not in [4, 5]:
    print(f"usage: {sys.argv[0]} <binary data file> <binary label file> <target ASCII file> [length divisor]")

bin_datafile = sys.argv[1]
bin_labelfile = sys.argv[2]
outfile = sys.argv[3]
len_divisor = 1
if len(sys.argv) == 4:
    len_divisor = int(sys.argv[4])

datapoints = []

print(f"reading images from {bin_datafile}...")
with open(bin_datafile, "rb") as f:
    bs = f.read()
    magic_number = uint32_from_be(bs[0:4])
    assert magic_number == 2051, f"Invalid magic number {magic_number}, expected 2051"
    n_images = uint32_from_be(bs[4:8]) // len_divisor
    rows = uint32_from_be(bs[8:12])
    cols = uint32_from_be(bs[12:16])
    assert rows == 28, f"Expected number of rows to be 28, got {rows}"
    assert cols == 28, f"Expected number of cols to be 28, got {cols}"
    expected_bytes = 16 + (rows * cols * n_images)
    assert expected_bytes == len(bs), f"Expected number of bytes to be {expected_bytes}, got {len(bs)}"
    for i in range(n_images):
        start = 16 + (i * rows * cols)
        end = 16 + ((i + 1) * rows * cols)
        datapoints.append((None, bs[start:end]))

print(f"reading labels from {bin_labelfile}...")
with open(bin_labelfile, "rb") as f:
    bs = f.read()
    magic_number = uint32_from_be(bs[0:4])
    assert magic_number == 2049, f"Invalid magic number {magic_number}, expected 2049"
    n_labels = uint32_from_be(bs[4:8])
    assert n_labels == len(datapoints), f"Expected number of labels to be {len(datapoints)}, got {n_labels}"
    expected_bytes = 8 + n_labels
    assert expected_bytes == len(bs), f"Expected number of bytes to be {expected_bytes}, got {len(bs)}"
    for i in range(n_labels):
        _, data = datapoints[i]
        datapoints[i] = (int(bs[8+i]), data)

print(f"writing to {outfile}...")

# Outfile format is the bytes written in decimal, with LF separating datapoints
with open(outfile, "w+") as f:
    for (cls, data) in datapoints:
        f.write(f"{cls}")
        for d in data:
            f.write(f" {d}")
        f.write("\n")

print("done.")

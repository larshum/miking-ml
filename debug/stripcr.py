#!/usr/bin/python3

import argparse
import os
import sys

parser = argparse.ArgumentParser(description="Strip CRs from a file")
parser.add_argument("file", type=os.path.realpath)

args = parser.parse_args()

lines = []
stripped_crs = 0
print(f"Scanning lines from {args.file}")
with open(args.file, "rb") as f:
	while True:
		line = f.readline()
		if line == b"":
			break

		idx = line.rfind(b"\r")
		if idx >= 0:
			line = line[idx+1:]
			stripped_crs += 1

		lines.append(line)

print(f"Writing processed lines back to {args.file}")
with open(args.file, "wb") as f:
	f.write(b"".join(lines))

print(f"Done (stripped_crs: {stripped_crs})")

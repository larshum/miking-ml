import re
import statistics

r = re.compile("elapsed time: (.*) ms")

def parse_time(fileid):
    with open(fileid) as f:
        text = f.read()
    return float(r.findall(text)[0]) / 1000.0

runs = ["serialrun", "acceleraterun"]
benches = ["mnist", "cifar10"]

for run in runs:
    for bench in benches:
        name = f"{run}-{bench}"
        times = [parse_time(f"{name}.out{i+1}") for i in range(10)]
        print(name, statistics.mean(times), statistics.stdev(times))

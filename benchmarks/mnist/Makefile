.PHONY: all mcore-cpu

include ../common.mk

MNIST_TRAININGSET=../../_data/mnist-train.txt
MNIST_VALIDATIONSET=../../_data/mnist-t10k.txt

MCORE_CPU_OUTFILE=$(BM_OUTDIR)/bm-mnist-mcore-cpu.out

all: mcore-cpu

mcore-cpu:
	mkdir -p $(BM_OUTDIR)
	mi compile --output "$(MCORE_CPU_OUTFILE)" bm-mnist.mc

mcore-cpu-run:
	$(MCORE_CPU_OUTFILE) $(MNIST_TRAININGSET) $(MNIST_VALIDATIONSET)

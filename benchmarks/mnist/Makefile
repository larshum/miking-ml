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

pytorch-cpu-run:
	# NOTE: On alpine: `apk add py3-pip python3-devel` and `pip3 install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cpu`
	python3 bm-mnist.py $(MNIST_TRAININGSET) $(MNIST_VALIDATIONSET)

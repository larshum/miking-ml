.PHONY: run

SHELL = bash

GET_PART = $(word $2,$(subst -, ,$1))

N_RUNS = 10
VARIANTS = pytorch-cpu pytorch-gpu tensorflow-cpu tensorflow-gpu

run:
	make run-cifar10 run-mnist

run-%:
	make $(foreach v,$(VARIANTS),$(v)-$*.run)

# Invoke as <pytorch|tensorflow>-<cpu|gpu>-<cifar10|mnist>.run
%.run: FORCE
	$(eval LIBRARY := $(call GET_PART,$*,1))
	$(eval BACKEND := $(call GET_PART,$*,2))
	$(eval DATASET := $(call GET_PART,$*,3))
	$(eval CONDAENV := $(call GET_PART,$*,1)-$(call GET_PART,$*,2))
	$(eval PYTHONFILE := $(call GET_PART,$*,3)/bm-$(call GET_PART,$*,3)-$(call GET_PART,$*,1).py)
	$(eval TRAINFILE := $(shell                          \
	    if [ "$(call GET_PART,$*,3)" = "cifar10" ]; then \
	        echo "../_data/cifar10-data_batch_all.txt";  \
	    else                                             \
	        echo "../_data/mnist-train.txt";             \
	    fi))
	$(eval VALIDFILE := $(shell                          \
	    if [ "$(call GET_PART,$*,3)" = "cifar10" ]; then \
	        echo "../_data/cifar10-test_batch.txt";      \
	    else                                             \
	        echo "../_data/mnist-t10k.txt";              \
	    fi))
	$(eval GPUOPTS := $(shell                        \
	    if [ "$(call GET_PART,$*,2)" = "gpu" ]; then \
	        echo "--cuda";                           \
	    else                                         \
	        echo "";                                 \
	    fi))
	$(eval TARGETFILE := $*.out)
	@echo "Running benchmarks on $* ..."
	@__conda_init; conda activate $(CONDAENV);                                         \
	for i in $(shell seq 1 $(N_RUNS)); do                                              \
	    echo "  [Run $$i of $(N_RUNS) | Output file: $(TARGETFILE)$$i]";               \
	    python3 $(PYTHONFILE) $(TRAINFILE) $(VALIDFILE) $(GPUOPTS) > $(TARGETFILE)$$i; \
	done
FORCE:


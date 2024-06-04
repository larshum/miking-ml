.PHONY: run
.ONESHELL:

SHELL = bash

GET_PART = $(word $2,$(subst -, ,$1))

N_RUNS = 10
VARIANTS = pytorch-cpu pytorch-gpu tensorflow-cpu tensorflow-gpu

CONDA_ACTIVATE = source $$(conda info --base)/etc/profile.d/conda.sh ; conda activate ; conda activate

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
	$(CONDA_ACTIVATE) $(CONDAENV)
	for i in $(shell seq 1 $(N_RUNS)); do                                              \
	    echo "  [Run $$i of $(N_RUNS) | Output file: $(TARGETFILE)$$i]";               \
	    python3 $(PYTHONFILE) $(TRAINFILE) $(VALIDFILE) $(GPUOPTS) > $(TARGETFILE)$$i; \
	done
FORCE:

generate:
	make generate-mnist generate-cifar10

generate-%:
	mi compile --accelerate --debug-generate $*/bm-$*.mc | awk '{print $$5;}' | xargs -I DIR mv DIR ./gen-$*
	cp mcore-utils/Makefile ./gen-$*/Makefile
	cp mcore-utils/dune.untransformed ./gen-$*/dune.untransformed


# For running reduced MCore benchmarks:

serialgen:
	make serialgen-mnist serialgen-cifar10

serialgen-%:
	mkdir -p ./gen-serial-$*
	mi compile $*/bm-$*.mc
	mv bm-$* ./gen-serial-$*

serialrun:
	make mnist.serialrun cifar10.serialrun

%.serialrun: FORCE
	$(eval DATASET := $*)
	$(eval TRAINFILE := $(shell                          \
            if [ "$*" = "cifar10" ]; then                    \
                echo "../_data/cifar10-data_batch_n600.txt"; \
            else                                             \
                echo "../_data/mnist-train-600.txt";         \
            fi))
	$(eval VALIDFILE := $(shell                          \
            if [ "$*" = "cifar10" ]; then                    \
                echo "../_data/cifar10-test_batch_n100.txt"; \
            else                                             \
                echo "../_data/mnist-t10k-100.txt";          \
            fi))
	$(eval TARGETFILE := serialrun-$*.out)
	@echo "Running serial benchmarks on $* ..."
	for i in $(shell seq 1 $(N_RUNS)); do                                 \
            echo "  [Run $$i of $(N_RUNS) | Output file: $(TARGETFILE)$$i]";  \
            ./gen-serial-$*/bm-$* $(TRAINFILE) $(VALIDFILE) > $(TARGETFILE)$$i; \
        done

accelerategen:
	make accelerategen-mnist accelerategen-cifar10

accelerategen-%:
	mkdir -p ./gen-accelerate-$*
	mi compile --accelerate $*/bm-$*.mc
	mv bm-$* ./gen-accelerate-$*

acceleraterun:
	make mnist.acceleraterun cifar10.acceleraterun

%.acceleraterun: FORCE
	$(eval DATASET := $*)
	$(eval TRAINFILE := $(shell                          \
            if [ "$*" = "cifar10" ]; then                    \
                echo "../_data/cifar10-data_batch_n600.txt"; \
            else                                             \
                echo "../_data/mnist-train-600.txt";         \
            fi))
	$(eval VALIDFILE := $(shell                          \
            if [ "$*" = "cifar10" ]; then                    \
                echo "../_data/cifar10-test_batch_n100.txt"; \
            else                                             \
                echo "../_data/mnist-t10k-100.txt";          \
            fi))
	$(eval TARGETFILE := acceleraterun-$*.out)
	@echo "Running serial benchmarks on $* ..."
	for i in $(shell seq 1 $(N_RUNS)); do                                 \
            echo "  [Run $$i of $(N_RUNS) | Output file: $(TARGETFILE)$$i]";  \
            ./gen-accelerate-$*/bm-$* $(TRAINFILE) $(VALIDFILE) > $(TARGETFILE)$$i; \
        done

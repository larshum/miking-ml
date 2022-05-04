.PHONY: build run run-cifar10 run-mnist

N_RUNS=10

CIFAR10-DIRS=cifar10-mc-32f          \
             cifar10-mc-cublas       \
             cifar10-mc-rowmajor-32f

MNIST-DIRS=mnist-mc-32f          \
           mnist-mc-cublas       \
           mnist-mc-rowmajor-32f

CIFAR10-BINS=$(foreach d,$(MNIST-DIRS),$(d).exe)

MNIST-BINS=$(foreach d,$(MNIST-DIRS),$(d).exe)

ALL-DIRS=$(CIFAR10-DIRS) $(MNIST-DIRS)
ALL-BINS=$(CIFAR10-BINS) $(MNIST-BINS)


build: $(ALL-BINS)

run: run-cifar10 run-mnist

%.exe:
	$(eval DIR := $*)
	$(eval BIN := $@)
	make -C $(DIR) rebuild
	cp $(DIR)/_build/default/program.exe $(BIN)

run-cifar10: $(foreach d,$(CIFAR10-DIRS),$(d).run)

run-mnist: $(foreach d,$(MNIST-DIRS),$(d).run)

cifar10-%.run:
	$(eval DIR := cifar10-$*)
	$(eval BIN := cifar10-$*.exe)
	$(eval TARGETFILE := cifar10-$*.out)
	$(eval TRAINFILE := ../_data/cifar10-data_batch_all.txt)
	$(eval VALIDFILE := ../_data/cifar10-test_batch.txt)
	@echo "Running benchmarks on $(BIN) ..."
	@for i in $(shell seq 1 $(N_RUNS)); do                               \
	    echo "  [Run $$i of $(N_RUNS) | Output file: $(TARGETFILE)$$i]"; \
	    ./$(BIN) $(TRAINFILE) $(VALIDFILE) > $(TARGETFILE)$$i;           \
	    ./stripcr.py $(TARGETFILE)$$i;                                   \
	done

mnist-%.run:
	$(eval DIR := mnist-$*)
	$(eval BIN := mnist-$*.exe)
	$(eval TARGETFILE := mnist-$*.out)
	$(eval TRAINFILE := ../_data/mnist-train.txt)
	$(eval VALIDFILE := ../_data/mnist-t10k.txt)
	@echo "Running benchmarks on $(BIN) ..."
	@for i in $(shell seq 1 $(N_RUNS)); do                               \
	    echo "  [Run $$i of $(N_RUNS) | Output file: $(TARGETFILE)$$i]"; \
	    ./$(BIN) $(TRAINFILE) $(VALIDFILE) > $(TARGETFILE)$$i;           \
	    ./stripcr.py $(TARGETFILE)$$i;                                   \
	done

.PHONY: dqn dl-data clean

IMAGE=mikinglang/miking:latest-alpine

MIDEBUG_ALIAS='"alias mi-debug="boot eval <miking-path>/src/main/mi.mc --debug-stack-trace --"'

example-mnist:
	$(eval PWD := $(shell pwd -P))
	$(eval TRAINFILE := /mnt/_data/mnist-train.txt)
	$(eval VALIDFILE := /mnt/_data/mnist-t10k.txt)
	docker run --rm -it -v $(PWD):/mnt:ro \
	           --name example-mnist \
	           --hostname example-mnist \
	           $(IMAGE) \
	           bash -c "mi compile /mnt/src/main.mc --output /tmp/miml && exec /tmp/miml mnist $(TRAINFILE) $(VALIDFILE)"

example-cifar10-%: FORCE
	$(eval PWD := $(shell pwd -P))
	$(eval TRAINFILE := _data/cifar10-data_batch_$*.txt)
	$(eval VALIDFILE := _data/cifar10-test_batch.txt)
	docker run --rm -it -v $(PWD):/mnt:ro \
	           --name example-cifar10-$* \
	           --hostname example-cifar10-$* \
	           $(IMAGE) \
	           bash -c "mi compile /mnt/src/main.mc --output /tmp/miml && exec /tmp/miml cifar10 $(TRAINFILE) $(VALIDFILE)"
FORCE:


dl-data:
	mkdir -p _data/dl
	curl -L -o _data/dl/cifar-10-binary.tar.gz http://www.cs.toronto.edu/~kriz/cifar-10-binary.tar.gz
	curl -L -o _data/dl/train-images-idx3-ubyte.gz http://yann.lecun.com/exdb/mnist/train-images-idx3-ubyte.gz
	curl -L -o _data/dl/train-labels-idx1-ubyte.gz http://yann.lecun.com/exdb/mnist/train-labels-idx1-ubyte.gz
	curl -L -o _data/dl/t10k-images-idx3-ubyte.gz http://yann.lecun.com/exdb/mnist/t10k-images-idx3-ubyte.gz
	curl -L -o _data/dl/t10k-labels-idx1-ubyte.gz http://yann.lecun.com/exdb/mnist/t10k-labels-idx1-ubyte.gz
	cd _data/dl && tar -xzvf cifar-10-binary.tar.gz
	cd _data/dl && gunzip *-ubyte.gz

preprocess:
	$(eval CIFAR10_PROG := python3 preprocessing/cifar10-binary-preprocess.py)
	$(eval MNIST_PROG := python3 preprocessing/mnist-binary-preprocess.py)
	$(CIFAR10_PROG) _data/dl/cifar-10-batches-bin/data_batch_1.bin _data/cifar10-data_batch_1.txt
	$(CIFAR10_PROG) _data/dl/cifar-10-batches-bin/data_batch_2.bin _data/cifar10-data_batch_2.txt
	$(CIFAR10_PROG) _data/dl/cifar-10-batches-bin/data_batch_3.bin _data/cifar10-data_batch_3.txt
	$(CIFAR10_PROG) _data/dl/cifar-10-batches-bin/data_batch_4.bin _data/cifar10-data_batch_4.txt
	$(CIFAR10_PROG) _data/dl/cifar-10-batches-bin/data_batch_5.bin _data/cifar10-data_batch_5.txt
	$(CIFAR10_PROG) _data/dl/cifar-10-batches-bin/test_batch.bin _data/cifar10-test_batch.txt
	$(MNIST_PROG) _data/dl/t10k-images-idx3-ubyte _data/dl/t10k-labels-idx1-ubyte _data/mnist-t10k.txt
	$(MNIST_PROG) _data/dl/train-images-idx3-ubyte _data/dl/train-labels-idx1-ubyte _data/mnist-train.txt

clean:
	rm -rf _data

_data/mnist-train-600.txt:
	python3 preprocessing/mnist-binary-preprocess.py _data/dl/train-images-idx3-ubyte _data/dl/train-labels-idx1-ubyte _data/mnist-train-600.txt 100
_data/mnist-t10k-100.txt:
	python3 preprocessing/mnist-binary-preprocess.py _data/dl/t10k-images-idx3-ubyte _data/dl/t10k-labels-idx1-ubyte _data/mnist-t10k-100.txt 100

test-cuda: _data/mnist-train-600.txt _data/mnist-t10k-100.txt
	mi compile --accelerate-cuda benchmarks/mnist/bm-mnist.mc
	./bm-mnist _data/mnist-train-600.txt _data/mnist-t10k-100.txt
	mi compile --accelerate-cuda src/main.mc
	./main mnist _data/mnist-train-600.txt _data/mnist-t10k-100.txt

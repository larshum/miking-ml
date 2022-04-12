# file: bm-cifar10-pytorch.py
# Python implementation (PyTorch) version for training a neural network for on
# the CIFAR-10 dataset.
# Based off of this implementation: https://kirenz.github.io/deep-learning/docs/mnist-pytorch.html

import argparse
import os
import sys
import time

import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim
from torch.optim.lr_scheduler import ExponentialLR

#import torch
#from torchvision import datasets, transforms


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("training_set", type=os.path.realpath,
                        help="Path to the CIFAR-10 training txt set")
    parser.add_argument("validation_set", type=os.path.realpath,
                        help="Path to the CIFAR-10 validation txt set")
    parser.add_argument("--cuda", dest="cuda", action="store_const",
                        const=True, default=False,
                        help="Run the Benchmark with the CUDA backend.")
    parser.add_argument("--cpu-threads", dest="cpu_threads", metavar="N",
                        type=int, default=1,
                        help="Number of CPU threads to use.")
    args = parser.parse_args()

    training_kwargs = {"batch_size": 64}
    validation_kwargs = {"batch_size": 64}

    device = "cuda" if args.cuda else "cpu"
    if device == "cuda":
        if not torch.cuda.is_available():
            print("error: cannot run with CUDA backend when it is not available")
            sys.exit(1)
        # CUDA settings
        cuda_kwargs = {"num_workers": 1,
                       "pin_memory": True,
                       "shuffle": True}
        training_kwargs.update(cuda_kwargs)
        validation_kwargs.update(cuda_kwargs)

    print(f"using device: \"{device}\"")
    device = torch.device(device)

    print(f"number of CPU threads used: {args.cpu_threads}")
    torch.set_num_threads(args.cpu_threads)

    training_set = CustomCIFAR10Dataset.load_txt(args.training_set)
    validation_set = CustomCIFAR10Dataset.load_txt(args.validation_set)

    # Define the data loaders that will handle fetching of data
    training_loader = torch.utils.data.DataLoader(training_set,**training_kwargs)
    validation_loader = torch.utils.data.DataLoader(validation_set, **validation_kwargs)

    network = CIFAR10_Network().to(device)

    # Define the optimizer to user for gradient descent
    learning_rate = 0.01
    gamma = 0.99
    optimizer = optim.SGD(network.parameters(), lr=learning_rate)

    # Shrinks the learning rate by gamma every step_size
    scheduler = ExponentialLR(optimizer, gamma=gamma)

    t_start = time.time()

    # Train the model
    n_epochs = 100
    log_interval = 200
    nn_accuracy(network, device, validation_loader)
    for epoch in range(1, n_epochs + 1):
        nn_train(network, device, training_loader, optimizer, epoch, log_interval)
        nn_accuracy(network, device, validation_loader)
        scheduler.step()

    t_end = time.time()

    t_elapsed_ms = (t_end - t_start) * 1000.0
    print(f"Elapsed time: {t_elapsed_ms} ms")


class CustomCIFAR10Dataset(torch.utils.data.Dataset):
    def __init__(self, datapoints):
        super().__init__()
        self.__datapoints = datapoints

    @classmethod
    def load_txt(cls, path):
        print(f"loading CIFAR-10 from {path}...")
        datapoints = []
        with open(path) as f:
            for i, line in enumerate(f.readlines()):
                line = line.strip()
                if len(line) == 0:
                    break
                parts = line.split()
                # <class> <pixel 1> <pixel 2> ...
                dp = (
                    torch.tensor([float(i) / 255.0 for i in parts[1:]]).reshape(3072),
                    torch.tensor(int(parts[0]))  # "rank 0 tensor"
                )
                datapoints.append(dp)
                sys.stderr.write(f"\rpoints scanned: {i + 1}")

        sys.stderr.write("\n")
        return cls(datapoints)

    def __len__(self):
        return len(self.__datapoints)
    def __getitem__(self, idx):
        return self.__datapoints.__getitem__(idx)


# Equivalent CIFAR-10 structure to that in MCore
class CIFAR10_Network(nn.Module):
    def __init__(self):
        super(CIFAR10_Network, self).__init__()
        self.fc1 = nn.Linear(3072, 3072)
        self.fc2 = nn.Linear(3072, 1024)
        self.fc3 = nn.Linear(1024, 10)

    def forward(self, x):
        x = self.fc1(x)
        x = F.relu(x)
        x = self.fc2(x)
        x = F.relu(x)
        x = self.fc3(x)
        output = F.softmax(x, dim=1)
        return output


def nn_train(model, device, training_loader, optimizer, epoch, log_interval):
    model.train()
    for batch_idx, (data, target) in enumerate(training_loader):
        data, target = data.to(device), target.to(device)
        optimizer.zero_grad()
        output = model(data)
        loss = F.cross_entropy(output, target)
        loss.backward()
        optimizer.step()
        if batch_idx % log_interval == 0:
            print('Train Epoch: {} [{}/{} ({:.0f}%)]\tLoss: {:.6f}'.format(
                epoch, batch_idx * len(data), len(training_loader.dataset),
                100.0 * batch_idx / len(training_loader), loss.item()))


def nn_accuracy(model, device, validation_loader):
    model.eval()
    test_loss = 0
    correct = 0
    with torch.no_grad():
        for data, target in validation_loader:
            data, target = data.to(device), target.to(device)
            output = model(data)
            # sum up batch loss
            test_loss += F.cross_entropy(output, target).item()
            # get the index of the max log-probability
            pred = output.argmax(dim=1, keepdim=True)
            correct += pred.eq(target.view_as(pred)).sum().item()

    test_loss /= len(validation_loader.dataset)

    print('\nTest set: Average loss: {:.4f}, Accuracy: {}/{} ({:.0f}%)\n'.format(
        test_loss, correct, len(validation_loader.dataset),
        100. * correct / len(validation_loader.dataset)))

if __name__ == "__main__":
    main()

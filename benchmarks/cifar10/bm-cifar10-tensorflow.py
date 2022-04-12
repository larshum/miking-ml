# Tensorflow based implementation for CIFAR-10

import argparse
import os
import sys
import time

import numpy as np


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

    if not args.cuda:
        os.environ["CUDA_VISIBLE_DEVICES"] = ""

    import tensorflow as tf
    print(f"TensorFlow version: {tf.__version__}")

    batch_size = 64
    epochs = 100
    learning_rate = 0.01
    gamma = 0.99

    train_data, train_labels = load_cifar10(args.training_set)
    valid_data, valid_labels = load_cifar10(args.validation_set)

    len_train = train_data.shape[0]
    len_valid = valid_data.shape[0]

    n_batches = (len_train + batch_size - 1) // batch_size

    print(f"Training data length: {len_train}")
    print(f"Validation data length: {len_valid}")
    print(f" - Batch size: {batch_size} (n_batches: {n_batches})")
    print(f" - epochs: {epochs}")
    print(f" - learning rate: {learning_rate}")
    print(f" - decay (gamma): {gamma}")

    lr_scheduler = tf.keras.optimizers.schedules.ExponentialDecay(
        learning_rate,
        decay_steps=n_batches,
        decay_rate=gamma,
        staircase=True
    )
    sgd_optimizer = tf.keras.optimizers.SGD(
        learning_rate=lr_scheduler,
        momentum=0.0
    )

    model = tf.keras.Sequential()
    model.add(tf.keras.Input((3072,)))
    model.add(tf.keras.layers.Dense(3072, activation="relu"))
    model.add(tf.keras.layers.Dense(1024, activation="relu"))
    model.add(tf.keras.layers.Dense(10, activation="softmax"))
    model.compile(
        optimizer=sgd_optimizer,
        loss="sparse_categorical_crossentropy",
        metrics=["accuracy"]
    )

    print("starting...")
    t_start = time.time()
    model.fit(
        x=train_data,
        y=train_labels,
        batch_size=batch_size,
        epochs=epochs,
        verbose=2,
        validation_data=(valid_data, valid_labels),
        use_multiprocessing=False
    )
    t_end = time.time()
    t_elapsed_ms = (t_end - t_start) * 1000.0
    print(f"Done (elapsed time: {t_elapsed_ms} ms)")


def load_cifar10(path):
    print(f"loading CIFAR-10 from {path}...")
    data = []
    labels = []
    n_points = 0
    with open(path) as f:
        for i, line in enumerate(f.readlines()):
            line = line.strip()
            if len(line) == 0:
                break
            parts = line.split()
            # <class> <pixel 1> <pixel 2> ...
            cls = int(parts[0])
            assert cls in range(10)
            data.append([float(i) / 255.0 for i in parts[1:]])
            labels.append(int(parts[0]))
            sys.stderr.write(f"\rpoints scanned: {i + 1}")

            # record the number of scanned points, for sanity checking later on...
            n_points = i + 1

    sys.stderr.write("\n")

    expected_data_dim = (n_points, 3072)
    expected_label_dim = (n_points,)

    # convert and reshape (reshape for sanity checking)
    data = np.array(data).astype("float32").reshape(*expected_data_dim)
    labels = np.array(labels).astype("int32").reshape(*expected_label_dim)

    return data, labels


if __name__ == "__main__":
    main()

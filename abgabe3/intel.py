#!/usr/bin/python2.7 -Es
# -*- coding: utf-8 -*-
import random
import argparse
from threading import Thread

#parse arguments.
desc = 'Multithreading average calculation'
parser = argparse.ArgumentParser(description=desc)

parser.add_argument('-t', '--threads', type=int, required=True,
                    help='Number of threads')

args = parser.parse_args()

threads_num = args.threads
numbers = []

random.seed()

for i in range(1024 * 1024):
    numbers.append(random.randint(-127, 127))


class Average():

    def __init__(self, numbers):
        self.numbers = numbers
        self.solution = 0
        self.thread = Thread(target=self.calculate)

    def calculate(self):
        for number in self.numbers:
            self.solution += number


def main(threads_num, numbers):
    threads = []
    chunk_size = len(numbers) / threads_num
    for thread_number in range(threads_num):
        numbers_calc = []
        for i in range((chunk_size * thread_number),
                       (chunk_size * thread_number + 1)):
            numbers_calc.append(numbers[i])
        if thread_number == threads_num - 1:
            for i in range((chunk_size * thread_number + 1), len(numbers)):
                numbers_calc.append(i)
        threads += [Average(numbers_calc)]

    for thread in threads:
        thread.thread.start()

    for thread in threads:
        thread.thread.join()

    solution = 0
    for thread in threads:
        solution += thread.solution

    print solution / len(numbers)

if __name__ == "__main__":
    main(threads_num, numbers)
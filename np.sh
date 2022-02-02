#!/bin/bash

for n in 2 4 8 16 32 64
do
	python np_n4.py --cpus $n 1>np_n4_cpu$n.out 2>np_n4_cpu$n.err
	python np_n6.py --cpus $n 1>np_n6_cpu$n.out 2>np_n6_cpu$n.err
	python np_n8.py --cpus $n 1>np_n8_cpu$n.out 2>np_n8_cpu$n.err
done
~
~                                                                        

#!/bin/bash

for n in 2 4 8 16 32 64
do
	legate cn_n4.py --cpus $n --gpus 1 1>cn_n4_gpu1_cpu$n.out 2>cn_n4_gpu1_cpu$n.err
	legate cn_n6.py --cpus $n --gpus 1 1>cn_n6_gpu1_cpu$n.out 2>cn_n6_gpu1_cpu$n.err
	legate cn_n8.py --cpus $n --gpus 1 1>cn_n8_gpu1_cpu$n.out 2>cn_n8_gpu1_cpu$n.err
	legate cn_n4.py --cpus $n --gpus 2 1>cn_n4_gpu2_cpu$n.out 2>cn_n4_gpu2_cpu$n.err
	legate cn_n6.py --cpus $n --gpus 2 1>cn_n6_gpu2_cpu$n.out 2>cn_n6_gpu2_cpu$n.err
	legate cn_n8.py --cpus $n --gpus 2 1>cn_n8_gpu2_cpu$n.out 2>cn_n8_gpu2_cpu$n.err

~                                                                        
done
~
~                                                                        

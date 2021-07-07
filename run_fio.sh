#!/bin/bash
ssh node0 'sudo fio fio_bench/rbd_big.fio > big_tencf_alloc_4k.txt'

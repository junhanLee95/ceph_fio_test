#!/bin/bash
ssh node0 "su root -c 'echo 3 > /proc/sys/vm/drop_caches'"
ssh node0 "su root -c 'sync'"
ssh node1 "su root -c 'echo 3 > /proc/sys/vm/drop_caches'"
ssh node1 "su root -c 'sync'"
ssh node2 "su root -c 'echo 3 > /proc/sys/vm/drop_caches'"
ssh node2 "su root -c 'sync'"
ssh node3 "su root -c 'echo 3 > /proc/sys/vm/drop_caches'"
ssh node3 "su root -c 'sync'"

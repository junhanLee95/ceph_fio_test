#!/bin/bash
ssh node0 'mkdir -p tmp_fio_log'
ssh node0 'mv *.log tmp_fio_log'
ssh node0 'mv summary.txt tmp_fio_log'
ssh node0 'scp -r tmp_fio_log jh_local:~/fio_analysis/log_files/xfs/'
ssh node0 'sudo rm -r tmp_fio_log'

#!/bin/bash
ssh node0 'sudo umount /mnt/ceph-block-device'
ssh node0 'sudo rbd unmap rbdbench/image01'
ssh node0 'sudo rbd rm rbdbench/image01'
ssh node0 'ceph osd pool rm rbdbench rbdbench --yes-i-really-really-mean-it'
echo "[RBD Deletion Done]"

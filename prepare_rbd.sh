#!/bin/bash
ssh node0 'ceph osd pool create rbdbench 128 128'
ssh node0 'rbd create image01 --size 1800G --pool rbdbench --image-feature layering'
ssh node0 'sudo rbd map image01 --pool rbdbench'
ssh node0 'sudo /sbin/mkfs.xfs /dev/rbd0'
ssh node0 'sudo mount /dev/rbd0 /mnt/ceph-block-device'


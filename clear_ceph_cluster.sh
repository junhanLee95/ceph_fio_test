#!/bin/bash
echo "[STEP1]. Stop OSD"
ssh node1 "sudo systemctl stop ceph-osd\@0"
ssh node1 "sudo systemctl stop ceph-osd\@1"
ssh node1 "sudo systemctl stop ceph-osd\@2"
ssh node2 "sudo systemctl stop ceph-osd\@3"
ssh node2 "sudo systemctl stop ceph-osd\@4"
ssh node2 "sudo systemctl stop ceph-osd\@5"
ssh node3 "sudo systemctl stop ceph-osd\@6"
ssh node3 "sudo systemctl stop ceph-osd\@7"
ssh node3 "sudo systemctl stop ceph-osd\@8"
ssh node2 "./rm_osd_all.sh"
echo "[Step2]. Remove LVM"
ssh node1 "./rm_lvm.sh"
ssh node2 "./rm_lvm.sh"
ssh node3 "./rm_lvm.sh"
echo "[Ceph Cluster Deletion Done]"

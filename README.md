# ceph_fio_test
## Step 1. Prepare RBD
* $ ./prepare_ceph_cluster.sh
* $ ./prepare_rbd.sh

## Step 2. Run fio
* $ ./sync_page_cache.sh
* $ sleep 10m && ./run_fio.sh

## Step 3. Clear RBD
* $ ./clear_rbd.sh
* $ ./clear_ceph_cluster.sh

## NOTE
* You need to clear RBD before preparing RBD
* You need to sleep 10 minutes after cleaning buffer cache
* You need to delete db trace file of osd1 for every experiment

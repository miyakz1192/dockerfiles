set -x

dd if=/dev/zero of=/dev/sda bs=10M count=1
pvcreate /dev/sda
vgcreate docker /dev/sda
lvcreate  --wipesignatures y -n thinpool docker -l 95%VG --verbose
lvcreate --wipesignatures y -n thinpoolmeta docker -l 1%VG
lvconvert -y --zero n -c 512K --thinpool docker/thinpool --poolmetadata docker/thinpoolmeta  
lvchange --metadataprofile docker-thinpool docker/thinpool 
lvs -o+seg_monitor
rm -rf /var/lib/docker/*


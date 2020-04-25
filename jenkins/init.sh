set -x

if [ -f /dev/mapper/docker-thinpool* ]; then
  exit 0
fi

pvdisplay /dev/sda
if [ $? -ne 0 ]; then
  dd if=/dev/zero of=/dev/sda bs=10M count=1
  pvcreate /dev/sda
fi

vgdisplay docker
if [ $? -ne 0 ]; then
  vgcreate docker /dev/sda
fi

lvdisplay docker/thinpool
if [ $? -eq 0 ]; then
  echo "Re-Create lv for making /dev/mapper/docker-thinpool*"
  lvremove docker/thinpool -y
fi

lvcreate  --wipesignatures y -n thinpool docker -l 95%VG --verbose
lvcreate --wipesignatures y -n thinpoolmeta docker -l 1%VG
lvconvert -y --zero n -c 512K --thinpool docker/thinpool --poolmetadata docker/thinpoolmeta  
lvchange --metadataprofile docker-thinpool docker/thinpool 
lvs -o+seg_monitor

rm -rf /var/lib/docker/*


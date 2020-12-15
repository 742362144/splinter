cd /root/splinter/net/3rdparty/dpdk

./usertools/dpdk-devbind.py --status
modprobe uio
insmod build/kmod/igb_uio.ko
./usertools/dpdk-devbind.py --bind=igb_uio  0000:06:00.1
./usertools/dpdk-devbind.py --status
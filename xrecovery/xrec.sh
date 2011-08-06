#!/system/bin/sh

mtd=mount | grep system | awk '{print $1}'
fw=grep -R "ro.build.id" /system/build.prop
bp=grep -R "ro.product.device" /system/build.prop

echo "Mounting /system rw"
mount -o remount,rw -t yaffs2 $mtd /system
sleep 1

if bp="ro.product.device=U20i"
	echo "Found device: x10 Mini Pro"
	echo "Copying Xrecovery data files"
	busybox cp -f xrecovery/busybox /system/bin/busybox
	busybox cp -f xrecovery/chargemon.x10mp /system/bin/chargemon
	busybox cp -f xrecovery/xrecovery.tar /system/bin/xrecovery.tar
	echo "Done!"
	sleep 1
	echo "CHMOD permissions to 755"
	busybox chmod 755 /system/bin/busybox
	busybox chmod 755 /system/bin/chargemon
	busybox chmod 755 /system/bin/xrecovery.tar
	echo "Done!"
	sleep 1
	exit

else
	echo "Found device: x10 Mini"
	echo "Copying Xrecovery data files"
	busybox cp -f xrecovery/busybox /system/bin/busybox
	busybox cp -f xrecovery/chargemon.x10m /system/bin/chargemon
	busybox cp -f xrecovery/xrecovery.tar /system/bin/xrecovery.tar
	echo "Done!"
	sleep 1
	echo "CHMOD permissions to 755"
	busybox chmod 755 /system/bin/busybox
	busybox chmod 755 /system/bin/chargemon
	busybox chmod 755 /system/bin/xrecovery.tar
	echo "Done!"
	sleep 1
	exit

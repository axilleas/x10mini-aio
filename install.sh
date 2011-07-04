#!/system/bin/sh

xrecovery()
{
echo "Mounting /system rw"
mount -o remount,rw -t yaffs2 /dev/block/mtdblock2 /system
sleep 1
echo "Copying Xrecovery data files"
busybox cp -f data/busybox /system/bin/busybox
busybox cp -f data/chargemon.x10pro /system/bin/chargemon
busybox cp -f data/xrecovery.tar /system/bin/xrecovery.tar
echo "Done!"
sleep 1
echo "CHMOD permissions to 777"
busybox chmod 777 /system/bin/busybox
busybox chmod 777 /system/bin/chargemon
busybox chmod 777 /system/bin/xrecovery.tar
echo "Done!"
sleep 1
echo "Count down to reboot your phone..."
sleep 1
echo "3..."
sleep 1
echo "2..."
sleep 1
echo "1..."
reboot
}

xrecoverymini()
{
echo "Mounting /system rw"
mount -o remount,rw -t yaffs2 /dev/block/mtdblock2 /system
sleep 1
echo "Copying Xrecovery data files"
busybox cp -f data/busybox /system/bin/busybox
busybox cp -f data/chargemon.x10mini /system/bin/chargemon
busybox cp -f data/xrecovery.tar /system/bin/xrecovery.tar
echo "Done!"
sleep 1
echo "CHMOD permissions to 777"
busybox chmod 777 /system/bin/busybox
busybox chmod 777 /system/bin/chargemon
busybox chmod 777 /system/bin/xrecovery.tar
echo "Done!"
sleep 1
echo "Count down to reboot your phone..."
sleep 1
echo "3..."
sleep 1
echo "2..."
sleep 1
echo "1..."
reboot
}

jit()
{
echo "Mounting /system rw"
mount -o remount,rw -t yaffs2 /dev/block/mtdblock2 /system
sleep 1
echo "Enable Jit"
echo ""
sleep 1
echo "Copying JIT data files to /system/"
busybox cp -f data/jit/dalvikvm /system/bin/dalvikvm
busybox cp -f data/jit/dexopt /system/bin/dexopt
busybox cp -f data/jit/logcat /system/bin/logcat
echo "Done!"
sleep 1
echo "CHMOD permissions to 755"
busybox chmod 755 /system/bin/dalvikvm
busybox chmod 755 /system/bin/dexopt
busybox chmod 755 /system/bin/logcat
echo "Done!"
sleep 1
echo "Copying libraries to /system/"
busybox cp -f data/jit/libdvm.so /system/lib/libdvm.so
busybox cp -f data/jit/libnativehelper.so /system/lib/libnativehelper.so
busybox cp -f data/jit/libcutils.so /system/lib/libcutils.so
busybox cp -f data/jit/libdl.so /system/lib/libdl.so
busybox cp -f data/jit/liblog.so /system/lib/liblog.so
busybox cp -f data/jit/libm.so /system/lib/libm.so
busybox cp -f data/jit/libz.so /system/lib/libz.so
echo "Backing up build.prob file"
busybox cp -f /system/build.prop /system/build.prop.stock
echo "Copying build.prop to /system/"
busybox cp -f data/jit/build.prop /system/build.prop
echo "Done!"
sleep 1
echo "CHMOD permissions to 644"
chmod 644 /system/lib/libdvm.so
chmod 644 /system/lib/libnativehelper.so
chmod 644 /system/lib/libcutils.so
chmod 644 /system/lib/libdl.so
chmod 644 /system/lib/liblog.so
chmod 644 /system/lib/libm.so
chmod 644 /system/lib/libz.so
chmod 666 /system/build.prop
echo "Done!"
echo "Cleaning dalvik-cache"
rm -r /data/dalvik-cache/*
echo "Done!"
echo "sync" sync
echo "Done!"
echo "Count down to reboot your phone..."
sleep 1
echo "3.."
sleep 1
echo "2.."
sleep 1
echo "1.."
reboot
}

disjit()
{
echo "Mounting /system rw"
mount -o remount,rw -t yaffs2 /dev/block/mtdblock2 /system
sleep 1
echo "Disable Jit"
echo ""
sleep 1
echo "Copying JIT data files to /system/"
busybox cp -f data/jit/disable/dalvikvm /system/bin/dalvikvm
busybox cp -f data/jit/disable/dexopt /system/bin/dexopt
busybox cp -f data/jit/disable/logcat /system/bin/logcat
echo "Done!"
sleep 1
echo "CHMOD permissions to 755"
busybox chmod 755 /system/bin/dalvikvm
busybox chmod 755 /system/bin/dexopt
busybox chmod 755 /system/bin/logcat
echo "Done!"
sleep 1
echo "Copying libraries and build.prop to /system/"
busybox cp -f data/jit/disable/libdvm.so /system/lib/libdvm.so
busybox cp -f data/jit/disable/libnativehelper.so /system/lib/libnativehelper.so
busybox cp -f data/jit/disable/libcutils.so /system/lib/libcutils.so
busybox cp -f data/jit/disable/libdl.so /system/lib/libdl.so
busybox cp -f data/jit/disable/liblog.so /system/lib/liblog.so
busybox cp -f data/jit/disable/libm.so /system/lib/libm.so
busybox cp -f data/jit/disable/libz.so /system/lib/libz.so
busybox cp -f data/jit/disable/build.prop /system/build.prop
echo "Done!"
sleep 1
echo "CHMOD permissions to 644"
chmod 644 /system/lib/libdvm.so
chmod 644 /system/lib/libnativehelper.so
chmod 644 /system/lib/libcutils.so
chmod 644 /system/lib/libdl.so
chmod 644 /system/lib/liblog.so
chmod 644 /system/lib/libm.so
chmod 644 /system/lib/libz.so
chmod 666 /system/build.prop
echo "Done!"
echo "Cleaning dalvik-cache"
rm -r /data/dalvik-cache/*
echo "Done!"
echo "sync" sync
echo "Done!"
echo "Count down to reboot your phone..."
sleep 1
echo "3.."
sleep 1
echo "2.."
sleep 1
echo "1.."
reboot
}

bootanimation()
{
echo "Mounting /system rw"
mount -o remount,rw -t yaffs2 /dev/block/mtdblock2 /system
sleep 1
echo "Backing Up Old Boot Animation files"
busybox cp -f /system/media/bootanimation.zip data/bootanimation.zip.bk
echo "Copying Boot Animation data files"
busybox cp -f data/bootanimation.zip /system/media/bootanimation.zip
echo "Done!"
sleep 1
echo "CHMOD permissions to 755"
busybox chmod 755 /system/media/bootanimation.zip
echo "Done!"
sleep 1
echo "Count down to reboot your phone..."
sleep 1
echo "3..."
sleep 1
echo "2..."
sleep 1
echo "1..."
reboot
}

bootanimationU()
{
echo "Mounting /system rw"
mount -o remount,rw -t yaffs2 /dev/block/mtdblock2 /system
sleep 1
echo "Restoring Old Boot Animation files"
busybox cp -f data/bootanimation.zip.bk /system/media/bootanimation.zip
echo "Done!"
sleep 1
echo "CHMOD permissions to 755"
busybox chmod 755 /system/media/bootanimation.zip
echo "Done!"
sleep 1
echo "Count down to reboot your phone..."
sleep 1
echo "3..."
sleep 1
echo "2..."
sleep 1
echo "1..."
reboot
}

bootanimationD()
{
echo "Mounting /system rw"
mount -o remount,rw -t yaffs2 /dev/block/mtdblock2 /system
sleep 1
echo "Restoring stock Boot Animation files"
busybox cp -f data/bootanimation.zip.stock /system/media/bootanimation.zip
echo "Done!"
sleep 1
echo "CHMOD permissions to 755"
busybox chmod 755 /system/media/bootanimation.zip
echo "Done!"
sleep 1
echo "Count down to reboot your phone..."
sleep 1
echo "3..."
sleep 1
echo "2..."
sleep 1
echo "1..."
reboot
}

app2sd()
{
if busybox [ -f /system/bin/sh_bak ] ;
then 
echo "Please uninstall old app2sd first if you already installed!"
sleep2
else 
su  <<fg

mount -o rw,remount -t yaffs2 /dev/block/mtdblock0 /system
mkdir /system/sd
mkdir /data/appbak
mount -t ext2 /dev/block//vold/179:2 /system/sd
if type busybox 
then
else
mkdir /system/xbin
cat data/app2sd/busybox > /system/xbin/busybox
chmod 4755 /system/xbin/busybox
/system/xbin/busybox --install -s /system/xbin/
fi
mv /data/app/* /data/appbak/
busybox cp -a /data/appbak /system/sd/app
rm -r /data/app
ln -s /data/appbak/ /data/app
rm /etc/mount_sd.sh
mv /system/bin/sh /system/bin/sh_bak
cat data/app2sd/sh.sh > /system/bin/sh
chmod 755 /system/bin/sh
busybox cp data/app2sd/mount_sd.sh /etc/mount_sd.sh
echo "
+----------------------------------+
|**********************************|
| Finished and going to reboot now |
|**********************************|
+----------------------------------+
"
sleep 1
reboot
fg
fi
}

app2sdU()
{
if busybox [ -f /system/bin/sh_bak ] ;
then 
echo "
+----------------------------------+
|*******************************  *|
|*  Please select your choice     *|
|*                                *|
|*[1] keep app files in sdcard    *|
|*[2] keep app files in the backup*|
|**********************************|
+----------------------------------+"
echo -n "[1]"
read ans
	
su  <<df
echo $ans
mount -o rw,remount -t yaffs2 /dev/block/mtdblock3 /system

rm /data/app
mkdir /data/app
rm /etc/mount_sd.sh
rm /system/bin/sh
mv /system/bin/sh_bak /system/bin/sh

	
	case $ans in
		
		2)
			busybox cp /data/appbak/* /data/app/
			rm  -f /data/appbak
			echo "
+----------------------------------+
|**********************************|
| Finished and going to reboot now |
|**********************************|
+----------------------------------+
"
			
			reboot
			exit;;
		1) 
		busybox cp /system/sd/app/* /data/app
		rm  -f /data/appbak
		echo "
+----------------------------------+
|**********************************|
| Finished and going to reboot now |
|**********************************|
+----------------------------------+
"
		
		reboot
		exit;;
		*)
			busybox cp /system/sd/app/* /data/app
			echo "
+----------------------------------+
|**********************************|
| Finished and going to reboot now |
|**********************************|
+----------------------------------+
"
			
			reboot
			
			exit;;
	esac
	
df
else
echo "App2sd is not installed so you can't uninstall it "
sleep 2
fi
menu
}

dualtouch()
{
echo "Mounting /system rw"
mount -o remount,rw -t yaffs2 /dev/block/mtdblock2 /system
sleep 1
echo "Copying dual touch file..."
busybox cp -f data/cy8ctma300_ser.ko /system/lib/modules/cy8ctma300_ser.ko
busybox cp -f data/android.hardware.touchscreen.multitouch.xml /system/etc/permissions/android.hardware.touchscreen.multitouch.xml
echo "CHMOD permissions to 644"
busybox chmod 644 /system/lib/modules/cy8ctma300_ser.ko
busybox chmod 644 /system/etc/permissions/android.hardware.touchscreen.multitouch.xml
sleep 1
echo "
insmod /system/lib/modules/cy8ctma300_ser.ko" >> /system/etc/hw_config.sh
echo "sleep 1" >> /system/etc/hw_config.sh
echo "
ro.product.multi_touch_enabled=true" >> /system/build.prop
echo "ro.product.max_num_touch=2" >> /system/build.prop
sleep 1
echo "Count down to reboot your phone..."
sleep 1
echo "3..."
sleep 1
echo "2..."
sleep 1
echo "1..."
reboot
}

menu()
{
echo "
+---------------------------------------------------------+
|*********************************************************|
|*AIO Automatic Installation Script For X10 Mini/Mini Pro*|
|*Firmware : 2.1.1.A.0.6                                 *|
|*Version: 1.4                                           *|
|*********************************************************|
+---------------------------------------------------------+

+----------------------------------------+
|****************************************|
|* Main Menu                            *|
|*                                      *|
|*[0] Install Xrecovery for X10 Mini Pro*|
|*[1] Install Xrecovery for X10 Mini    *|
|*[2] Enable JIT                        *|
|*[3] Disable JIT                       *|
|*[4] Install Custom Bootanimation      *|
|*[5] Uninstall Custom Bootanimation    *|
|*[6] Revert to stock Bootanimation     *|
|*[7] Install App2sd                    *|
|*[8] Uninstall App2sd                  *|
|*[9] Install Dual Touch                *|
|*[10] Exit                             *|
|****************************************|
+----------------------------------------+
"
echo -n "[0]"
	read mm1
	case $mm1 in
		0)
			echo ""
			echo ""
			sleep 1
			xrecovery;;
		1)
			echo ""
			echo ""
			sleep 1
			xrecoverymini;;
		2)
			echo ""
			echo ""
			sleep 1
			jit;;
		3)
			echo ""
			echo ""
			sleep 1
			disjit;;
		4)
			echo ""
			echo ""
			sleep 1
			bootanimation;;	
		5)
			echo ""
			echo ""
			sleep 1
			bootanimationU;;
		6)
			echo ""
			echo ""
			sleep 1
			bootanimationD;;	
		7)
			echo ""
			echo ""
			sleep 1
			app2sd;;
		8)
			echo ""
			echo ""
			sleep 1
			app2sdU;;		
		9) 
			echo ""
			echo ""
			sleep 1
			dualtouch;;	
		10) 
			exit;;
		*)
			echo ""
			echo ""
			sleep 1
			xrecovery;;
	esac
	}
menu


 








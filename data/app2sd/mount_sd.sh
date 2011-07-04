date > /sqlite_stmt_journals/app2sd
mount -t ext2 /dev/block//vold/179:2 /system/sd
rm -r /data/app
if ls /system/sd/app 
	then :
	ln -s /system/sd/app /data/app
	
	echo 2
	else
	echo 1
	ln -s /data/appbak /data/app
	
fi


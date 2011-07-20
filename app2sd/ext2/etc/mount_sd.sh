date > /sqlite_stmt_journals/app2sd
	if [ -e /dev/block//vold/179:2 ] ;
		then
			
			mount -t ext2 /dev/block//vold/179:2 /system/sd
			
			if [ -e /system/sd/dalvik-cache ] ;
				then
					rm -r /data/dalvik-cache
					ln -s /system/sd/dalvik-cache /data/dalvik-cache
					rm -r /data/dalvik-cache/dalvik-cache
					echo "Dalvik-cache dir on SD present - linked/reconstructed to SD"
				else
					mkdir /system/sd/dalvik-cache
					rm -r /data/dalvik-cache
					ln -s /system/sd/dalvik-cache /data/dalvik-cache
					rm -r /data/dalvik-cache/dalvik-cache
					echo "No dalvik-cache dir on SD - Dalvik reconstructed to SD"
			fi
			
			if [ -e /system/sd/app ] ;
				then
					mv -f /data/app/* /system/sd/app/
					echo "App dir on SD present if some apps installed in /data/app - moved to SD"
				else
					mkdir /system/sd/app
					mv -f /data/app/* /system/sd/app/
					echo "SD ext present - no apps on SD - installation dir on SD made, apps moved to SD"
			fi
			
			if ls /system/sd/app ;
				then
					rm -r /data/app
					ln -s /system/sd/app /data/app
					rm -r /data/app/app
					echo "/data/app linked to SD"
				else
					echo "error"
			fi
	
		else
			
			if [ -L /data/dalvik-cache ] ;
				then
					rm -r /data/dalvik-cache
					mkdir /data/dalvik-cache
					echo "No ext on SD - dalvik-cache reconstructed to default dir"
				else
					echo "Dalvik-cache in default conditions - no change"
			fi
			
			if [ -L /data/app ] ;
				then
					rm -r /data/app
					mkdir /data/app
					echo "No ext on SD - new apps will be installed to default dir"
				else
					echo "Apps in default conditions - no change"
			fi
	fi
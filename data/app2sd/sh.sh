#!/system/bin/sh_bak
busybox sh <<eof
if [ -f /sqlite_stmt_journals/app2sd ] ;
then
sleep 0
else
busybox sh /system/etc/mount_sd.sh >> /sqlite_stmt_journals/app2sd.log
fi
eof
/system/bin/sh_bak "$@"
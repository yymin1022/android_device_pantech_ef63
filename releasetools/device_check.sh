#!/sbin/sh

if grep -q "IM-A910S" /dev/block/mmcblk0p10 ; then

	if grep -q "KIVN07172014" /dev/block/mmcblk0p10 ; then
		mv /system/etc/firmware_ef63l/* /system/etc/firmware/
	elif grep -q "KIVN05042015" /dev/block/mmcblk0p10 ; then
		mv /system/etc/firmware_ef63l/* /system/etc/firmware/
	else
		mv /system/etc/firmware_ef63s/* /system/etc/firmware/
	fi

elif grep -q "IM-A910K" /dev/block/mmcblk0p10 ; then
	mv /system/etc/firmware_ef63k/* /system/etc/firmware/

elif grep -q "IM-A910L" /dev/block/mmcblk0p10 ; then
	mv /system/etc/firmware_ef63l/* /system/etc/firmware/
fi

rm -rf /system/etc/firmware_ef63s
rm -rf /system/etc/firmware_ef63k
rm -rf /system/etc/firmware_ef63l
rm -rf /system/bin/device_check.sh


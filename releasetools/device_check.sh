#!/sbin/sh

if grep -q "IM-A910S" /dev/block/mmcblk0p10 ; then

	if grep -q "KIVN07172014" /dev/block/mmcblk0p10 ; then
		mv /system/system/vendor/etc/firmware_ef63l/* /system/system/vendor/etc/firmware/
	elif grep -q "KIVN05042015" /dev/block/mmcblk0p10 ; then
		mv /system/system/vendor/etc/firmware_ef63l/* /system/system/vendor/firmware/
	else
		mv /system/system/vendor/etc/firmware_ef63s/* /system/system/vendor/firmware/
	fi

elif grep -q "IM-A910K" /dev/block/mmcblk0p10 ; then
	mv /system/system/vendor/etc/firmware_ef63k/* /system/system/vendor/firmware/

elif grep -q "IM-A910L" /dev/block/mmcblk0p10 ; then
	mv /system/system/vendor/etc/firmware_ef63l/* /system/system/vendor/firmware/
fi

rm -rf /system/system/vendor/etc/firmware_ef63s
rm -rf /system/system/vendor/etc/firmware_ef63k
rm -rf /system/system/vendor/etc/firmware_ef63l
rm -rf /system/system/bin/device_check.sh


:start
@echo
@echo start info,don't care!!!

dir
adb push i2cdetect /system/bin/
adb push i2cdump /system/bin/
adb push i2cget /system/bin/
adb push i2cset /system/bin/
adb shell chmod 777 /system/bin/i2cdetect
adb shell chmod 777 /system/bin/i2cdump
adb shell chmod 777 /system/bin/i2cget
adb shell chmod 777 /system/bin/i2cset

pause
:end
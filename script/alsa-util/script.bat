
:start
@echo
@echo start info,don't care!!!

dir
adb push alsa_amixer /system/bin/
adb push alsa_aplay /system/bin/
adb push alsa_ctl /system/bin/
adb shell chmod 777 /system/bin/alsa_amixer
adb shell chmod 777 /system/bin/alsa_aplay
adb shell chmod 777 /system/bin/alsa_ctl

pause
:end
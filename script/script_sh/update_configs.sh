#!/bin/sh

echo pwd = $PWD
for name in nufront_pad*
do
    echo ----$name----
    sed -i '/CONFIG_SND_NUSMART_SOC_EVA_I2S=y/a\# CONFIG_SND_SOC_ALC5616 is not set' $name
done


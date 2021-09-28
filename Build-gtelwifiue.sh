#!/bin/bash

make clean
export LC_ALL="C"
export TW_EXCLUDE_AAPT=true
export TW_MAINTAINER=PizzaG
. build/envsetup.sh
lunch omni_gtelwifiue-eng
mka recoveryimage

echo " Recovery Should Be Built"
echo ""
read

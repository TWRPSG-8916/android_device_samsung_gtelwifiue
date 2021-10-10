#!/bin/bash

. build/envsetup.sh
m clean
lunch twrp_gtelwifiue-eng
mka recoveryimage

echo " Recovery Should Be Built"
echo ""
read

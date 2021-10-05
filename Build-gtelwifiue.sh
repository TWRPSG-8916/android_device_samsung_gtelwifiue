#!/bin/bash

make clean
. build/envsetup.sh
lunch omni_gtelwifiue-eng
mka recoveryimage

echo " Recovery Should Be Built"
echo ""
read

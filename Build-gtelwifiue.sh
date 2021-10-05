#!/bin/bash

make clean
export LC_ALL="C"
export TW_MAINTAINER=PizzaG
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch omni_gtelwifiue-eng
mka recoveryimage

echo " Recovery Should Be Built"
echo ""
read

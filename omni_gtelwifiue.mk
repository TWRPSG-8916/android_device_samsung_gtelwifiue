#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
# Copyright (C) 2019-Present A-Team Digital Solutions
#

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from gtelwifiue device
$(call inherit-product, device/samsung/gtelwifiue/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/gtelwifiue/recovery/root,recovery/root)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gtelwifiue
PRODUCT_NAME := omni_gtelwifiue
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-T560NU
PRODUCT_MANUFACTURER := Samsung
PRODUCT_RELEASE_NAME := Tab E 9.6

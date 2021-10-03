#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
# Copyright (C) 2019-Present A-Team Digital Solutions
#

DEVICE_PATH := device/samsung/gtelwifiue

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic

# Assert
TARGET_OTA_ASSERT_DEVICE := gtelwifiue

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_COPY_OUT_VENDOR := vendor

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci androidboot.selinux=permissive buildvariant=userdebug
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/zImage
TARGET_PREBUILT_DT := $(DEVICE_PATH)/prebuilt/dt.img
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dt $(TARGET_PREBUILT_DT)
BOARD_KERNEL_IMAGE_NAME := zImage
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_HEADER_ARCH := arm
TARGET_KERNEL_SOURCE := kernel/samsung/gtelwifiue
TARGET_KERNEL_CONFIG := gtelwifiue_defconfig
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/gtelwifiue/bootimg.mk

# Ramdisk compression
LZMA_RAMDISK_TARGETS := recovery

# Platform
TARGET_BOARD_PLATFORM := msm8916

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := RGB_565

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# TWRP Configuration
TW_DEVICE_VERSION := PizzaG
RECOVERY_VARIANT := TWRP
TW_THEME := portrait_hdpi
TW_SCREEN_BLANK_ON_BOOT := true
TW_USE_TOOLBOX := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_HAS_DOWNLOAD_MODE := true
TW_NO_REBOOT_BOOTLOADER := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
BOARD_USES_QC_TIME_SERVICES := true 
TW_EXCLUDE_SUPERSU := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_USE_NEW_MINADBD := true
TW_INCLUDE_NTFS_3G := true
TW_INPUT_BLACKLIST := "accelerometer\x0ahbtp_vm"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 150
TW_NEW_ION_HEAP := true
TW_NO_USB_STORAGE := true
TW_TARGET_USES_QCOM_BSP := false
#TW_EXTRA_LANGUAGES := true
#TW_INTERNAL_STORAGE_PATH := "/data/media/0"

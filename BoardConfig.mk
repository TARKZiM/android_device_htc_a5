# Copyright (C) 2021 LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

BOARD_VENDOR := htc

TARGET_BOARD_PLATFORM := msm8226

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := krait
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := a5

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 ehci-hcd.park=3 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02008000 --tags_offset 0x01e00000 --dt device/$(BOARD_VENDOR)/$(TARGET_DEVICE)/prebuilt/dtb
TARGET_PREBUILT_KERNEL := device/$(BOARD_VENDOR)/$(TARGET_DEVICE)/prebuilt/zImage

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0xa8000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x58000000
BOARD_FLASH_BLOCK_SIZE := 131072

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Android version & Security Patch Level
# Default TWRP Values
PLATFORM_VERSION := 20.1.0
PLATFORM_SECURITY_PATCH := 2099-12-31

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_NEEDS_LZMA_MINIGZIP := true
LZMA_RAMDISK_TARGETS := recovery
BOARD_RECOVERY_SWIPE := true
BOARD_USES_MMCUTILS := true
BOOTLOADER_MESSAGE_OFFSET := 2048
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true

# TWRP config:

TW_THEME := portrait_hdpi
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_INCLUDE_CRYPTO := true
TW_OVERRIDE_SYSTEM_PROPS := "ro.build.fingerprint"
TW_NO_EXFAT_FUSE := true
TARGET_RECOVERY_DEVICE_MODULES := chargeled liblog_htc_sbin tzdata
TW_RECOVERY_ADDITIONAL_RELINK_FILES += $(TARGET_OUT)/usr/share/zoneinfo/tzdata
TW_USE_TOOLBOX := true

DEVICE_RESOLUTION := 720x1280
TW_NO_USB_STORAGE := true
TW_NO_SCREEN_BLANK := true
TW_MAX_BRIGHTNESS := 255
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_EXTERNAL_STORAGE_PATH := "/usb-otg"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "usb-otg"
TW_IGNORE_MT_POSITION_0 := true

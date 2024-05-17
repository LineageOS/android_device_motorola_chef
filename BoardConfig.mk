#
# Copyright (C) 2017-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Must set these before including common config
TARGET_BOARD_PLATFORM := sdm660
TARGET_BOOTLOADER_BOARD_NAME := SDM660

# Inherit from motorola msm8998-common
include device/motorola/msm8998-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/chef

# A/B partitions
AB_OTA_PARTITIONS += \
    boot \
    system \
    vendor

AB_OTA_UPDATER := true

# Assertions
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt
TARGET_OTA_ASSERT_DEVICE := chef

# Display
TARGET_SCREEN_DENSITY := 420

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/chef_manifest.xml

# Kernel
BOARD_KERNEL_CMDLINE += androidboot.boot_devices=soc/c0c4000.sdhci
TARGET_KERNEL_CONFIG := lineageos_chef_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_VENDORIMAGE_PARTITION_SIZE := 536870912

# Properties
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/system_ext.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# inherit from the proprietary version
include vendor/motorola/chef/BoardConfigVendor.mk

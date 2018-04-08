#
# Copyright (C) 2015 The CyanogenMod Project
#               2017 The LineageOS Project
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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# Inherit from common e8-common
-include device/htc/e8-common/BoardConfigCommon.mk

# Model Ids
# 0P6B10000 - International
# 0P6B12000 - AT&T/Dev Edition
# 0P6B13000 - T-Mobile
# 0P6B16000 - Telus/Rogers (Canada)
# 0P6B20000 - Verizon
# 0P6B70000 - Sprint

# Assert
TARGET_OTA_ASSERT_DEVICE := htc_e8,mecwhl,htc_mecwhl,mectl,htc_mectl,mecul,htc_mecul

# Kernel
TARGET_KERNEL_CONFIG := e8_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/e8/bluetooth

# RIL
BOARD_RIL_CLASS := ../../../device/htc/e8/ril
TARGET_NEEDS_GCC_LIBC := true
TARGET_NEEDS_GCC_LIBRIL := true

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 10737418240

# Vendor Init
TARGET_INIT_VENDOR_LIB := libinit_e8
TARGET_RECOVERY_DEVICE_MODULES := libinit_e8

# Inherit from the proprietary version
-include vendor/htc/e8/BoardConfigVendor.mk

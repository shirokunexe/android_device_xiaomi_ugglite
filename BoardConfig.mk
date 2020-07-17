#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from common msm8937-common
-include device/xiaomi/msm8937-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/ugglite

# Kernel
TARGET_KERNEL_VERSION := 3.18
TARGET_KERNEL_CONFIG := ugglite_defconfig

# Partitions
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE    := 268435456
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26301931008
BOARD_VENDORIMAGE_PARTITION_SIZE   := 536870912
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
TARGET_COPY_OUT_VENDOR := vendor
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Root Folders
BOARD_ROOT_EXTRA_FOLDERS := dsp firmware persist

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# Security Patch Level
VENDOR_SECURITY_PATCH := 2020-05-05

# Sepolicy
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Inherit from the proprietary version
-include vendor/xiaomi/ugglite/BoardConfigVendor.mk

# Copyright (C) 2014 The CyanogenMod Project
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

TARGET_CONTINUOUS_SPLASH_ENABLED := true

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from cancro device
$(call inherit-product, device/xiaomi/cancro/cancro.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff (mini)
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Product configuration
PRODUCT_NAME := cm_cancro
PRODUCT_DEVICE := cancro
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := MI3W
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := cancro
TARGET_VENDOR_DEVICE_NAME := MI3W

# Unofficial build id
TARGET_UNOFFICIAL_BUILD_ID := audahadi

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=cancro PRODUCT_NAME=cancro

## Use the latest approved GMS identifiers unless running a signed build
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Xiaomi/cancro/cancro:6.0/MDB08M/5.11.6:userdebug/test-keys PRIVATE_BUILD_DESC="cancro-userdebug 6.0 MDB08M 5.11.6 test-keys"

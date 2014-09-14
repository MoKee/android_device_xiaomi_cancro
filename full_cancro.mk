# Copyright (C) 2010 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/xiaomi/cancro/cancro.mk)

# Build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Xiaomi/cancro/cancro:4.4.2/KVT49L/KXDMIBE16.0:user/release-keys PRIVATE_BUILD_DESC="cancro-user 4.4.2 KVT49L KXDMIBE16.0 release-keys"

# Discard inherited values and use our own instead.
PRODUCT_DEVICE := cancro
PRODUCT_NAME := pa_cancro
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := MI 3W
PRODUCT_MANUFACTURER := Xiaomi

# Inherit from proprietary blobs
$(call inherit-product-if-exists, vendor/xiaomi/cancro/cancro-vendor.mk)

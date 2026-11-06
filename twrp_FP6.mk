#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from FP6 device
$(call inherit-product, device/fairphone/FP6/device.mk)

PRODUCT_DEVICE := FP6
PRODUCT_NAME := twrp_FP6
PRODUCT_BRAND := Fairphone
PRODUCT_MODEL := Fairphone 6
PRODUCT_MANUFACTURER := fairphone

PRODUCT_GMS_CLIENTID_BASE := android-fairphone

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="FP6-user 16 FP6.QREL.16.61.0 WS19 release-keys"

BUILD_FINGERPRINT := Fairphone/FP6/FP6:16/FP6.QREL.16.61.0/WS19:user/release-keys

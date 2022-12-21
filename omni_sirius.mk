#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from sirius device
$(call inherit-product, device/xiaomi/sirius/device.mk)

PRODUCT_DEVICE := sirius
PRODUCT_NAME := omni_sirius
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 8 SE
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sirius-user 10 QKQ1.190828.002 V12.0.2.0.QEBCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/sirius/sirius:10/QKQ1.190828.002/V12.0.2.0.QEBCNXM:user/release-keys

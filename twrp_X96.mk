# Copyright (C) 2024 The Android Open Source Project

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from X96 device
$(call inherit-product, device/doogee/X96/device.mk)

PRODUCT_DEVICE := X96
PRODUCT_NAME := twrp_X96
PRODUCT_BRAND := DOOGEE
PRODUCT_MODEL := X96
PRODUCT_MANUFACTURER := doogee


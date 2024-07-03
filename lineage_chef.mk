# Inherit some common Lineage stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Device
$(call inherit-product, device/motorola/chef/device.mk)

# Device identifiers
BUILD_FINGERPRINT := motorola/chef_retail/chef_sprout:10/QPTS30.61-18-16-19/da2f0:user/release-keys
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := chef
PRODUCT_MANUFACTURER := motorola
PRODUCT_MODEL := motorola one power
PRODUCT_NAME := lineage_chef

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=chef \
    PRIVATE_BUILD_DESC="chef_sprout-user 10 QPTS30.61-18-16-19 da2f0 release-keys"

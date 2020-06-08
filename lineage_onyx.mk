# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOTANIMATION_HALF_RES := true

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/oneplus/onyx/aosp_onyx.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_onyx
PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product-if-exists, vendor/oneplus/onyx/onyx-vendor.mk)

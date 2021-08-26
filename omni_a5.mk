# Release name
PRODUCT_RELEASE_NAME := a5

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a5
PRODUCT_NAME := omni_a5
PRODUCT_BRAND := htc
PRODUCT_MODEL := Desire 816
PRODUCT_MANUFACTURER := htc

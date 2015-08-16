# Release name
PRODUCT_RELEASE_NAME := bacon

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Slim stuff.
$(call inherit-product, vendor/slim/configs/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/configs/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/oneplus/bacon/full_bacon.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := baconcaf
PRODUCT_NAME := rnx_baconcaf
PRODUCT_BRAND := Oneplus
PRODUCT_MODEL := Oneplus One
PRODUCT_MANUFACTURER := Oneplus


TARGET_CONTINUOUS_SPLASH_ENABLED := true

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=bacon BUILD_FINGERPRINT=oneplus/bacon/A0001:5.1/LMY47O/YNG1TAS0YL:user/release-keys PRIVATE_BUILD_DESC="bacon-user 5.1 LMY47O YNG1TAS0YL release-keys"

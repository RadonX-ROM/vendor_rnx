# Inherit AOSP device configuration for hammerhead.
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Inherit common product files.
$(call inherit-product, vendor/rnx/products/common.mk)

# Telephony
$(call inherit-product, vendor/rnx/configs/telephony.mk)

# Inherit common build.prop overrides
-include vendor/rnx/products/common_versions.mk

# Extra hammerhead overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rnx/overlay/hammerhead

# Copy hammerhead specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/rnx/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/rnx/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/rnx/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/rnx/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Inherit drm blobs
-include vendor/rnx/products/common_drm.mk

# Setup device specific product configuration.
PRODUCT_NAME := rnx_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:5.1.1/LMY48I/2074855:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 5.1.1 LMY48I 2074855 release-keys"

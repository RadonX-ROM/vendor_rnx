# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit common product files.
$(call inherit-product, vendor/rnx/products/common.mk)

# Telephony
$(call inherit-product, vendor/rnx/configs/telephony.mk)

# Inherit common build.prop overrides
-include vendor/rnx/products/common_versions.mk

# Extra mako overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rnx/overlay/mako

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/rnx/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/rnx/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/rnx/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/rnx/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Inherit drm blobs
-include vendor/rnx/products/common_drm.mk

# Setup device specific product configuration.
PRODUCT_NAME := rnx_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:5.1.1/LMY48I/2074855:user/release-keys \
   PRIVATE_BUILD_DESC="occam-user 5.1.1 LMY48I 2074855 release-keys"


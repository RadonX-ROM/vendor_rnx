# Inherit AOSP device configuration for shamu.
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Inherit common product files.
$(call inherit-product, vendor/rnx/products/common.mk)

# Telephony
$(call inherit-product, vendor/rnx/configs/telephony.mk)

# Inherit common build.prop overrides
-include vendor/rnx/products/common_versions.mk

# Copy shamu specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/rnx/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/rnx/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/rnx/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/rnx/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Inherit drm blobs
-include vendor/rnx/products/common_drm.mk

# APNs
PRODUCT_COPY_FILES +=  \
	vendor/rnx/proprietary/common/etc/apns-conf.xml:system/etc/apns-conf.xml

## Device identifier. This must come after all inclusions
PRODUCT_NAME := rnx_shamu
PRODUCT_BRAND := google
PRODUCT_DEVICE := shamu
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:5.1.1/LMY48I/2074855:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 5.1.1 LMY48I 2074855 release-keys"

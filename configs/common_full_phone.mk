# Inherit common stuff
$(call inherit-product, vendor/rnx/configs/common.mk)
$(call inherit-product, vendor/rnx/configs/common_apn.mk)

# SIM Toolkit
PRODUCT_PACKAGES += \
    Stk

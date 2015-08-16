# Inherit common stuff
$(call inherit-product, vendor/rnx/products/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/rnx/overlay/common_tablet

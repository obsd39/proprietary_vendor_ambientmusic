DEVICE_PACKAGE_OVERLAYS += vendor/ambientmusic/overlay
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/ambientmusic/overlay

PRODUCT_PACKAGES += \
    SystemUIGoogle

include  vendor/ambientmusic/ambient/ambient-vendor.mk

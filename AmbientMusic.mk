DEVICE_PACKAGE_OVERLAYS += vendor/ambientmusic/overlay
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/ambientmusic/overlay

PRODUCT_PACKAGES += \
    SystemUIGoogle

PRODUCT_PACKAGES += AmbientSensePrebuilt

# firmware files are device specific and are in device vendor/ dirs
PRODUCT_COPY_FILES += \
    vendor/ambientmusic/ambient/etc/ambient/matcher_tah.leveldb:system/etc/ambient/matcher_tah.leveldb \
    vendor/ambientmusic/ambient/etc/permissions/AmbientSensePrebuilt.xml:system/etc/permissions/AmbientSensePrebuilt.xml

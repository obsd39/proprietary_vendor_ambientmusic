DEVICE_PACKAGE_OVERLAYS += vendor/google_pixel/overlay
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/google_pixel/overlay

PRODUCT_PACKAGES += \
    SystemUIGoogle

PIXEL2017_CODENAMES += \
    %muskie \
    %taimen \
    %wahoo \
    %walleye

PIXEL2018_CODENAMES += \
    %blueline \
    %crosshatch

PIXEL_AMBIENT_CODENAMES += \
    $(PIXEL2017_CODENAMES) \
    $(PIXEL2018_CODENAMES)

# Build ambient listening on Pixel 2017 and Pixel 2018 devices
ifneq ($(filter $(PIXEL_AMBIENT_CODENAMES),$(TARGET_PRODUCT)),)
PRODUCT_PACKAGES += AmbientSensePrebuilt

# firmware files are device specific and are in device vendor/ dirs
PRODUCT_COPY_FILES += \
    vendor/google_pixel/ambient/etc/ambient/matcher_tah.leveldb:system/etc/ambient/matcher_tah.leveldb \
    vendor/google_pixel/ambient/etc/permissions/AmbientSensePrebuilt.xml:system/etc/permissions/AmbientSensePrebuilt.xml
endif

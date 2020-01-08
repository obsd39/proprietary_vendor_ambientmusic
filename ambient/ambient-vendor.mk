PRODUCT_COPY_FILES += \
    vendor/ambientmusic/ambient/proprietary/etc/firmware/dnd.descriptor:$(TARGET_COPY_OUT_SYSTEM)/etc/firmware/dnd.descriptor \
    vendor/ambientmusic/ambient/proprietary/etc/firmware/dnd.sound_model:$(TARGET_COPY_OUT_SYSTEM)/etc/firmware/dnd.sound_model \
    vendor/ambientmusic/ambient/proprietary/etc/firmware/music_detector.descriptor:$(TARGET_COPY_OUT_SYSTEM)/etc/firmware/music_detector.descriptor \
    vendor/ambientmusic/ambient/proprietary/etc/firmware/music_detector.sound_model:$(TARGET_COPY_OUT_SYSTEM)/etc/firmware/music_detector.sound_model \
    vendor/ambientmusic/ambient/proprietary/product/etc/ambient/matcher_tah.leveldb:$(TARGET_COPY_OUT_PRODUCT)/etc/ambient/matcher_tah.leveldb \
    vendor/ambientmusic/ambient/proprietary/product/etc/permissions/ambientsense.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/ambientsense.xml \
    vendor/ambientmusic/ambient/proprietary/product/etc/sysconfig/ambientmusic.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/ambientmusic.xml

PRODUCT_PACKAGES += \
    AmbientSensePrebuilt

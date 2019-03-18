PRODUCT_COPY_FILES += \
    vendor/ambientmusic/ambient/proprietary/etc/ambient/matcher_tah.leveldb:system/etc/ambient/matcher_tah.leveldb \
    vendor/ambientmusic/ambient/proprietary/etc/firmware/dnd.descriptor:system/etc/firmware/dnd.descriptor \
    vendor/ambientmusic/ambient/proprietary/etc/firmware/dnd.sound_model:system/etc/firmware/dnd.sound_model \
    vendor/ambientmusic/ambient/proprietary/etc/firmware/music_detector.descriptor:system/etc/firmware/music_detector.descriptor \
    vendor/ambientmusic/ambient/proprietary/etc/firmware/music_detector.sound_model:system/etc/firmware/music_detector.sound_model \
    vendor/ambientmusic/ambient/proprietary/etc/permissions/ambientsense.xml:system/etc/permissions/ambientsense.xml \
    vendor/ambientmusic/ambient/proprietary/etc/sysconfig/ambientmusic.xml:system/etc/sysconfig/ambientmusic.xml

PRODUCT_PACKAGES += \
    AmbientSensePrebuilt

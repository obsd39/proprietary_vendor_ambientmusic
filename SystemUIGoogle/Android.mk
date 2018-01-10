LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_USE_AAPT2 := true

LOCAL_MODULE_TAGS := optional

RELATIVE_FINGERPRINT_PATH := ../../../frameworks/base/core/java/android/hardware/fingerprint
RELATIVE_SYSTEMUI_PATH := ../../../frameworks/base/packages/SystemUI

LOCAL_SRC_FILES := \
    $(call all-java-files-under, src) \
    $(call all-java-files-under, $(RELATIVE_SYSTEMUI_PATH)/src) \
    $(call all-Iaidl-files-under, $(RELATIVE_SYSTEMUI_PATH)/src) \
    $(call all-Iaidl-files-under, $(RELATIVE_FINGERPRINT_PATH))

LOCAL_STATIC_ANDROID_LIBRARIES := \
    SystemUIPluginLib \
    SystemUISharedLib \
    android-support-car \
    android-support-v4 \
    android-support-v7-recyclerview \
    android-support-v7-preference \
    android-support-v7-appcompat \
    android-support-v7-mediarouter \
    android-support-v7-palette \
    android-support-v14-preference \
    android-support-v17-leanback \
    android-slices-core \
    android-slices-view \
    android-slices-builders \
    android-arch-core-runtime \
    android-arch-lifecycle-extensions \

LOCAL_STATIC_JAVA_LIBRARIES := \
    SystemUI-tags \
    SystemUI-proto \
    org.lineageos.platform.internal

LOCAL_JAVA_LIBRARIES := telephony-common \
    android.car

LOCAL_PACKAGE_NAME := SystemUIGoogle
LOCAL_OVERRIDES_PACKAGES := SystemUI
LOCAL_PRIVATE_PLATFORM_APIS := true
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true

LOCAL_MANIFEST_FILE := $(RELATIVE_SYSTEMUI_PATH)/AndroidManifest.xml
LOCAL_FULL_LIBS_MANIFEST_FILES += $(LOCAL_PATH)/AndroidManifest.xml
# Only include LineageManifest.xml if it exists
#ifneq (,$(wildcard $(LOCAL_PATH)/$(RELATIVE_SYSTEMUI_PATH)/LineageManifest.xml))
LOCAL_FULL_LIBS_MANIFEST_FILES += $(LOCAL_PATH)/$(RELATIVE_SYSTEMUI_PATH)/LineageManifest.xml
#endif

LOCAL_PROGUARD_FLAG_FILES := $(RELATIVE_SYSTEMUI_PATH)/proguard.flags
LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res $(LOCAL_PATH)/$(RELATIVE_SYSTEMUI_PATH)/res-keyguard $(LOCAL_PATH)/$(RELATIVE_SYSTEMUI_PATH)/res

ifneq ($(INCREMENTAL_BUILDS),)
    LOCAL_PROGUARD_ENABLED := disabled
    LOCAL_JACK_ENABLED := incremental
    LOCAL_DX_FLAGS := --multi-dex
    LOCAL_JACK_FLAGS := --multi-dex native
endif

include frameworks/base/packages/SettingsLib/common.mk

LOCAL_AAPT_FLAGS := --extra-packages com.android.keyguard

include $(BUILD_PACKAGE)


LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := \
     system/core/base/include \
     system/core/init \
     external/selinux/libselinux/include
LOCAL_CPPFLAGS := -Wall -DANDROID_TARGET=\"$(TARGET_BOARD_PLATFORM)\"
LOCAL_STATIC_LIBRARIES := libbase
LOCAL_SRC_FILES := init_cancro.cpp
LOCAL_MODULE := libinit_cancro

include $(BUILD_STATIC_LIBRARY)

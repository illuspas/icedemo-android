LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)     
LOCAL_MODULE    := libpjnath      
LOCAL_SRC_FILES := lib/libpjnath-arm-unknown-linux-androideabi.a
include $(PREBUILT_STATIC_LIBRARY) 

include $(CLEAR_VARS)  
LOCAL_MODULE    := libpjlib      
LOCAL_SRC_FILES := lib/libpjlib-util-arm-unknown-linux-androideabi.a   
include $(PREBUILT_STATIC_LIBRARY)  

include $(CLEAR_VARS)     
LOCAL_MODULE    := libpj      
LOCAL_SRC_FILES := lib/libpj-arm-unknown-linux-androideabi.a
include $(PREBUILT_STATIC_LIBRARY)  

include $(CLEAR_VARS)
LOCAL_MODULE:=  icedemo
LOCAL_SRC_FILES := icedemo.c
LOCAL_CFLAGS += $(common_CFLAGS)  -DPJ_AUTOCONF=1 -DPJ_IS_BIG_ENDIAN=0 -DPJ_IS_LITTLE_ENDIAN=1
LOCAL_LDFLAGS += $(common_LDFLAGS) -lc
LOCAL_STATIC_LIBRARIES := libpjnath libpjlib libpj   
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include 
include $(BUILD_EXECUTABLE)

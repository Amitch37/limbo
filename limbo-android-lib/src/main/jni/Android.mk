#include $(call all-subdir-makefiles)

include $(LIMBO_JNI_ROOT)/android-config.mak

#dep libs
include $(NDK_PROJECT_PATH)/jni/compat/musl/Android.mk
include $(NDK_PROJECT_PATH)/jni/compat/Android.mk
ifeq ($(USE_SDL),true)
	include $(NDK_PROJECT_PATH)/jni/SDL2/Android.mk
endif
include $(NDK_PROJECT_PATH)/jni/compat/sdl-extensions/Android.mk
include $(NDK_PROJECT_PATH)/jni/limbo/Android.mk

#Optional libs
#include $(NDK_PROJECT_PATH)/jni/png/Android.mk
#include $(NDK_PROJECT_PATH)/jni/jpeg/Android.mk

#TODO: For Spice
#include $(NDK_PROJECT_PATH)/jni/openssl/Android.mk
#include $(NDK_PROJECT_PATH)/jni/spice/Android.mk

#
# Copyright (C) 2018 Descendant
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#





#APKs libs
PRODUCT_COPY_FILES += \
		vendor/descendant/prebuilt/libs/lib/libsketchology_native.so:system/lib/libsketchology_native.so \
        vendor/descendant/prebuilt/libs/lib64/libsketchology_native.so:system/lib64/libsketchology_native.so \
        vendor/descendant/prebuilt/libs/lib/libfyusenet.so:system/lib/libfyusenet.so \
        vendor/descendant/prebuilt/libs/lib/libHW_Pano_f.so:system/lib/libHW_Pano_f.so \
        vendor/descendant/prebuilt/libs/lib/libHwPostCamera_jni.so:system/lib/libHwPostCamera_jni.so \
        vendor/descendant/prebuilt/libs/lib/libIvw35.so:system/lib/libIvw35.so \
        vendor/descendant/prebuilt/libs/lib/libjni_front_panorama_camera2.so:system/lib/libjni_front_panorama_camera2.so \
        vendor/descendant/prebuilt/libs/lib/libjni_mrc_cg_filters_camera2.so:system/lib/libjni_mrc_cg_filters_camera2.so \
        vendor/descendant/prebuilt/libs/lib/libJniVoiceCapture.so:system/lib/libJniVoiceCapture.so \
        vendor/descendant/prebuilt/libs/lib/libmorpho_memory_allocator.so:system/lib/libmorpho_memory_allocator.so \
        vendor/descendant/prebuilt/libs/lib/libmorpho_panorama_gp.so:system/lib/libmorpho_panorama_gp.so \
        vendor/descendant/prebuilt/libs/lib/libscanner.so:system/lib/libscanner.so \
        vendor/descendant/prebuilt/libs/lib/libTargetTracking.so:system/lib/libTargetTracking.so \
        vendor/descendant/prebuilt/libs/lib/libtrack.so:system/lib/libtrack.so \
        vendor/descendant/prebuilt/libs/lib/libui-27.so:system/lib/libui-27.so

#Bootanimation
PRODUCT_COPY_FILES += \
	vendor/descendant/prebuilt/media/bootanimation/bootanimation.zip:system/media/bootanimation.zip

#Confs
PRODUCT_COPY_FILES += \
	vendor/descendant/prebuilt/etc/sysconfig/pixel.xml:system/etc/sysconfig/pixel.xml

# World APN list
PRODUCT_COPY_FILES += \
    vendor/descendant/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/descendant/prebuilt/etc/resolv.conf:system/etc/resolv.conf \
    vendor/descendant/prebuilt/etc/content-types.properties:system/lib/content-types.properties

# init.d support
PRODUCT_COPY_FILES += \
    vendor/descendant/prebuilt/etc/init.d/00banner:system/etc/init.d/00banner



#Fonts
PRODUCT_COPY_FILES += \
    vendor/descendant/fonts/SSP/SourceSansPro-Regular.ttf:system/fonts/SourceSansPro-Regular.ttf \
    vendor/descendant/fonts/SSP/SourceSansPro-Italic.ttf:system/fonts/SourceSansPro-Italic.ttf \
    vendor/descendant/fonts/SSP/SourceSansPro-Light.ttf:system/fonts/SourceSansPro-Light.ttf \
    vendor/descendant/fonts/SSP/SourceSansPro-LightItalic.ttf:system/fonts/SourceSansPro-LightItalic.ttf \
    vendor/descendant/fonts/SSP/SourceSansPro-SemiBold.ttf:system/fonts/SourceSansPro-SemiBold.ttf \
    vendor/descendant/fonts/SSP/SourceSansPro-SemiBoldItalic.ttf:system/fonts/SourceSansPro-SemiBoldItalic.ttf \
    vendor/descendant/fonts/SSP/SourceSansPro-ExtraLight.ttf:system/fonts/SourceSansPro-ExtraLight.ttf \
    vendor/descendant/fonts/SSP/SourceSansPro-ExtraLightItalic.ttf:system/fonts/SourceSansPro-ExtraLightItalic.ttf \
    vendor/descendant/fonts/SSP/SourceSansPro-Bold.ttf:system/fonts/SourceSansPro-Bold.ttf \
    vendor/descendant/fonts/SSP/SourceSansPro-BoldItalic.ttf:system/fonts/SourceSansPro-BoldItalic.ttf \
    vendor/descendant/fonts/SSP/SourceSansPro-Black.ttf:system/fonts/SourceSansPro-Black.ttf \
    vendor/descendant/fonts/SSP/SourceSansPro-BlackItalic.ttf:system/fonts/SourceSansPro-BlackItalic.ttf



#Fonts
PRODUCT_COPY_FILES += \
    vendor/descendant/fonts/GoogleSans/GoogleSans-Regular.ttf:system/fonts/GoogleSans-Regular.ttf \
    vendor/descendant/fonts/GoogleSans/GoogleSans-Medium.ttf:system/fonts/GoogleSans-Medium.ttf \
    vendor/descendant/fonts/GoogleSans/GoogleSans-MediumItalic.ttf:system/fonts/GoogleSans-MediumItalic.ttf \
    vendor/descendant/fonts/GoogleSans/GoogleSans-Italic.ttf:system/fonts/GoogleSans-Italic.ttf \
    vendor/descendant/fonts/GoogleSans/GoogleSans-Bold.ttf:system/fonts/GoogleSans-Bold.ttf \
    vendor/descendant/fonts/GoogleSans/GoogleSans-BoldItalic.ttf:system/fonts/GoogleSans-BoldItalic.ttf



# Huawei Camera
# PRODUCT_COPY_FILES += \
#     vendor/descendant/prebuilt/apps/HwCamera2/lib/android.hidl.base@1.0.so:system/lib/android.hid$
#     vendor/descendant/prebuilt/apps/HwCamera2/lib64/android.hidl.base@1.0.so:system/lib64/android$
#     vendor/descendant/prebuilt/apps/HwCamera2/lib64/libHwPostCamera_jni.so:system/lib64/libHwPost$

    
#APKs
PRODUCT_PACKAGES += \
	EvolveSMS \
	Fleksy \
	Hyperion \
	OpenCamera \
	SoundPickerPrebuilt \
    MagiskManager \
    SolidExplorer \
    Substratum


PRODUCT_PACKAGES += \
    HwCamera2 \
	hw-fpnav-daemon

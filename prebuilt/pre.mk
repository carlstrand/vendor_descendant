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

#APKs
PRODUCT_PACKAGES += \
	CalculatorPre \
	Markup \
	OpenCamera \
	RetroMusicPlayer \
	SoundPickerPrebuilt \
	WallpaperPickerPre \
	SysLog \
	LiveBoot \
	Fleksy \
	EvolveSMS


#APKs libs
PRODUCT_COPY_FILES += \
		vendor/descendant/prebuilt/libs/lib/libsketchology_native.so:system/lib/libsketchology_native.so \
        vendor/descendant/prebuilt/libs/lib64/libsketchology_native.so:system/lib64/libsketchology_native.so

#Bootanimation
PRODUCT_COPY_FILES += \
	vendor/descendant/prebuilt/media/bootanimation/bootanimation.zip:system/media/bootanimation.zip

#Confs
PRODUCT_COPY_FILES += \
	vendor/descendant/prebuilt/etc/sysconfig/pixel.xml:system/etc/sysconfig/pixel.xml

# World APN list
PRODUCT_COPY_FILES += \
    vendor/descendant/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Resolv
PRODUCT_COPY_FILES += \
    vendor/descendant/prebuilt/etc/resolv.conf:system/etc/resolv.conf

# init.d support
PRODUCT_COPY_FILES += \
    vendor/descendant/prebuilt/etc/init.d/00banner:system/etc/init.d/00banner

# Copy over added mimetype supported in libcore.net.MimeUtils
PRODUCT_COPY_FILES += \
    vendor/descendant/prebuilt/etc/content-types.properties:system/lib/content-types.properties

# NFC:
#   Provide default libnfc-nci.conf file for devices that does not have one in
#   vendor/etc
PRODUCT_COPY_FILES += \
	vendor/descendant/prebuilt/phh/libnfc-nci.conf:system/phh/libnfc-nci-oreo.conf

# LineageOS build may need this to make NFC work
PRODUCT_PACKAGES += \
        NfcNci  

#Fingerprint
PRODUCT_COPY_FILES += \
	vendor/descendant/prebuilt/phh/huawei-fingerprint.kl:system/phh/huawei/fingerprint.kl


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


    #Sounds

    #Wallpapers

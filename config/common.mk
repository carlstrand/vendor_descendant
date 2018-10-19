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


# General additions
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    dalvik.vm.debug.alloc=0 \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.services.whitelist.packagelist=com.google.android.gms \
    ro.com.android.dateformat=yyyy-MM-dd \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0 \
    ro.setupwizard.rotation_locked=true \
    ro.build.selinux=1 \
    dalvik.vm.image-dex2oat-filter=verify-none \
    ro.product.locale=sv-SE \
    ro.config.bt_sco_vol_steps=25 \
    ro.config.media_vol_steps=25 \
    ro.config.vc_call_vol_steps=25 \
    ro.config.vol_steps=25

#Device Codename
DESCENDANT_DEVICE := $(subst descendant_,,$(TARGET_PRODUCT))

#Versioning

MAJOR_VER := One
MINOR_VER := Two
DESCENDANT_NAME := $(MAJOR_VER)Dot$(MINOR_VER)

#Custom Properties
PRODUCT_PROPERTY_OVERRIDES += \
	org.descendant.full_ver=$(DESCENDANT_NAME)

#Overlays
DEVICE_PACKAGE_OVERLAYS += vendor/descendant/overlays/common

PRODUCT_PACKAGES += \
	SettingsBlackTheme \
	SystemBlackTheme \
	SystemDarkTheme \
	DefaultQS \
	SquareQS \
	SuperBubbleQS \
	TeardropQS \
	ZenQS

#Accents
PRODUCT_PACKAGES += \
    WhiteAccent


$(call inherit-product, vendor/descendant/prebuilt/pre.mk)
$(call inherit-product, vendor/opengapps/build/opengapps-packages.mk)


GAPPS_VARIANT := pico

DONT_DEXPREOPT_PREBUILTS := true
WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true

GAPPS_FORCE_PACKAGE_OVERRIDES := true
GAPPS_FORCE_BROWSER_OVERRIDES := true
GAPPS_FORCE_WEBVIEW_OVERRIDES := true

GAPPS_PRODUCT_PACKAGES += \
       CalculatorGoogle \
       Chrome \
       FaceLock \
       GoogleHome \
       GoogleTTS \
       Maps \
       MarkupGoogle \
       Photos \
       PrebuiltDeskClockGoogle \
       Turbo  \
       GoogleAssistant \
       ActionsServices
       

GAPPS_EXCLUDED_PACKAGES := GooglePackageInstaller


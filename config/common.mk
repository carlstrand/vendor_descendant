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
	DefaultQS

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
       GoogleTTS \
       Maps \
       MarkupGoogle \
       Photos \
       PrebuiltDeskClockGoogle \
       Turbo  \
       DigitalWellbeing \
       AndroidPlatformServices \
       PrebuiltGmsCore \
       GoogleBackupTransport

GAPPS_EXCLUDED_PACKAGES := GooglePackageInstaller


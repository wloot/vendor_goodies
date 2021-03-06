# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

VENDOR_PATH := vendor/goodies

PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/system/etc/default-permissions/miuicamera-permissions.xml:system/etc/default-permissions/miuicamera-permissions.xml \
    $(VENDOR_PATH)/system/etc/MIUI_Time.ttf:system/etc/MIUI_Time.ttf \
    $(VENDOR_PATH)/system/etc/selective-spn-conf.xml:system/etc/selective-spn-conf.xml
    
PRODUCT_PACKAGES += \
    NexusLauncher \
    MiuiCamera \
    ViaBrowser

# Sysconfig
PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/system/etc/sysconfig/launcher-hiddenapi-package-whitelist.xml:system/etc/sysconfig/launcher-hiddenapi-package-whitelist.xml \
    $(VENDOR_PATH)/system/etc/sysconfig/pixel.xml:system/etc/sysconfig/pixel.xml

# Overlays
PRODUCT_PACKAGE_OVERLAYS += $(VENDOR_PATH)/overlay/common
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += $(VENDOR_PATH)/overlay/common

# Don't build debug for host or device
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true
ART_BUILD_TARGET_NDEBUG := true
ART_BUILD_TARGET_DEBUG := false
ART_BUILD_HOST_NDEBUG := true
ART_BUILD_HOST_DEBUG := false
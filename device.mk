#
# Copyright (C) 2011 The CyanogenMod Project
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

$(call inherit-product-if-exists, vendor/samsung/apexqtmo/apexqtmo-vendor.mk)
VARIENT_MODEL := apexqtmo
## overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/apexqtmo/overlay

## common overlays
#DEVICE_PACKAGE_OVERLAYS += device/samsung/d2-common/overlay-gsm

# Media configuration
PRODUCT_COPY_FILES += \
    device/samsung/apexqtmo/configs/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
    device/samsung/apexqtmo/configs/media_profiles.xml:system/etc/media_profiles.xml

# Hardware keyboard
PRODUCT_COPY_FILES += \
    device/samsung/apexqtmo/keyboard/sec_keypad.kl:system/usr/keylayout/sec_keypad.kl \
    device/samsung/apexqtmo/keyboard/sec_keypad.kcm:system/usr/keychars/sec_keypad.kcm \
    device/samsung/apexqtmo/keyboard/sec_keypad.idc:system/usr/idc/sec_keypad.idc

PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.mode=none \
    persist.audio.handset.mic=analog \
    ro.qc.sdk.audio.fluencetype=none \
    dalvik.vm.dexopt-data-only=0

# Apexq scripts
PRODUCT_PACKAGES += \
    50bluetooth \
    60compass \
    70tether \
    wifimac.sh \
    camera.MSM8960 \
    geomagneticd

# General insanity
PRODUCT_PACKAGES += \
    bootani.zip

# Wifi firmware
PRODUCT_PACKAGES += \
    WCNSS_cfg.dat \
    WCNSS_qcom_cfg.ini \
    WCNSS_qcom_wlan_nv.bin_

# Inherit from d2-common
$(call inherit-product, device/samsung/d2-common/d2-common.mk)

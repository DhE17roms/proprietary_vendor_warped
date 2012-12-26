# Generic product
PRODUCT_NAME := Warped
PRODUCT_BRAND := dhemke17
PRODUCT_DEVICE := generic

# Common overlay
PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enterprise_mode=1
    camera.flash_off=0 \
    persist.sys.root_access=1

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/warped/overlay/common

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/warped/overlay/dictionaries

# Supersu
PRODUCT_COPY_FILES += \
    vendor/warped/proprietary/supersu/su:system/xbin/su \
    vendor/warped/proprietary/common/xbin/busybox:system/xbin/busybox

PRODUCT_COPY_FILES += \
     vendor/warped/proprietary/common/etc/init.d/91-busybox_linkage.sh:system/etc/init.d/91-busybox_linkage.sh 

# Required packages
PRODUCT_PACKAGES += \
    Superuser

# system/lib
PRODUCT_COPY_FILES += \
    vendor/warped/proprietary/common/lib/libjni_eglfence.so:system/lib/libjni_eglfence.so \
    vendor/warped/proprietary/common/lib/libjni_filtershow_filters.so:system/lib/libjni_filtershow_filters.so \
    vendor/warped/proprietary/common/lib/libjni_mosaic.so:system/lib/libjni_mosaic.so

# system/vendor/etc
PRODUCT_COPY_FILES += \
    vendor/warped/proprietary/common/vendor/etc/smc_normal_world_android_cfg.ini:system/vendor/etc/smc_normal_world_android_cfg.ini

# system/vendor/firmware
PRODUCT_COPY_FILES += \
    vendor/warped/proprietary/common/vendor/firmware/smc_pa_wvdrm.ift:system/vendor/firmware/smc_pa_wvdrm.ift

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

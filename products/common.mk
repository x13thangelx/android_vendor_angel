# Generic product
PRODUCT_NAME := angel
PRODUCT_BRAND := angel
PRODUCT_DEVICE := generic

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/angel/overlay/common

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enterprise_mode=1

# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/angel/proprietary/common/app/Books.apk:system/app/Books.apk \
    vendor/angel/proprietary/common/app/Calendar.apk:system/app/Calendar.apk \
    vendor/angel/proprietary/common/app/ChromeBookmarksSyncAdapter.apk:system/app/ChromeBookmarksSyncAdapter.apk \
    vendor/angel/proprietary/common/app/Gmail.apk:system/app/Gmail.apk \
    vendor/angel/proprietary/common/app/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
    vendor/angel/proprietary/common/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
    vendor/angel/proprietary/common/app/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
    vendor/angel/proprietary/common/app/GoogleLoginService.apk:system/app/GoogleLoginService.apk \
    vendor/angel/proprietary/common/app/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
    vendor/angel/proprietary/common/app/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
    vendor/angel/proprietary/common/app/GoogleTTS.apk:system/app/GoogleTTS.apk \
    vendor/angel/proprietary/common/app/LatinIMEDictionaryPack.apk:system/app/LatinIMEDictionaryPack.apk \
    vendor/angel/proprietary/common/app/Maps.apk:system/app/Maps.apk \
    vendor/angel/proprietary/common/app/MediaUploader.apk:system/app/MediaUploader.apk \
    vendor/angel/proprietary/common/app/NetworkLocation.apk:system/app/NetworkLocation.apk \
    vendor/angel/proprietary/common/app/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
    vendor/angel/proprietary/common/app/Phonesky.apk:system/app/Phonesky.apk \
    vendor/angel/proprietary/common/app/QuickSearchBox.apk:system/app/QuickSearchBox.apk \
    vendor/angel/proprietary/common/app/Street.apk:system/app/Street.apk \
    vendor/angel/proprietary/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/angel/proprietary/common/app/Talk.apk:system/app/Talk.apk \
    vendor/angel/proprietary/common/app/talkback.apk:system/app/talkback.apk \
    vendor/angel/proprietary/common/etc/contributors.css:system/etc/contributors.css \
    vendor/angel/proprietary/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/angel/proprietary/common/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/angel/proprietary/common/etc/permissions/features.xml:system/etc/permissions/features.xml \
    vendor/angel/proprietary/common/etc/updatecmds/google_generic_update.txt:system/etc/updatecmds/google_generic_update.txt \
    vendor/angel/proprietary/common/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    vendor/angel/proprietary/common/lib/libflint_engine_jni_api.so:system/lib/libflint_engine_jni_api.so \
    vendor/angel/proprietary/common/lib/libpicowrapper.so:system/lib/libpicowrapper.so \
    vendor/angel/proprietary/common/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
    vendor/angel/proprietary/common/lib/libvideochat_jni.so:system/lib/libvideochat_jni.so \
    vendor/angel/proprietary/common/lib/libvideochat_stabilize.so:system/lib/libvideochat_stabilize.so \
    vendor/angel/proprietary/common/lib/libvoicesearch.so:system/lib/libvoicesearch.so \
    vendor/angel/proprietary/common/xbin/su:system/xbin/su

ifeq ($(TARGET_BUILD_VARIANT),user)
# Blobs common to all devices except emulator
PRODUCT_COPY_FILES += \
    vendor/angel/proprietary/common/app/Gallery2.apk:system/app/Gallery2.apk \
    vendor/angel/proprietary/common/app/Music.apk:system/app/Music.apk \
    vendor/angel/proprietary/common/app/Videos.apk:system/app/Videos.apk \
    vendor/angel/proprietary/common/app/VoiceSearch.apk:system/app/VoiceSearch.apk \
    vendor/angel/proprietary/common/app/YouTube.apk:system/app/YouTube.apk
endif

ifneq ($(filter angel_shadow angel_droid2 angel_droid2we,$(TARGET_PRODUCT)),)
# Blobs common to all devices except emulator and tablets
PRODUCT_COPY_FILES += \
    vendor/angel/proprietary/common/app/CarHome.apk:system/app/CarHome.apk \
    vendor/angel/proprietary/common/app/GenieWidget.apk:system/app/GenieWidget.apk \
    vendor/angel/proprietary/common/app/SetupWizard.apk:system/app/SetupWizard.apk
endif

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml


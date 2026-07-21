# NX549J Goodix GF3208 — A9-on-A11 working fingerprint stack (2026-07-16).
# Prebuilt A9 blobs + LD_PRELOAD binder-compat shim (libbindershim.so).
# Reproduces the live working device; init wiring (LD_PRELOAD + goodix.fp.service.ready
# gate) is in device-tree init.nx549j.rc / init.goodix.sh / the fps_hal .rc.
PRODUCT_COPY_FILES += \
    vendor/nubia/msm8953-common/proprietary/vendor/lib64/fp_compat/android.hardware.biometrics.fingerprint@2.1.so:$(TARGET_COPY_OUT_VENDOR)/lib64/fp_compat/android.hardware.biometrics.fingerprint@2.1.so \
    vendor/nubia/msm8953-common/proprietary/vendor/lib64/fp_compat/libbacktrace.so:$(TARGET_COPY_OUT_VENDOR)/lib64/fp_compat/libbacktrace.so \
    vendor/nubia/msm8953-common/proprietary/vendor/lib64/fp_compat/libbase.so:$(TARGET_COPY_OUT_VENDOR)/lib64/fp_compat/libbase.so \
    vendor/nubia/msm8953-common/proprietary/vendor/lib64/fp_compat/libbindershim.so:$(TARGET_COPY_OUT_VENDOR)/lib64/fp_compat/libbindershim.so \
    vendor/nubia/msm8953-common/proprietary/vendor/lib64/fp_compat/libbinder.so:$(TARGET_COPY_OUT_VENDOR)/lib64/fp_compat/libbinder.so \
    vendor/nubia/msm8953-common/proprietary/vendor/lib64/fp_compat/libc++.so:$(TARGET_COPY_OUT_VENDOR)/lib64/fp_compat/libc++.so \
    vendor/nubia/msm8953-common/proprietary/vendor/lib64/fp_compat/libcutils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/fp_compat/libcutils.so \
    vendor/nubia/msm8953-common/proprietary/vendor/lib64/fp_compat/libdexfile.so:$(TARGET_COPY_OUT_VENDOR)/lib64/fp_compat/libdexfile.so \
    vendor/nubia/msm8953-common/proprietary/vendor/lib64/fp_compat/libhardware.so:$(TARGET_COPY_OUT_VENDOR)/lib64/fp_compat/libhardware.so \
    vendor/nubia/msm8953-common/proprietary/vendor/lib64/fp_compat/libhidlbase.so:$(TARGET_COPY_OUT_VENDOR)/lib64/fp_compat/libhidlbase.so \
    vendor/nubia/msm8953-common/proprietary/vendor/lib64/fp_compat/libhidltransport.so:$(TARGET_COPY_OUT_VENDOR)/lib64/fp_compat/libhidltransport.so \
    vendor/nubia/msm8953-common/proprietary/vendor/lib64/fp_compat/libhwbinder.so:$(TARGET_COPY_OUT_VENDOR)/lib64/fp_compat/libhwbinder.so \
    vendor/nubia/msm8953-common/proprietary/vendor/lib64/fp_compat/libion.so:$(TARGET_COPY_OUT_VENDOR)/lib64/fp_compat/libion.so \
    vendor/nubia/msm8953-common/proprietary/vendor/lib64/fp_compat/liblog.so:$(TARGET_COPY_OUT_VENDOR)/lib64/fp_compat/liblog.so \
    vendor/nubia/msm8953-common/proprietary/vendor/lib64/fp_compat/liblzma.so:$(TARGET_COPY_OUT_VENDOR)/lib64/fp_compat/liblzma.so \
    vendor/nubia/msm8953-common/proprietary/vendor/lib64/fp_compat/libQSEEComAPI.so:$(TARGET_COPY_OUT_VENDOR)/lib64/fp_compat/libQSEEComAPI.so \
    vendor/nubia/msm8953-common/proprietary/vendor/lib64/fp_compat/libstdc++.so:$(TARGET_COPY_OUT_VENDOR)/lib64/fp_compat/libstdc++.so \
    vendor/nubia/msm8953-common/proprietary/vendor/lib64/fp_compat/libunwind.so:$(TARGET_COPY_OUT_VENDOR)/lib64/fp_compat/libunwind.so \
    vendor/nubia/msm8953-common/proprietary/vendor/lib64/fp_compat/libunwindstack.so:$(TARGET_COPY_OUT_VENDOR)/lib64/fp_compat/libunwindstack.so \
    vendor/nubia/msm8953-common/proprietary/vendor/lib64/fp_compat/libutils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/fp_compat/libutils.so \
    vendor/nubia/msm8953-common/proprietary/vendor/lib64/fp_compat/libvndksupport.so:$(TARGET_COPY_OUT_VENDOR)/lib64/fp_compat/libvndksupport.so \
    vendor/nubia/msm8953-common/proprietary/vendor/lib64/fp_compat/libz.so:$(TARGET_COPY_OUT_VENDOR)/lib64/fp_compat/libz.so \
    vendor/nubia/msm8953-common/proprietary/vendor/lib64/libfp_client.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libfp_client.so \
    vendor/nubia/msm8953-common/proprietary/vendor/lib64/libfpservice.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libfpservice.so \
    vendor/nubia/msm8953-common/proprietary/vendor/lib64/libfpnav.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libfpnav.so \
    vendor/nubia/msm8953-common/proprietary/vendor/lib64/hw/gxfingerprint.default.so:$(TARGET_COPY_OUT_VENDOR)/lib64/hw/gxfingerprint.default.so \
    vendor/nubia/msm8953-common/proprietary/vendor/bin/gx_fpd:$(TARGET_COPY_OUT_VENDOR)/bin/gx_fpd \
    vendor/nubia/msm8953-common/proprietary/vendor/bin/hw/android.hardware.biometrics.fingerprint@2.1-service.nubia:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.biometrics.fingerprint@2.1-service.nubia

# fps_hal service init .rc (was installed via the removed AOSP module LOCAL_INIT_RC).
PRODUCT_COPY_FILES += \
    device/nubia/msm8953-common/biometrics/android.hardware.biometrics.fingerprint@2.1-service.nubia.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.biometrics.fingerprint@2.1-service.nubia.rc

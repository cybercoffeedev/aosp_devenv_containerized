#!/bin/bash

mkdir -p aosp && cd aosp
repo init -b android-latest-release -u https://android.googlesource.com/platform/manifest < /dev/null
repo sync -c -j$(nproc --all)

source build/envsetup.sh && echo "cd aosp && source build/envsetup.sh && \
    lunch aosp_cf_x86_64_only_phone-aosp_current-userdebug" > ~/.bashrc
lunch aosp_cf_x86_64_only_phone-aosp_current-userdebug
m -j$(nproc --all) # This will take many hours, please don't stare at your screen the whole compilation time =)

~/run_services.sh > run_services.log 2>&1 &
launch_cvd --daemon < /dev/null
adb connect 127.0.0.1:6520
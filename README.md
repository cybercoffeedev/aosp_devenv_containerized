# Containerized development configuration for the Android Open Source Project
<div align=center>

![android_source](aosp.png)
</div>

This repository provides a quick way to set up AOSP development environment using Dev containers.
## How to configure
To configure the development container, refer to [this guide](https://containers.dev/supporting)
## System requirements
According to the [official Android Open Source Project documentation](https://source.android.com/docs/setup/start#hardware-requirements), you need the following to build AOSP:
- An x86_64 operating system
- At least *64 GB** of RAM
- at least 400 GB of free disk space (250 GB for downloading the source and 150 GB for compiling)
- patience (the entire compilation process can take a **REALLY LONG** time)

**if your machine has less than 64 GB of RAM, you can try compiling AOSP with the [ZRAM module](https://wiki.debian.org/ZRam) enabled in your OS*
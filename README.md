DNS-Forwarder for OpenWrt
===

 [![Download][B]][2]

简介
---

 本项目是 [DNS-Forwarder][1] 在 OpenWrt 上的移植  

编译
---

 - 从 OpenWrt 的 [SDK][S] 编译  

   ```bash
   # 以 ar71xx 平台为例
   tar xjf OpenWrt-SDK-ar71xx-for-linux-x86_64-gcc-4.8-linaro_uClibc-0.9.33.2.tar.bz2
   cd OpenWrt-SDK-ar71xx-*
   # 获取 Makefile
   git clone https://github.com/aa65535/openwrt-dns-forwarder.git package/dns-forwarder
   # 选择要编译的包 Network -> ChinaDNS
   make menuconfig
   # 开始编译
   make package/dns-forwarder/compile V=99
   ```

 [1]: https://github.com/aa65535/hev-dns-forwarder
 [2]: https://github.com/aa65535/openwrt-dns-forwarder/releases/latest
 [B]: https://img.shields.io/badge/Download-v1.1.0-blue.svg
 [S]: https://wiki.openwrt.org/doc/howto/obtain.firmware.sdk

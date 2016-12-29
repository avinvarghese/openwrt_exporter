# openwrt_exporter
OpenWrt metrics exporter for Prometheus written in Lua
## Installation
at you openwrt box:
 * Install luasocket ```opkg install luasocket```
 * copy metrics.lua into /bin/
 * copy metrics.initscript into /etc/init.d/
 * start your exporter ```/etc/init.d/metrics.initscript start```

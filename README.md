# openwrt_exporter
OpenWrt/LEDE metrics exporter for Prometheus written in Lua
## Installation
at your openwrt box:

```
# Install dependencies
opkg update
opkg install luasocket curl ca-certificates luci-base luci-lib-nixio iwinfo

# copy metrics.lua into /usr/bin/
curl -o /usr/bin/metrics.lua https://raw.githubusercontent.com/avinvarghese/openwrt_exporter/master/metrics.lua

# copy initscript into /etc/init.d/
curl -o /etc/init.d/openwrt-exporter
https://raw.githubusercontent.com/avinvarghese/openwrt_exporter/master/metrics.initscript

chmod +x /usr/bin/metrics.lua /etc/init.d/openwrt-exporter

# start your exporter and enable on boot
/etc/init.d/openwrt-exporter start
/etc/init.d/openwrt-exporter enable
```

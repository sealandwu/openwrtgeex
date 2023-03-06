#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git' >>feeds.conf.default
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall.git;packages' >>feeds.conf.default
sed -i '$a src-git luci-app-adguardhome https://github.com/rufengsuixing/luci-app-adguardhome' feeds.conf.default

git clone --depth=1 https://github.com/vernesong/OpenClash.git package/luci-app-openclash
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
git clone https://github.com/1wrt/luci-app-ikoolproxy.git package/luci-app-ikoolproxy
#git clone https://github.com/godros/luci-app-godproxy.git package/luci-app-godproxy
git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter

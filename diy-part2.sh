#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# 删除默认argon主题，并下载新argon主题
rm -rf ./package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git ./package/lean/luci-theme-argon/
# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate
# Modify default host name
sed -i 's/OpenWrt/Kyara/g' package/base-files/files/bin/config_generate
# Modify default wireless name
sed -i 's/OpenWrt/Kyara/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
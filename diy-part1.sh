#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script (After Update feeds)

# passwall
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> feeds.conf.default
echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main" >> feeds.conf.default

# helloworld
echo "src-git helloworld https://github.com/fw876/helloworld.git;master" >> feeds.conf.default

# poweroff
echo "src-git poweroff https://github.com/esirplayground/luci-app-poweroff;master" >> feeds.conf.default

# netdata
echo "src-git netdata https://github.com/Jason6111/luci-app-netdata.git;main" >> feeds.conf.default

# lienol package
echo "src-git lienolpackage https://github.com/Lienol/openwrt-package.git;main" >> feeds.conf.default

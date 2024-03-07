#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: configure.sh
# Description: OpenWrt DIY script (After Update feeds)


# Add luci-app-passwall
echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main" >> feeds.conf.default
echo "src-git passwall-package https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> feeds.conf.default

#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy.sh
# Description: OpenWrt DIY script (After Update feeds)


# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# Clear the login password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' package/lean/default-settings/files/zzz-default-settings

# Add luci-app-ssr-plus
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

# Add luci-app-openclash
# echo 'src-git openclash https://github.com/vernesong/OpenClash >>feeds.conf.default

# Add luci-app-passwall
echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main" >> feeds.conf.default
echo "src-git passwall-package https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> feeds.conf.default

# Add luci-app-passwall2
# echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> feeds.conf.default
# echo "src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git;main" >> feeds.conf.default

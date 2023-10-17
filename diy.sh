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


# Add luci-app-ssr-plus
git clone --depth=1 https://github.com/fw876/helloworld.git ./package/lean/helloworld

# Add OpenClash
# svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash ./package/lean/luci-app-openclash

# Add luci-app-passwall
git clone -b main --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages.git ./package/lean/passwall
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/luci-app-passwall ./package/lean/passwall

# Add luci-app-vssr
# cd ./package/lean/
# git clone --depth=1 https://github.com/jerrykuku/lua-maxminddb.git
# git clone --depth=1 https://github.com/jerrykuku/luci-app-vssr.git
# cd $OLDPWD

# Add luci-app-netdata
rm -rf ./feeds/luci/applications/luci-app-netdata/
git clone --depth=1 https://github.com/Jason6111/luci-app-netdata ./feeds/luci/applications/luci-app-netdata/

# Add Lienol's Packages
svn co https://github.com/Lienol/openwrt-package/trunk/luci-app-ramfree ./package/lean/luci-app-ramfree

# Add luci-theme-neobird
git clone --depth=1 https://github.com/thinktip/luci-theme-neobird ./package/lean/luci-theme-neobird
default_theme='neobird'
sed -i "s/bootstrap/$default_theme/g" feeds/luci/modules/luci-base/root/etc/config/luci

# Add luci-app-poweroff
git clone --depth=1 https://github.com/esirplayground/luci-app-poweroff ./package/lean/luci-app-poweroff

# Mod zzz-default-settings
pushd package/lean/default-settings/files
sed -i '/http/d' zzz-default-settings
sed -i '/18.06/d' zzz-default-settings
export orig_version=$(cat "zzz-default-settings" | grep DISTRIB_REVISION= | awk -F "'" '{print $2}')
sed -i "s/${orig_version}/Firmware compiled by OceanMax/g" zzz-default-settings
popd

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# Clear the login password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' package/lean/default-settings/files/zzz-default-settings

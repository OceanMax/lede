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

# custom feeds
echo "src-git small https://github.com/kenzok8/small.git;master" >> feeds.conf.default
echo "src-git small_packages https://github.com/kenzok8/small-package.git;main" >> feeds.conf.default

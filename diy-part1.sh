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




# Add a feed source
git clone https://github.com/kiddin9/openwrt-bypass.git package/openwrt-bypass
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
mkdir -p package/helloworld
for i in "dns2socks" "microsocks" "ipt2socks" "pdnsd-alt" "redsocks2"; do svn checkout "https://github.com/immortalwrt/packages/trunk/net/$i" "package/helloworld/$i"; done


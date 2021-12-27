#!/bin/bash
function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}
ls |grep -v README.md|grep -v update_plugins.sh |xargs -i rm -rf {}
git clone --depth 1 https://github.com/mchome/luci-app-vlmcsd
git clone --depth 1 https://github.com/mchome/openwrt-vlmcsd
git clone --depth 1 https://github.com/DevOpenWRT-Router/luci-app-rebootschedule.git
git clone --depth 1 https://github.com/byxkbyxk/luci-app-control-timewol
git clone --depth 1 https://github.com/MapesxGM/luci-app-eqos

svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-vsftpd
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/vsftpd-alt
#svn co https://github.com/coolsnowwolf/ltrunk/master/package/lean/luci-app-usb-printer
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/baidupcs-web
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/libcryptopp
svn co https://github.com/4IceG/luci-app-timecontrol/trunk/luci-app-timecontrol
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-cifs-mount
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-cifsd

#mv -n openwrt-passwall/* ./ ; rm -Rf openwrt-passwall
#mv -n openwrt-package/* ./ ; rm -Rf openwrt-package

rm -rf ./*/.git & rm -f ./*/.gitattributes
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
exit 0

#!/bin/sh

[ "$1" = "go" ] && OPT="" || OPT="--dry-run"

# rsync --dry-run for testing
sudo rsync $OPT -avc --delete /etc/ etc \
    --exclude=*/.keep* \
    --exclude=*/*/.keep* \
    --exclude=*/*/*/.keep* \
    --exclude=.pwd.lock \
    --exclude=asound.state \
    --exclude=blkid.tab* \
    --exclude=dmtab \
    --exclude=fstab.bak \
    --exclude=group \
    --exclude=group- \
    --exclude=ld.so.cache \
    --exclude=login.access \
    --exclude=mtab \
    --exclude=mtab.bak \
    --exclude=passwd \
    --exclude=passwd- \
    --exclude=shadow \
    --exclude=shadow- \
    --exclude=conf.d/net \
    --exclude=conf.d/*.bak \
    --exclude=gconf/gconf.xml.defaults/* \
    --exclude=mc/ \
    --exclude=scim/ \
    --exclude=sgml/ \
    --exclude=ssmtp/ssmtp.conf \
    --exclude=wicd/wireless-settings.conf \
    --exclude=wpa_supplicant/wpa_supplicant.conf

#[ -f /usr/share/doc/wpa_supplicant-*/wpa_supplicant.conf.bz2 ] && {
#    7z x -oy etc/wpa_supplicant/  /usr/share/doc/wpa_supplicant-*/wpa_supplicant.conf.bz2
#}

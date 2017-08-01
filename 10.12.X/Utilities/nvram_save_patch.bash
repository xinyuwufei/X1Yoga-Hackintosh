#!/bin/bash 

echo patches for T460 nvram save
# 
fixed=root/etc/rc.shutdown.d/80.save_nvram_plist.fixed
patch=/etc/rc.shutdown.d/80.save_nvram_plist.local
if [[ -e $fixed ]];
then
    echo Installing "$patch"
    sudo cp -a "$fixed" "$patch"
fi
#
fixed=root/etc/rc.boot.d/20.mount_ESP.fixed
patch=/etc/rc.boot.d/20.mount_ESP.local
if [[ -e $fixed ]];
then
    echo Installing "$patch"
    sudo cp -a "$fixed" "$patch"
fi
#
fixed="root/Library/Application Support/Clover/CloverDaemon"
patch="/Library/Application Support/Clover/CloverDaemon"
if [[ -e "$fixed" ]];
then
    echo Installing "$patch"
    sudo cp -a "$fixed" "$patch"
fi

fixed="root/Library/Application Support/Clover/CloverDaemon-stopservice"
patch="/Library/Application Support/Clover/CloverDaemon-stopservice"
if [[ -e "$fixed" ]];
then
    echo Installing "$patch"
    sudo cp -a "$fixed" "$patch"

    echo Setting LogoutHook to $patch
    sudo defaults write com.apple.loginwindow LogoutHook "${patch}"
fi




# X1Yoga-Hackintosh

# SPEC:
  Thinkpad X1 Yoga

	CPU: I7-6600U
	IGPU: HD520
	Display: 1920 x 1080
	WIFI/BT: Bcm94352z(Lenovo FRU)
    SSD: SM961
	BIOS:
	OS X: 10.12.3
	BootLoader：Clover+GPT

# Installation/Post-Installation:
  you can refer to README in 10.11.X folder
  or taking the advantage in 10.12.X folder

* if you are using NVMe SSD as the boot disk you may encounter 'Couldn't Unmount Disk' Error at the end of installation,you always can install in a HDD and CCC it after
* ./kexts/HackrNVMeFamily-10_12_3.kext and./Clover/ACPI/patched/SSDT-NVMe.aml are for NVMe SSD
* ./kexts/AppleALC.kext : I put it in S/L/E, don't know why is not working in Clover/kexts/Other
* mic doesn't work on AppleALC,now uses aDummyHDA.kext(put to L/E is enough)

# Utilities:
All the file are taken from tlcuk's [post][db8205b4]

    Since we are using EmuVariable it looks for the file nvram.plist to get its values -
    which is stored in the /ESP now. Install the root utilities and clover scripts and files
    from Utilities folder to your HD. This step is important as among other things, it
    installs the rc.scripts to save the nvram contents to a file upon reboot. Using a
    LogoutHook is more reliable than the CloverDaemon which often fails during shutdown.  If
    you reinstall Clover from a pkg, then recopy the .fixed version to .local in
    /etc/rc.boot.d and rc.shutdown.d.

    In a Terminal run:
        cd ~/Downloads/X1Yoga-Hackintosh/Utilities/root
        sudo cp -a * /
        sudo defaults write com.apple.loginwindow LogoutHook/etc/rc.shutdown.d/80.save_nvram_plist.local

# HDMI Audio:
[guide-fix-skylake-hdmidp-output](http://www.insanelymac.com/forum/topic/319211-guide-fix-skylake-hdmidp-output/)

[OS X HD5x0/AMD/Nvidia HDMI Audio dsdt/ssdt](https://github.com/toleda/audio_hdmi_100series)

In clover config/kextsToPatch(Credits:syscl):

        name: AppleIntelSKLGraphicsFramebuffer
        find: 02040A000004000087010000
        replace: 02040A000008000087010000

# current Problem:

    BT sometime shows not available after wakeup

# Extra:
[zsh/iterm2][9f1aecfa]

    show path on finder's title bar:
        defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder
    show all hidden files:
        defaults write com.apple.finder AppleShowAllFiles YES; killall Finder
    install HomeBrew:
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# Credits and Thanks
    Scripts are based on RehabMan's Repo with some modifications
    BIG THANKS FOR 'Great people share their wisdom without asking for anything in return…':
      RehabMan
      Pike R. Alpha
      tluck
      shmilee
      syscl

  [9f1aecfa]: http://www.jianshu.com/p/7de00c73a2bb "iTerm 2 && Oh My Zsh"
  [db8205b4]: http://www.insanelymac.com/forum/topic/315451-guide-lenovo-t460-macos-with-clover/page-1 "[GUIDE] Lenovo T460 macOS with Clover"

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

# current Problem:

    BT sometime shows not available after wakeup
    no HDMI codec

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

  [9f1aecfa]: http://www.jianshu.com/p/7de00c73a2bb "iTerm 2 && Oh My Zsh"

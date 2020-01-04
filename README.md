# X1Yoga-1stGen-Hackintosh

# SPEC:
  Thinkpad X1 Yoga

	CPU: I7-6600U
	IGPU: HD520
	Display: 1920 x 1080
	WIFI/BT: Bcm94352z(Lenovo FRU)
	SSD: SM961
  	Audio: CX20753/4
  	MicroSD: REALTEK RTS525A SD CARD READER
	BIOS:
	OS X: 10.15.2
	BootLoader：Clover(r5102)+GPT

# Installation/Post-Installation:
### Backup

- **CCC(Carbon Copy Cloner) is important!**
- **CCC(Carbon Copy Cloner) is important!**
- **CCC(Carbon Copy Cloner) is important!**

### Steps

- **TODO**

- you can refer to README in 10.11.X folder and 10.12.X folder
    or taking the advantage => 10.15.X folder

# Extras:
- [Win10 time/ timeZone consistency](https://blog.csdn.net/skykingf/article/details/13273397)
- [Clover InjectKext and VirtualSMC](https://www.tonymacx86.com/threads/clover-injectkext-and-virtualsmc.271450/)
- [An iDiot's Guide To Lilu and its Plug-ins](https://www.tonymacx86.com/threads/an-idiots-guide-to-lilu-and-its-plug-ins.260063/)
- [set up Clover Theme](http://bbs.pcbeta.com/forum.php?mod=viewthread&tid=1696010)


| Feature                              | Status | Dependency                                                   | Remarks                                                      |
| :----------------------------------- | ------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| macOS (10.14.x or 10.15.x)           | ✅      | `VirtualSMC.kext`, `Lilu.kext`, Clover  or OpenCore Bootloader |                                                              |
| iMessage/ FaceTime                   | ✅      | Whitelisted Apple ID, Valid SMBIOS                           | [Guide](https://www.tonymacx86.com/threads/an-idiots-guide-to-imessage.196827/) |
| WiFi                                 | ✅      | Native with BCM94360CS2. `AirportBrcmFixup` otherwise.       |                                                              |
| Bluetooth                            | ✅      | Native with BCM94360CS2. `BrcmFirmwareRepo.kext`, `BrcmPatchRAM3.kext`, and `BrcmBluetoothInjector.kext` otherwise. | -                                                            |                                                           |
| TrackPad                             | ✅      | `VoodooPS2Controller.kext` need to improve 2finger speed                                   | -                                                            |
| Built-in Keyboard                    | ✅      | `VoodooPS2Controller.kext`                                   | -                                                            |
| Battery Percentage Indication        | ✅      | DSDT Patch, will do a separate ssdt patch if have time      | Use [MaciASL](https://bitbucket.org/RehabMan/os-x-maciasl-patchmatic/downloads/) |
| CPU Power Management (SpeedShift)    | ✅      | `XCPM`(done by RehabMan clover config-> PluginType) and `CPUFriend.kext`, generate your own CPUFriendDataProvider with [CPUFriendFriend](https://github.com/corpnewt/CPUFriendFriend_ or [one-key-cpufriend](https://github.com/stevezhengshiqi/one-key-cpufriend). | -                                                           
| AirPort Extreme (Wi-Fi)              | ✅      | Swapping Intel WLAN card with  Dell DW1560                   | -                                                            |
| Audio Recording                      | ✅      | `AppleALC.kext` with Layout ID = 15                          | -                                                            |
| Audio Playback                       | ✅      | `AppleALC.kext` with Layout ID = 15                          | -                                                            |
| Full Graphics Accleration (QE/CI)    | ✅      | `WhateverGreen.kext`                                         | -                                                            |
| Brightness Adjustments               | ✅      | `WhateverGreen.kext` and `SSDT-PNLF.aml`             | -                                                            |
| Micro SD Card Reader                 |  ❌      | Sinetek-rtsx.kext may be a solution                           | -                                                            |
| USB 3.1                              | ⚠️    | `USBInjectAll.kext` , `SSDT-UAIC.aml`                        | Pen and Touch support as well as sd card may need to redo the usb injection                                                            |
| HiDPI *(Optional)*                   | ✅      | [xzhih/one-key-hidpi](https://github.com/xzhih/one-key-hidpi) | Scaling issues |
| Battery life                         | ✅      | Non-NVME SSD, proper power management setup (CPU Power Management, GPU Power Management) | NOt test,Drops 10% per hour for light programming tasks               |
| Sleep / Wakeup                       |  ✅     |  0D SSDT patch + PM + [hibernation DISABLED](https://www.tonymacx86.com/threads/guide-native-power-management-for-laptops.175801/) | - |

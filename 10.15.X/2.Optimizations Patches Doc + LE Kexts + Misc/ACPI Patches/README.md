### Through Rehabman's Guide

- DSDT Patches
  - Convert to dsl by refs.txt
    - iasl -da -dl -fe refs.txt DSDT.aml SSDT*.aml
  - 4_fn_keys.txt
  - 5_battery_thinkpad-x1yoga.txt
  -  TODO : Fn keys and battery patches -> SSDT

 - SSDT-UIAC-AL.aml
    - this is the usb property injections
    - I did this long time ago (back to 10.12.X)
    - Releate kext to patch
      	- com.apple.iokit.IOUSBHostFamily : 83FB0F0F -> 83FB3F0F
      	- com.apple.driver.usb.AppleUSBXHCI: 83F90F0F -> 83F93F0F
   	- May need USBInjectAll.kext
    
### Through Patches via **[P-little](https://github.com/daliansky/P-little)**:

#### Global replace:

- XHCI to XHC

- SMBU to SBUS

#### SSDT Patches:

- **01-XOSI-Windows**
  - [SSDT-XOSI-Win10x.dsl](https://github.com/daliansky/P-little/blob/460d50f17cb193b0a185b74f5eae99d6f57b5e43/部件补丁包/01-XOSI-Windows/SSDT-XOSI-Win10x.dsl)
- [09-关于SBUS](https://github.com/daliansky/P-little/tree/460d50f17cb193b0a185b74f5eae99d6f57b5e43/部件补丁包/09-关于SBUS)
- [10-1-PNLF注入方法](https://github.com/daliansky/P-little/tree/460d50f17cb193b0a185b74f5eae99d6f57b5e43/部件补丁包/10-1-PNLF注入方法)
- [10-3-环境光传感器修复和仿冒](https://github.com/daliansky/P-little/tree/460d50f17cb193b0a185b74f5eae99d6f57b5e43/部件补丁包/10-3-环境光传感器修复和仿冒)
- [11-1-睡了即醒(0D:6D)补丁](https://github.com/daliansky/P-little/tree/460d50f17cb193b0a185b74f5eae99d6f57b5e43/部件补丁包/11-1-睡了即醒(0D:6D)补丁)
  - XHC:_PRW to XPRW 
  - IGBE:_PRW to XPRW
  - _PRW: 6D

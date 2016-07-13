# X1Yoga-Hackintosh

#SPEC:
  Thinkpad X1 Yoga
  
	CPU：I7-6600U
	IGPU：HD520
	Display：1920 x 1080
	WIFI/BT：Bcm94352z(Lenovo FRU)
	BIOS：
	OS X 10.11.5
	BootLoader：Clover+GPT

# Installation:

    replace X1Yoga-Hackintosh/Clover to your bootloader
    press F4 to save ACPI-Table files when entering the Clover Menu
  
# Post-Installation:

    copy X1Yoga-Hackintosh folder to Desktop
    installing kexts/apps/tools:
      cd ~/Desktop/X1Yoga-Hackintosh
	    sudo sh ./install_downloads.sh
	  fix DSDT/SSDT files:
	    copy all files from (YOUR BOOTLOADER'S DIR/Clover/ACPI/origin) to X1Yoga-Hackintosh/DSDT/ACPI-Tables
	    cd ~/Desktop/X1Yoga-Hackintosh/DSDT
		  sudo sh ./auto_patch.sh
	  aftering running the script, replace X1Yoga-Hackintosh/Clover to your bootloader
	
# clean:

    cd ~/Desktop/X1Yoga-Hackintosh
	  sudo sh ./clean.sh
	
# current Problem:

    BT sometime shows not available after wakeup
    no HDMI codec
    2nd Stage Boot graphic glish

# TODO

    HDMI solution when the environment is available
    
# Credits  
    Scripts are based on RehabMan's Repo with some modifications
    BIG THANKS FOR 'Great people share their wisdom without asking for anything in return…':
      Mirone
      Pike R. Alpha
      RehabMan
      
    

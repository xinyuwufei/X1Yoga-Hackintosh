file3:=./sleepwatcher_2.2.tgz
file3_url:=http://www.bernhard-baehr.de

BINDIR=/usr/local/bin
MANDIR=/usr/local/share/man/man8
LDpath=/Library/LaunchDaemons/de.bernhard-baehr.sleepwatcher.plist

all:
	@echo "sleepwatcher | rmsleepwatcher"

sleepwatcher: $(file3) rc.sleep rc.wakeup
	tar zxvf $(file3) -C /tmp/
	install -d -m 755 $(BINDIR) $(MANDIR)
	install -m 755 /tmp/sleepwatcher_2.2/sleepwatcher $(BINDIR)/
	install -m 644 /tmp/sleepwatcher_2.2/sleepwatcher.8 $(MANDIR)/
	sudo install -o root -g wheel -m 644 \
		/tmp/sleepwatcher_2.2/config/de.bernhard-baehr.sleepwatcher-20compatibility.plist\
		$(LDpath)
	sudo install -o root -g wheel -m 755 rc.sleep /etc/rc.sleep
	sudo install -o root -g wheel -m 755 rc.wakeup /etc/rc.wakeup
	sudo sed -i "" 's|/usr/local/sbin|$(BINDIR)|' $(LDpath)
	sudo launchctl load -w -F $(LDpath)

rmsleepwatcher:
	-sudo launchctl unload $(LDpath)
	sudo rm -f $(LDpath)
	rm -f $(BINDIR)/sleepwatcher
	rm -f $(MANDIR)/sleepwatcher.8
	sudo rm -f /etc/rc.sleep /etc/rc.wakeup

SPOOLDIR = /var/spool

clean:
	

all:
	

install:
	mkdir -p "$(DESTDIR)/etc/najabo"
	cp najabo.conf "$(DESTDIR)/etc/najabo/"
	chmod 0600 "$(DESTDIR)/etc/najabo/najabo.conf"
	cp najabo.vcard "$(DESTDIR)/etc/najabo/"
	
	mkdir -p "$(DESTDIR)/usr/sbin"
	cp najabod "$(DESTDIR)/usr/sbin/"
	
	mkdir -p "$(DESTDIR)$(SPOOLDIR)/najabo"
	chmod +s "$(DESTDIR)$(SPOOLDIR)/najabo"


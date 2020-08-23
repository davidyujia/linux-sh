# Install RDP

## Ubuntu GUI commands

./install-rdp.sh

## comment these lines to

test -x /etc/X11/Xsession && exec /etc/X11/Xsession
exec /bin/sh /etc/X11/Xsession

## add these lines

startxfce4

## start rdp

<!-- sudo sed -i 's/3389/3390/g' /etc/xrdp/xrdp.ini -->

./rdp.sh
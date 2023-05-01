#!/bin/sh

case "$1" in
  start)
    echo "Loading bluetooth modules, attaching	adapter and completes configuration"
	modprobe hci_uart
	hciattach /dev/ttyS0 bcm43xx 921600 flow -
	hciconfig hci0 up
	echo "To run as server, following commands are run to set as low energy, make the device connectable, and then advertise"
	echo "Remove below commands if not intended to use as server"
	#/usr/bin/btmgmt -i hci0 le on
	#/usr/bin/btmgmt -i hci0 connectable on
	#/usr/bin/btmgmt -i hci0 advertising on

    ;;
    stop)
    ;;
  *)
    echo "Usage: $0 {start|stop}"
  exit 1
esac

exit 0

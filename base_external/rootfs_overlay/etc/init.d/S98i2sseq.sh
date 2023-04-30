#!/bin/sh

### BEGIN INIT INFO
# Provides:          i2s_seq
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: i2s_seq initscript
# Description:       Start or stop the i2s_seq daemon.
### END INIT INFO

case "$1" in
  start)
    echo "Starting i2s_seq"
    modprobe snd_soc_pcm5102a
    modprobe snd_soc_rpi_simple_soundcard
    modprobe snd_soc_bcm2835_i2s
    /usr/bin/python3 /usr/bin/i2s_sequencer.py &
    ;;
  stop)
    echo "Stopping i2s_seq"
    killall python3
    rmmod snd_soc_pcm5102a
    rmmod snd_soc_rpi_simple_soundcard
    rmmod snd_soc_bcm2835_i2s
    ;;
  *)
    echo "Usage: /etc/init.d/i2s_seq {start|stop}"
    exit 1
    ;;
esac

exit 0


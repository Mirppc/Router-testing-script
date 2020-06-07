#!/bin/bash

WGET="/usr/bin/wget"

$WGET -q --tries=20 --timeout=10 http://www.google.com -O   /tmp/google.idx &> /dev/null
if [ ! -s /tmp/google.idx ]
then
  echo "Not Connected..!"
else
  echo "Connected..!"
fi

#Alternitive one

/* 
DATE = date "+%m %d %I:%2M %p"
then
  CONN = "Not Connected..!"
  echo "$DATE $CONN"
else
  CONN = "Connected..!"
  echo "$DATE $CONN"
fi */

#Alertnitive two

#!/bin/bash
# Test for network conection
for interface in $(ls /sys/class/net/ | grep -v lo);
do
if [[ $(cat /sys/class/net/$interface/carrier) = 1 ]]; then ; echo "online"; fi
done

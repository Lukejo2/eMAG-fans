#!/bin/bash
IP=$1
USER=$2
PASS=$3

echo $IP $USER $PASS
ipmitool -I lanplus -H $IP -U $USER -P $PASS raw 0x3c 0x14 2 01
ipmitool -I lanplus -H $IP -U $USER -P $PASS raw 0x3c 0x14 3 10
ipmitool -I lanplus -H $IP -U $USER -P $PASS raw 0x3c 0x14 4 20
ipmitool -I lanplus -H $IP -U $USER -P $PASS raw 0x3c 0x14 5 20
ipmitool -I lanplus -H $IP -U $USER -P $PASS raw 0x3c 0x14 6 10
ipmitool -I lanplus -H $IP -U $USER -P $PASS raw 0x3c 0x14 7 01

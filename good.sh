#!/bin/bash

#DESCRIPTION: Class assignment wk11 second question
#AUTHOR: Oumar
#DATE: 11/12/2021

 rpm --eval ' your OS version is:'
sleep 3
cat /etc/*release |head -7 | tail -1 | awk '{print $1,$3,$4}'
sleep 3
 rpm --eval 'your memory size is:'
sleep 3
free -m | tail -2 | head -1 | awk '{print $1,$2}'
sleep 3
 rpm --eval 'your harddrive size is:'
sleep 3
lsblk
sleep 3
 rpm --eval 'your cpu size is:'
sleep 3
 lscpu |head -4 | tail -1 | awk '{print $2}'
sleep 3
 rpm --eval 'your kernel version is:'
sleep 3
uname -r
sleep 3
 rpm --eval 'your system bits is:'
sleep 3
getconf LONG_BIT
sleep 3

 rpm --eval 'your hostname is:'
sleep 3
hostname
sleep 3

 rpm --eval 'your ip address is:'
sleep 3
hostname -I | awk '{print $1}'
sleep 3

 rpm --eval 'searching for all open ports:'
sleep 3
netstat -tulnp
sleep 3
 rpm --eval 'your dns is:'
sleep 3
grep "nameserver" /etc/resolv.conf
sleep 3

 rpm --eval 'your manufacturer is:'
sleep 3
cat /sys/class/dmi/id/board_vendor
sleep 3

 rpm --eval 'your system is a'
sleep 3
dmidecode -t system | head -8 | tail -1 | awk '{print $3}'
sleep 3
 rpm --eval 'your mac address is:'
sleep 3
cat /sys/class/net/*/address | tail -1
sleep 3

if [ $? -gt 0 ]
then
  rpm --eval please run me on CentOs 
exit 1
rpm --eval '******THANK YOU SO MCUH FOR CARING FOR YOUR SYSTEM*****'

fi
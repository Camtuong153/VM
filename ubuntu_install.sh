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
echo next you paste code: curl -o xfce4.sh https://raw.githubusercontent.com/Camtuong153/VM/refs/heads/main/xfce_install.sh ; chmod +x xfce4.sh
proot-distro login ubuntu
rm -- "$0"
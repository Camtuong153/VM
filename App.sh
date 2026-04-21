clear
echo "The owner of these scripts will not be responsible for any unintended problems that may occur whether you edit these scripts or not. It will start in 10 seconds and you have agreed to this. To cancel press Ctrl + C."
sleep 10
clear

echo -e '\e[1;37mInstalling packages...\e[0m'
pkg update -y && pkg upgrade -y
pkg install x11-repo -y
pkg install termux-am termux-tools pulseaudio wget qemu-system-x86-64-headless p7zip -y
clear

echo -e '\e[1;37mChecking storage permissions...\e[0m'
if [ ! -d "/sdcard/Download" ]; then
    yes y | termux-setup-storage
fi
sleep 3
mkdir -p /storage/emulated/0/VM
clear

echo -e '\e[1;37mDownloading Windows 2000 from Mediafire...\e[0m'
wget -O a.7z https://download1584.mediafire.com/jstncndxmunu8gl/a.7z
clear

echo -e '\e[1;37mExtracting file...\e[0m'
7z x a.7z -o/storage/emulated/0/VM/
mv /storage/emulated/0/VM/*.qcow2 /storage/emulated/0/VM/W2k.qcow2 2>/dev/null
rm a.7z
clear

echo -e '\e[1;37mCreating start2k.sh...\e[0m'
echo "qemu-system-x86_64 -m 512M -cpu pentium3 -smp 1 -drive file=/storage/emulated/0/VM/W2k.qcow2,format=qcow2,if=ide -netdev user,id=n0 -device rtl8139,netdev=n0 -vga cirrus -device intel-hda -device hda-duplex -usb -device usb-tablet -display vnc=:2 -accel tcg,thread=multi" > start2k.sh
chmod +rwx start2k.sh

clear
echo -e '\e[1;37mDone!\e[0m'
echo -e '\e[1;37mUse this command to run: "./start2k.sh"\e[0m'
echo -e '\e[1;37m----------\e[0m'
echo -e '\e[1;37mThe necessary files are in the VM folder on your phone.\e[0m'

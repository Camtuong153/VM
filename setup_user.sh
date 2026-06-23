
mkdir -p /sdcard/VM
chmod +rwx /sdcard/VM

cat << eof > ~/startxp.sh
qemu-system-x86_64 -usb -device usb-tablet -device virtio-keyboard-device -cpu qemu32 -smp sockets=1,cores=1,threads=1 -m 512M -hda "/storage/emulated/0/VM/Windows XP x64/XP64VL.qcow2" -vga std -device ac97 -device rtl8139,netdev=n0 -netdev user,id=n0 -accel tcg,thread=multi -boot c -rtc clock=rt -monitor stdio -display sdl,gl=on -vnc :2 -name startxp -uuid 05e7c431-9513-d856-0276-7859640ce042 &
termux-open-url vnc://127.0.0.1:5900
eof
chmod +rwx ~/startxp.sh
wget -O /sdcard/VM/a.7z https://download2288.mediafire.com/ql3x0f1yhcxg7FTlsdUJbu9eNBXePqQV62394F5KppyknYDvPzKdMiFF3sxQqLJlL9DJMYofGJRa0vOFG4Qp-HPNU0kCTIeazh_7u85K0JcuY3etMAqdgp6vO528PVmA4NOWIqTJ9Bsyh14sbuS08EPb2DmPaXeg4n2-MYikneKNPQ/xuv54r2pf1lkgup/Windows+XP+x64.7z
pkg install 7z -y
pkg update ; pkg upgrade -y
7z x -o /sdcard/VM/a.7z /sdcard/VM
rm -rf /sdcard/VM/a.7z
echo lol > /sdcard/VM/lol.docx
rm -- "$0"
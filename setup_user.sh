
mkdir -p /sdcard/VM
chmod +rwx /sdcard/VM

cat << eof > ~/startxp.sh
qemu-system-x86_64 -usb -device usb-tablet -cpu qemu64 -smp sockets=1,cores=1,threads=1 -m 512M -hda /storage/emulated/0/VM/XP64VL.qcow2 -vga std -device ac97 -device rtl8139,netdev=n0 -netdev user,id=n0 -accel tcg,thread=multi -boot c -rtc clock=rt -monitor stdio -vnc :2 -name startxp -uuid 05e7c431-9513-d856-0276-7859640ce042 &
termux-open-url vnc://127.0.0.1:5902
eof
chmod +rwx ~/startxp.sh
wget -O /sdcard/VM/a.7z https://download2274.mediafire.com/8yd8ekhmghkgKDD1nU0TJh3yfgfScSD3xbeF0ASx15g1LWTK3QeTc7NXT4j6WBBGShU_YBY5MIolWKQAG245wNUpQfb7VjqWjHqN9aWnjI4uejB-N5hUNZb_hgYf7p0VEXP14P0FxREDXF2coyyZKLG03RcKW25MYYUQ6fX4VLBE6NI/xuv54r2pf1lkgup/Windows+XP+x64.7z
pkg install p7zip -y
pkg install qemu-system -y
pkg install qemu-system-x86_64-headless -y
pkg install qemu-utils -y
pkg update ; pkg upgrade -y
7z x /sdcard/VM/a.7z -o/sdcard/VM
rm -rf /sdcard/VM/a.7z
echo lol > /sdcard/VM/lol.docx
rm -- "$0"
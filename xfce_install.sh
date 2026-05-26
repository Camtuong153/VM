apt update && apt upgrade -y
apt install xfce4 xfce4-goodies vnc4server tightvncserver nano -y
read -p "install vnc or x11 (v/x): " O
if [ "$O" = "v" ]; then
    echo "⚠️:install Vnc"
    open-url https://play.google.com/store/apps/details?id=com.realvnc.viewer.android
elif [ "$O" = "x" ]; then
    echo "⚠️:install X11"
    open-url https://github.com/termux/termux-x11/releases/tag/nightly

else
    echo "lol ⛔️"
fi
rm -- "$0"

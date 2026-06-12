cat < EOF >> ~/.bashrc
clear
echo "hello user"
EOF
rm -rf ~/info/
rm -- "$0"
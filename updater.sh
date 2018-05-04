#!/bin/bash
clear
echo "██╗   ██╗██████╗ ██████╗  █████╗ ████████╗███████╗██████╗ ";
echo "██║   ██║██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝██╔══██╗";
echo "██║   ██║██████╔╝██║  ██║███████║   ██║   █████╗  ██████╔╝";
echo "██║   ██║██╔═══╝ ██║  ██║██╔══██║   ██║   ██╔══╝  ██╔══██╗";
echo "╚██████╔╝██║     ██████╔╝██║  ██║   ██║   ███████╗██║  ██║";
echo " ╚═════╝ ╚═╝     ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═╝  ╚═╝";
echo "                                M3-Sec.        V: 1.00    ";
echo "                                                          ";
echo "                                                          ";
echo "                                                          ";
echo "                                                          ";
echo "                                                          ";
echo "                                                          ";
echo "                                                          ";
echo "1     Update your machine"
echo "2     Full Upgrade of your machine"
echo "3     Update Script"
echo "4     Install Script"
echo "5     Exit"
read input
if [[ $input == 1 ]]; then
    clear
    apt-get update -y && apt-get upgrade -y && apt-get dist-upgrade -y
    clear
    echo "Done!"
elif [[ $input == 1 ]]; then
    clear
    apt-get update -y && apt-get full-upgrade -y
    clear
    echo "Done!"
elif [[ $input == 3 ]]; then 
    clear
    cd
    rm -rf Updater/
    git clone https://github.com/M3-SEC/Updater
    cd Updater
    clear
elif [[ $input == 4 ]]; then
    echo "Installing"
    cd
    echo "" >> .bashrc
    echo "alias Updater='bash ~/Updater/updater.sh'" >> .bashrc
    touch .bashrc
    clear
elif [[ $input == 5 ]]; then
    echo "Thanks for using this tool ;)"
    exit
else 
    clear 
    echo "What?"
    echo ""
    echo ""
    echo ""
fi

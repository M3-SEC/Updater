#!/bin/bash
echo "██╗   ██╗██████╗ ██████╗  █████╗ ████████╗███████╗██████╗ ";
echo "██║   ██║██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝██╔══██╗";
echo "██║   ██║██████╔╝██║  ██║███████║   ██║   █████╗  ██████╔╝";
echo "██║   ██║██╔═══╝ ██║  ██║██╔══██║   ██║   ██╔══╝  ██╔══██╗";
echo "╚██████╔╝██║     ██████╔╝██║  ██║   ██║   ███████╗██║  ██║";
echo " ╚═════╝ ╚═╝     ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═╝  ╚═╝";
echo "                                M3-Sec.        V: 0.04    ";
echo "                                                          ";
echo "                                                          ";
echo "                                                          ";
echo "                                                          ";
echo "                                                          ";
echo "                                                          ";
echo "                                                          ";
echo "1     Update your machine"
echo "2     Update Script"
echo "3     Install Script"
echo "4     Exit"
read input
if [[ $input == 1 ]]; then
    clear
    apt-get update -y && apt-get upgrade -y && apt-get dist-upgrade -y
    clear
    echo "Done!"
    bash  /root/Updater/updater.sh
elif [[ $input == 2 ]]; then 
    clear
    cd
    rm -rf Updater/
    git clone https://github.com/M3-SEC/Updater
    cd Updater
    clear
    bash /root/Updater/updater.sh
elif [[ $input == 3 ]]; then
    echo "Installing"
    cd
    echo "" >> .bashrc
    echo "alias Updater='bash /root/Updater/updater.sh'" >> .bashrc
    echo "Now, please restart your Terminal"
    exit
elif [[ $input == 4 ]]; then
    echo "Thanks for using this tool ;)"
    exit
else 
    clear 
    echo "What?"
    echo ""
    echo ""
    echo ""
    bash /root/Updater/updater.sh
fi

#!/bin/sh


red=`echo -en "\e[31m"`
green=`echo -en "\e[32m"`
purple=`echo -en "\e[35m"`
default=`echo -en "\e[39m"`
 
clear

echo "${purple}    ███        ▄████████    ▄████████   ▄▄▄▄███▄▄▄▄   ███    █▄  ▀████    ▐████▀ "
echo "${purple}▀█████████▄   ███    ███   ███    ███ ▄██▀▀▀███▀▀▀██▄ ███    ███   ███▌   ████▀  "
echo "${purple}   ▀███▀▀██   ███    █▀    ███    ███ ███   ███   ███ ███    ███    ███  ▐███    "
echo "${purple}    ███   ▀  ▄███▄▄▄      ▄███▄▄▄▄██▀ ███   ███   ███ ███    ███    ▀███▄███▀    "
echo "${purple}    ███     ▀▀███▀▀▀     ▀▀███▀▀▀▀▀   ███   ███   ███ ███    ███    ████▀██▄     "
echo "${purple}    ███       ███    █▄  ▀███████████ ███   ███   ███ ███    ███   ▐███  ▀███    "
echo "${purple}    ███       ███    ███   ███    ███ ███   ███   ███ ███    ███  ▄███     ███▄  "
echo "${purple}   ▄████▀     ██████████   ███    ███  ▀█   ███   █▀  ████████▀  ████       ███▄ "
echo "${purple}                           ███    ███                                           ${green}" 
printf "Do you want to install all the tools?\n[Y/N]"

read choice

echo "${default}"

case "$choice" in
    "y" | "Y")
            apt update && apt upgrade
            pkg install clang && pkg install git
            pkg install python2
            git clone https://github.com/saintmalik/Ethicaltools.git
            cd Ethicaltools
            chmod +x smtools.py
            python2 smtools.py
            echo "${green}Installation succesful !${default}"
     ;;
    "n" | "N")
            echo "${red}Bye !${default}"
            exit ;;
    *)
        echo "${red}Something unexpected happened"

esac

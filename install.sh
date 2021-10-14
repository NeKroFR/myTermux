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
echo "${purple}                           ███    ███                                           ${green}\n" 
printf "Do you want to install all the tools?\n[Y/N]"

read choice

echo "${default}"

case "$choice" in
    "y" | "Y")
            echo "${green}Installation succesful !${default}"
     ;;
    "n" | "N")
        exit ;;
            echo "${rd}Bye !${default}"
    *)
        echo "${red}Something unexpected happened"

esac

#!/bin/bash

#run the info script
. ./info.sh || source info.sh

function help() {
    echo -e "\n${inverted}${bold}${light_blue}USAGE:${normal}"
    echo '-------'
    echo -e "${underline}${light_green}./main.sh [option]${normal}"
    #echo -e "${underline}${light_green}pi-apps [option]${normal}"
    echo -e "\n${inverted}${bold}${light_blue}Available options:${normal}"
    echo '-------------------'
    echo -e "${dark_grey_background}install '[appname]'${normal} - install a precompiled version of any app available on berryapps (case sensitive).\n"
    echo -e "${dark_grey_background}remove '[appname]'${normal} - uninstall any app available in berryapps (case sensitive).\n"
    echo -e "${dark_grey_background}list-all${normal} - print all apps available in berryapps.\n"
    echo -e "${dark_grey_background}list-installed${normal} - print all installed apps.\n"
    echo -e "${dark_grey_background}search '[appname]'${normal} - search all apps available in berryapps (case sensitive).\n"
    echo -e "${dark_grey_background}update-all${normal} - update berryapps.\n"
    #echo -e "${dark_grey_background}update${normal} - update all apps.\n"
    #echo -e "${dark_grey_background}website '[appname]'${normal} - print the website of any app in pi-apps.\n"
    #echo -e "${dark_grey_background}gui${normal} - launch the pi-apps GUI.\n"
    echo '===================='

    #echo -e "\n${cyan}${bold}if you don't supply any option or the option you entered is invalid,"   
    #echo -e "pi-apps will start with the GUI${normal}" 
}



##where things actually happen##

if [[ "$1" == "help" ]] || [[ "$1" == "-help" ]] || [[ "$1" == "--help" ]] || [[ "$1" == "-h" ]]; then
    #display help
    help
elif [[ "$1" == "compile" ]]; then
    ./"$BERRY_DIR/apps/$2/compile" || error "No such app!"
fi

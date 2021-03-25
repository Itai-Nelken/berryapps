#!/bin/bash

#variables
BERRY_DIR="$HOME/berryapps"
RPI_MODEL="$(grep Raspberry* /proc/cpuinfo)"

#text formatting variables
red="\e[31m"
green="\e[32m"
yellow="\e[33m"
blue="\e[34m"
light_red="\e[91m"
light_green="\e[92m"
light_yellow="\e[93m"
light_blue="\e[94m"
cyan="\e[36m"
dark_grey_background="\e[100m"
bold="\e[1m"
underline="\e[4m"
inverted="\e[7m"
normal="\e[0m"

#functions
function error() {
  echo -e "${red}$1${normal}"
  exit 1
}
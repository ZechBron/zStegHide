#!/bin/bash
echo -e "\e[32m    _____ __             __  ___     __   "
echo -e "   / ___// /____  ____ _/ / / (_)___/ /__ "
echo -e "   \__ \/ __/ _ \/ __ '/ /_/ / / __  / _ \ "
echo -e "  ___/ / /_/  __/ /_/ / __  / / /_/ /  __/ "
echo -e " /____/\__/\___/\__, /_/ /_/_/\__,_/\___/ "
echo -e "               /____/  \e[0m     "
echo -e "\e[34m\"If you are too lazy to type a single command,"
echo -e " Allow my program to do it for you.\"\e[0m"
echo -e " -\e[90m(https://github.com/ZechBron)\e[0m"
# 94 light blue
# 90 gray
echo -e "\n"

echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mPlease Choose:\e[0m\e[34m"
echo -e " 1. Embed a file in an image (jpeg, au, bmp and wav)"
echo -e " 2. Extract an image"
echo -e " 3. View Info of an image"
read zCh


if [ $zCh = 1 ]; then
   echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mEnter an imgage or file: \e[0m\e[34m"
   read img
   echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mEnter file you want to embed:\e[0m\e[34m"
   read file
   echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mEnter Passkey:\e[0m\e[34m"
   read pass
   echo -e "\e[96m"
   steghide embed -cf $img -ef $file -p "$pass"
   echo -e "\e[0m"

elif [ $zCh = 2 ]; then
   echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mEnter image or file you want to extract: \e[0m\e[34m"
   read img
   echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mEnter Passkey:\e[0m\e[34m"
   read pass
   echo -e "\e[96m"
   steghide extract -sf $img -p "$pass"
   echo -e "\e[0m"

elif [ $zCh = 3 ]; then
   echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mEnter image or file you want to view:\e[0m\e[34m"
   read img
   echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mEnter Passkey:\e[0m\e[34m"
   read pass
   echo -e "\e[96m"
   steghide info $img -p "$pass"
   echo -e "\e[0m"

else
   clear
   echo -e "\e[91mWrong input. Try again.\n \e[0m"
   bash steghide.sh
fi

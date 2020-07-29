#!bin/bash
      #The following packages will be use to meet the requirement of the tools:-
#updating and upgrading the packages
termux-setup-storage
pkg update -yq --silent
pkg upgrade -yq --silent
#git is require to clone the tools it will be installed silently
pkg install git -yq --silent
# wget will be installed now!!
pkg install wget -yq --silent
     #the pakage python will be installed, python is language used to run the script
#installing php curl openssh grep 
pkg install python php curl openssh grep -y
pkg install python2 -y
pkg install ncurses-utils -yq --silent
pkg install figlet -yq --silent
#Installing ruby for parsing
pkg install ruby -yq --silent
#Installing lolcat using ruby gems
pip install lolcat 
gem install lolcat 

# HiddenEye the most used Phishing tools ie use and trending
# Tools developed by DarkSecDevelopers
# special thanks to DarkSecDevelopers
    #creatw a phishing page easily

git clone https://github.com/DarkSecDevelopers/HiddenEye.git
chmod 777 HiddenEye
pip install requests
mv HiddenEye $HOME


# TBomb
# Best bombing tools in bash script
# Tools created by TheSpeedX

git clone https://github.com/TheSpeedX/TBomb
mv TBomb $HOME

# Zphisher
# tools developed htr-tech
git clone https://github.com/htr-tech/zphisher.git
mv zphisher $HOME


#ipdrone 
#Tools of noob-hackers
#most advanced ip tracing tools use in bash script

git clone https://github.com/noob-hackers/ipdrone.git
mv ipdrone $HOME

#saydog-framework
#tools created by saydog
git clone https://github.com/saydog/saydog-framework.git
cd saydog-framework
chmod +x install
cd ..
mv saydog-framework $HOME


#nex phisher
# tools created by htr-tech
git clone https://github.com/htr-tech/nexphisher.git
mv nexphisher $HOME
cd nexphisher
bash tmux_setup
cd $HOME
cd HiddenEye
python3 -m pip install -r requirements.txt

cd $HOME
cd TBomb
chmod +x TBomb.sh
cd $HOME

# This script prints a message about channel subscription
# If subscribe @ thankyou else @  please subscribe the channel
tput clear
tput cup 3 30
echo -e "\e[44m Like \e[41m Subscribe \e[m"
tput cup 6 30
echo -e "\x1b[42m BHAVIK TUTORIALS \x1b[m"
tput cup 9 0
echo -en "\e[93m what is your name : \e[m"
read answer
tput cup 12 22
echo -e "\e[104m hello! Have a nice day!! $answer! \e[m"
tput cup 15 0
echo -en "\e[93m Have you subscribe our channel (y/n)? \e[m "
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
tput cup 17 21
    echo -e "\e[42m Thankyou for subscribing our channel \e[m"
else
tput cup 17 23
    echo -e "\x1b[41m Please subsrcibe our channel \x1b[m"
fi
tput cup 20 0
figlet -f slant "Bhavik Tutorials" |lolcat
echo " "
echo " "





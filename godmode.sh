#!/usr/bin/env sh

# Create separate directory for my repositor
decoration() {
        apt-get update -yq --silent
        apt-get install gnupg -yq --silent
	pkg install python -y
	pkg install ncurses-utils -y
	pkg install figlet -y
	pkg install ruby -y
	pip install lolcat 
	gem install lolcat
        mkdir -p ~/.termux
        for i in colors.properties termux.properties font.ttf; do
                wget -q https://github.com/Hax4us/TermuxBlack/raw/master/style/$i -O ~/.termux/$i
        done                                                                                                                                #rm -r $PREFIX/etc/motd
        #echo "toilet -F metal -F border -f future termux black" >> $PREFIX/etc/bash.bashrc
        cp $PREFIX/etc/bash.bashrc $PREFIX/etc/bash.bashrc.bk
        sed -i s:PS1.*:"PS1=\'\\\\[\\\\e\[1\;34m\\\\] GodMode > \\\[\\\e[0;37m\\\\]\'": $PREFIX/etc/bash.bashrc
}

addrepo() {
        # Add repo in separate file
        mkdir -p $PREFIX/etc/apt/sources.list.d && printf "deb https://hax4us.github.io/TermuxBlack/ termuxblack main" > $PREFIX/etc
/apt/sources.list.d/termuxblack.list

        # Add gpg public key
        wget -q https://hax4us.github.io/TermuxBlack/termuxblack.key -O termuxblack.key && apt-key add termuxblack.key

        # just update
        apt-get update -yq --silent
}

echo "[*] Installing TermuXBlacK ..."
decoration
addrepo
echo "[*] Finished :)"
# Now trigger broadcast to make changes visible
am broadcast --user 0 -a com.termux.app.reload_style com.termux > /dev/null
echo "[*] Now open new session & enjoy"

rm ~/.termux/colors.properties

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
echo -e "\e[104m hello! Open A New Session! $answer! \e[m"
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

#!/data/data/com.termux/files/usr/bin/bash
#Downloading the req dependencies to run a script without error
apt-get update -yq --silent
apt-get upgrade -y
apt-get install python -yq --silent
apt-get install ruby -y
pip install install lolcat
gem install lolcat 

mv megapackage /data/data/com.termux/files/usr/bin
echo

echo -en "\e[93m Do you wish to see a practical video on it (y/n)? \e[m "
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
am start -a android.intent.action.VIEW -d https://www.youtube.com/watch?v=JCIfMsObDv8 
 cd $HOME 
 rm -rf Termux-Megapackage
else
    echo 
    exit
fi

cd $HOME
rm -rf Termux-Megapackage
echo

cd $HOME
exec bash

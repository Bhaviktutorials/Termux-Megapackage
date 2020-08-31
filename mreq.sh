#!/data/data/com.termux/files/usr/bin/bash
#Downloading the req dependencies to run a script without error
apt-get update -yq --silent
apt-get upgrade -y
apt-get install python -y
apt-get install ruby -y
pip install install lolcat
gem install lolcat 

mv megapackage /data/data/com.termux/files/usr/bin
echo

echo -en "\e[92m Do you wish to see a practical video on it (y/n)? \e[m "
read answer
   if [ "$answer" != "${answer#[Yy]}" ] ;then
        am start -a android.intent.action.VIEW -d https://www.youtube.com/watch?v=JCIfMsObDv8 
  else
	echo
   fi

cd $HOME
rm -rf Termux-Megapackage
echo
cd $HOME
exec bash

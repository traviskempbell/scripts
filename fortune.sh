#!/bin/sh

unamestr=`uname`
if [ "$unamestr" = "Darwin" ]; then
    brew install fortune
    brew install cowsay
    gem install lolcat
else
    apt-get install fortune cowsay lolcat
fi

while [ true ]; do
    clear
    fortune | cowsay -f dragon-and-cow | lolcat
    sleep 60
done

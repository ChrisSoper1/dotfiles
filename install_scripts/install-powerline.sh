#!/bin/bash
#git clone http://github.com/powerline/powerline ~/.local/share/powerline
#pip install powerline
mkdir -p ~/.fonts/
mkdir -p ~/.config/fontconfig/conf.d/
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf -O ~/.fonts/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf -O ~/.config/fontconfig/conf.d/10-powerline-symbols.conf

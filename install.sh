#!/bin/bash

# install lautex
sudo apt install texlive-luatex -y

# install fonts
mkdir -p $HOME/.fonts
cp ./fonts/technika/* $HOME/.fonts/ 
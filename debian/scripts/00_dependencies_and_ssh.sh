#! /bin/env bash

clear

# Aplicativos importantes para desenvolvedores

sudo apt install    curl                \
                    wget                \
                    apt-transport-https \
                    dirmngr             \
                    build-essential     \
                    default-jdk         \
                    exuberant-ctags     \
                    ncurses-term        \
                    fontconfig          \
                    silversearcher-ag   \
                    imagemagick         \
                    libmagickwand-dev   \
                    software-properties-common -y


# SSH Key Generetor
if [ ! -d ~/.ssh/id_ed25519 ]
    then
    ssh-keygen -o -a 100 -t ed25519 -f ~/.ssh/id_ed25519 -C "tascoli@gmail.com"
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_ed25519
else
    echo " "
    echo "Você já instalou suas chaves SSH neste computador."
    echo " "
fi

exit

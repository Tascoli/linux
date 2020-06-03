#! /bin/env bash


# Dependencias e GIT
sudo apt install    libcurl4-gnutls-dev \
                    libexpat1-dev       \
                    gettext             \
                    libz-dev            \
                    libssl-dev          \
                    git -y

if [ ! -f ~/.gitconfig ]; then
    touch ~/.gitconfig
fi

# echo -ne '\n' => Simula o enter ao final da linha.

echo -ne '\n' | git config --global user.name "Tadeu Ascoli";
echo -ne '\n' | git config --global user.email "tascoli@gmail.com"
echo -ne '\n' | git config --global core.editor vim
echo -ne '\n' | git config --global alias.ci commit
echo -ne '\n' | git config --global alias.st status
echo -ne '\n' | git config --global alias.co checkout
echo -ne '\n' | git config --global alias.br branch
echo -ne '\n' | git config --global alias.hist 'log --graph --oneline --decorate'
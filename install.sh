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

if [ ! -d ~/linux ]; then

	echo "Deseja clonar o repositorio linux?[Y/n] "; read resp

	if [ ${resp^^} = "Y" ]; then
		echo -ne '\n' | git clone https://github.com/Tascoli/linux.git
	else
		echo "OK!! O repositorio nao foi clonado."
	fi
fi



exit


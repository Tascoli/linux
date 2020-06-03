#! /bin/env bash

clear

sudo apt install gnome-tweak-tool                  \
                 gnome-shell                       \
                 gnome-shell-extensions            \
                 gnome-shell-extension-dashtodock  -y

# GNOME CUSTOMIZE - Command

# Configurations

# Mouse and Touchpad
gsettings set org.gnome.desktop.peripherals.touchpad send-events 'enabled'
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll false
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
gsettings set org.gnome.desktop.peripherals.touchpad tap-and-drag true
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll false
gsettings set org.gnome.desktop.peripherals.touchpad two-finger-scrolling-enabled true
gsettings set org.gnome.desktop.peripherals.touchpad speed 0.60
gsettings set org.gnome.desktop.peripherals.touchpad disable-while-typing true

# Region and Language
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us+mac'),
('xkb', 'br')]"

# Tweak Tools

# Window
gsettings set org.gnome.desktop.wm.preferences button-layout ':minimize,maximize,close'

# Extensions
gsettings set org.gnome.shell enabled-extensions "['user-theme@gnome-shell-extensions.gcampax.github.com', 'dash-to-dock@micxgx.gmail.com']"

# Mouse
gsettings set org.gnome.desktop.peripherals.touchpad click-method 'areas'

# Dash to dock
gsettings set org.gnome.shell.extensions.dash-to-dock autohide false
gsettings set org.gnome.shell.extensions.dash-to-dock autohide-in-fullscreen false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed true
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 18
gsettings set org.gnome.shell.extensions.dash-to-dock show-show-apps-button false
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'FIXED'
gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.0


# Flat Remix ICON

my_pwd=$pwd
if [ ! -d /usr/share/icons/Flat-Remix-Blue ]; then
    cd $HOME;
    git clone https://github.com/daniruiz/flat-remix.git flat_icons && \
    cd flat_icons && \
    sudo make install && \
    cd $HOME
    sudo rm -r flat_icons;
    cd $my_pwd
    gsettings set  org.gnome.desktop.interface icon-theme 'Flat-Remix-Blue-Dark'
    echo "Flat Remix ICONS foi instalado com sucesso!"
else
    echo "Flat Remix ICONS já está instalado."
fi

# Flat Remix GNOME

if [ ! -d /usr/share/themes/Flat-Remix ]; then
    cd $HOME;
    git clone --branch 20191116 https://github.com/daniruiz/flat-remix-gnome.git flat_gnome && \
    cd flat_gnome && \
    sudo make && sudo make install && \
    cd $HOME
    sudo rm -r flat_gnome;
    cd $my_pwd
    gsettings set org.gnome.shell.extensions.user-theme name "Flat-Remix-Dark"
    echo "Flat Remix GNOME foi instalado com sucesso!"
else
    echo "Flat Remix GNOME já está instalado."
fi

# Arc Theme Shell

sudo apt install arc-theme -y && gsettings set org.gnome.desktop.interface gtk-theme 'Arc-Dark'

# Fontes

sudo apt install    fonts-powerline             \
                    fonts-hack                  \
                    fonts-hack-otf              \
                    fonts-hack-ttf              \
                    fonts-hack-web              \
                    ttf-mscorefonts-installer  -y


gsettings set org.gnome.desktop.interface monospace-font-name 'Hack 11'
gsettings set org.gnome.desktop.interface document-font-name 'Hack 11'

# org.gnome.login-screen



### OhMyZSH

sudo apt install zsh -y
cd /etc/
sudo sed -i 's/bash/zsh/' passwd # Para as alterações terem efeito é necessário encerrar a sessão.

cd $HOME

if [ ! -d /home/$USER/.oh-my-zsh ]; then
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
    echo "Oh My ZSH já está instalado!!"
fi

sed -i '1,12s/robbyrussell/af-magic/' .zshrc

source .zshrc

# Adicionar TMUX


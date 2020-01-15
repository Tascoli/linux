# Personalização do Gnome

Antes de mais nada devemos instalar os seguintes pacotes:

	sudo apt install gnome-tweak-tool gnome-shell gnome-shell-extensions gnome-shell-extension-dashtodock

## Em configurações:

- **Mouse**:

    - Habilitar click ao tocar
    - Desmarcar rolagem natural 

- **Tela**:

    - Habilitar luz noturna
            
## Em Ajustes(Tweak-tools):

- **Barra de título da janela**: 
	
	- Habilitar minimizar e maximizar.

- **Teclado e Mouse**: 
    
    - Mudar emulação do mouse para área.

- **Teclado**: 

    - Adicionar Atalho parao terminal 
    
        > Nome: Terminal,

        > Comando: gnome-terminal,

        > Atalho: Ctrl + Alt + t;

- **Fontes**:

    - Títulos da janela 
        - Hack Regular

Obs: Esta fonte deve ser intalada. Mais adiante será abordado como instalar.

### Extenções do Shell

- **Dash-to-dock**:

    - Comportamento > Ação do Click > Minimize or overview

    - Aparência > Customize windows counter indicator > Dots

    - Cor para os Dots do Dash to Dock
        - #07FFF4
        - considerar outras

#### Mundando a posição dos botões:

A esquerda:

	gsettings set org.gnome.desktop.wm.preferences button-layout 'minimize,maximize,close:'

A direita:

	gsettings set org.gnome.desktop.wm.preferences button-layout ':minimize,maximize,close'

## Extensões favoritas para o GNOME Shell
Para baixar estas extensões é necessário instalar a extensão "***Gnome Extension***" no Firefox ou Google Chrome.

1. Places Status Indicator
2. TopIcons Plus
3. Dash to Dock
4. Trash
5. Sound Input & Output Device Chooser
6. Removable Drive Menu
7. Lock Keys


## Pre-visualizacao (semelhante ao MacOS)

	sudo apt inastall gnome-sushi

# Themes

#### Complete Themes

- [Flat Remix Gnome](https://drasite.com/flat-remix-gnome)

- [Materia Github](https://github.com/nana-4/materia-theme) ou:

    sudo apt install materia-gtk-theme

- Arc Theme

    sudo apt install arc-theme 

### GTK 

- [Plane Gtk-3.20+](https://www.gnome-look.org/p/1181106/)

- [Obsidian(GTK)](https://github.com/madmaxms/theme-obsidian-2)

- [Gnome-OX-II-2.6](https://www.opendesktop.org/c/1488138467)

### Shell

- X-Arc-Danger(Shell)

- Gnome-OX-IV-Dark-Shell


### Icones

- [Tela Icon](https://github.com/vinceliuice/Tela-icon-theme)

- [Flat Remix Icon Theme](https://github.com/daniruiz/flat-remix)

### OhMyZSH

```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Fontes

##### Fontes para OhMyZSH

```
sudo apt install fonts-powerline 
```

##### Fonte Akita

```
sudo apt install fonts-hack-ttf
```

##### Instalando Fontes da Microsoft

```bash
apt-get install ttf-mscorefonts-installer
```


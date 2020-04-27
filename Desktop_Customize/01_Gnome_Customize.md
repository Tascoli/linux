# Personalização do Gnome

Antes de mais nada devemos instalar os seguintes pacotes:

```bash
sudo apt install gnome-tweak-tool gnome-shell gnome-shell-extensions gnome-shell-extension-dashtodock
```

## Em configurações:

- **Mouse**:

    - Habilitar click ao tocar
    - Desmarcar rolagem natural

- **Tela**:

    - Habilitar luz noturna

- **Região e idioma**:

	- Acrescentar Teclado -> Inglês(Macintoch)

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

    - Comportamento > Ação do Click > Aumentar Janela

    - Aparência > Customize windows counter indicator > Dots

    - Cor para os Dots do Dash to Dock
        - #07FFF4
        - considerar outras

#### Mundando a posição dos botões:

_A esquerda_:

```bash
gsettings set org.gnome.desktop.wm.preferences button-layout 'minimize,maximize,close:'
```

_A direita_:

```bash
gsettings set org.gnome.desktop.wm.preferences button-layout ':minimize,maximize,close'
```

### Extensões favoritas para o GNOME Shell
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

### My Setup

[Flat Remix Icons](https://github.com/daniruiz/flat-remix)

```bash
git clone https://github.com/daniruiz/flat-remix.git flat_icons && cd flat_icons && sudo make install &&
gsettings set  org.gnome.desktop.interface icon-theme 'Flat-Remix-Blue-Dark'
```

[Flat-remix-gnome](https://github.com/daniruiz/flat-remix-gnome)

```bash
git clone --branch 20191116 https://github.com/daniruiz/flat-remix-gnome.git && cd flat-remix-gnome && sudo make && sudo make install && gsettings set org.gnome.shell.extensions.user-theme name "Flat-Remix-Dark"
```
[Arc Theme](https://github.com/horst3180/arc-theme)

```bash
sudo apt install arc-theme && gsettings set org.gnome.desktop.interface gtk-theme 'Arc-Dark'
```


### Other Options



- [Materia Github](https://github.com/nana-4/materia-theme) ou:

    sudo apt install materia-gtk-theme

#### GTK


- [Plane Gtk-3.20+](https://www.gnome-look.org/p/1181106/)

- [Obsidian(GTK)](https://github.com/madmaxms/theme-obsidian-2)

- [Gnome-OX-II-2.6](https://www.opendesktop.org/c/1488138467)

#### Icones

- [Tela Icon](https://github.com/vinceliuice/Tela-icon-theme)

---

### OhMyZSH

```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

---

### Fontes

##### Fontes para OhMyZSH

```bash
sudo apt install fonts-powerline
```

##### Fonte Akita

```bash
sudo apt install fonts-hack-ttf
```

##### Instalando Fontes da Microsoft

```bash
sudo apt-get install ttf-mscorefonts-installer
```
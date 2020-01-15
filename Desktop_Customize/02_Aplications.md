# APLICATIVOS ESSENCIAIS

## Importante

```zsh
sudo apt install curl wget apt-transport-https dirmngr build-essential default-jdk libssl-dev exuberant-ctags ncurses-term fontconfig silversearcher-ag imagemagick libmagickwand-dev software-properties-common vim-gtk3 
```

### GIT

Dependencias
```zsh
sudo apt-get install libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev
```

```zsh
sudo apt-get install git
```

Após instalação executar:

    git config --global user.name "Tadeu Ascoli"
    git config --global user.email "tascoli@gmail.com"
    git config --global alias.ci commit
    git config --global alias.st status
    git config --global alias.co checkout
    git config --global alias.br branch

### Chaves SSH

```zsh
ssh-keygen -o -a 100 -t ed25519 -f ~/.ssh/id_ed25519 -C "tascoli@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```


### DROPBOX

```zsh
apt install nautilus-dropbox
```

### VSCODE

```zsh
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
```
```zsh
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
```
```zsh
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
```
```zsh
sudo apt-get update
```
```zsh
sudo apt-get install code # or code-insiders
```

### VIRTUALBOX


```zsh
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
```
```zsh
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
```
```zsh
sudo add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian bionic contrib"
```
```zsh
sudo apt update
```
```zsh
sudo apt install virtualbox<version>
```

### VAGRANT
Para obter a versão mais recente faça o download direto do [site oficial](https://www.vagrantup.com/downloads.html) ou:

	sudo apt install vagrant

### SPOTFY

```zsh
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90 2EBF997C15BDA244B6EBF5D84773BD5E130D1D45
```
```zsh
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
```
```zsh
sudo apt-get update
```
```zsh
sudo apt-get install spotify-client
```

## CHROME

```zsh
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
```
```zsh
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
```
```zsh
sudo apt-get update
```
```zsh
sudo apt-get install google-chrome-stable
```

### OPERA

```zsh
wget -q -O - https://deb.opera.com/archive.key | apt-key add -
```

```zsh
sh -c 'echo "deb https://deb.opera.com/opera-stable/ stable non-free" >> /etc/apt/sources.list.d/opera-stable.list'
```

```zsh
sudo apt update 
```

```zsh
sudo apt install opera-stable
```

# Debian Other Tools


## O Tilix é um avançado emulador de terminal GTK3.

	sudo apt inastall tilix
    
### Aplicativos CLI

## Instalar Speedtest-cli (verificar a velocidade da internet via terminal)

```zsh
wget https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py -O speedtest-cli
```
```zsh
chmod +x speedtest-cli
```
```zsh
sudo mv speedtest-cli /usr/bin/speedtest-cli
```

### Colordiff

Programa extremamente útil para comparar dois arquivos

	sudo apt install colordiff

### Suporte à extração e compressão de arquivos

Para poder criar e extrair arquivos compactados no seu Debian, execute o comando abaixo para instalar as ferramentas necessárias:

apt install arc arj cabextract lhasa p7zip p7zip-full p7zip-rar rar unrar unace unzip xz-utils zip

### Desconpactadores

```bash
apt-get install rar unrar p7zip*
```

### Pacotes Flatpak no Debian

Com o lançamento da versão 9 do Debian que tivemos na semana passada, o suporte a Flatpak pode ser instalado à partir do repositório oficial também.

	sudo su
	apt install flatpak

Para o Debian Jessie será necessário usar o repositório Backports.

### Pacotes Snap no Debian

No caso do Debian só funciona atualmente no Debian Sid, a versão estável ainda não tem suporte, quem sabe na próxima versão do Debian, né? Mas se você usa o Debian Sid, basta usar este comando:

$ sudo apt install snapd


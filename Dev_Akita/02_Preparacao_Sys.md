
# Preparando o Sistema

## Instalação dos temas

### Flat Remix 

[Site Flat Remix](https://drasite.com/flat-remix)

ou

[Flat Github](https://github.com/daniruiz/flat-remix)

### Materia Theme

[Materia Github](https://github.com/nana-4/materia-theme) ou:


    sudo apt install materia-gtk-theme

### Instalação Gnome-Tweaktool

    sudo apt-get intall gnome-tweak-tool

### Instalação de fontes

    sudo apt-get install fonts-hack-ttf

Modificar com Tweak Tool > Fontes > Títulos da janela > Hack Regular

## Programas Úteis

### Instalação do Git

    sudo apt install git 

Após instalação executar:

    git config --global user.name "NOME DO USUÁRIO"
    git config --global user.email "e-mail@usuario.com"

### Chaves SSH

Devemos usar o seguinte comando para gerar um par de chaves.

    ssh-keygen -o -a 100 -t ed25519 -f ~/.ssh/id_ed25519 -C "e-mail@usuario.com"

Verificar se temos ssh-agent:

    eval "$(ssh-agent -s)"

Adicionar sua chave no ssh-agent:

    ssh-add ~/.ssh/id_ed25519

Isto serve para que não precise digitar a passphrase todo vez que for logar em algum servidor.

### Silversearcher-ag  

Similar o grep porém mais rápido. 

Instalação:
    sudo apt install silversearcher-ag 

Para usar basta digitar **ag** a expressão desejada.
> ex: ps aux | ag bash

### Tmux

O tmux é um multiplexer de terminal para sistemas operacionais do tipo Unix. Permite que múltiplas sessões de terminal sejam acessadas simultaneamente em uma única janela. É útil para executar mais de um programa de linha de comando ao mesmo tempo.

    sudo apt install tmux

Alguns comandos:

```zsh

    tmux ls # Lista as sessões abertas
    tmux attach-session -t <num. da sessao deseja> # Muda para sessão escolhida.
    tmux kill-session -t <num. da sessao deseja> # Mata a sessão escolhida.
```

Para mais comando 

    man tmux 

### TILIX

O Tilix é um avançado emulador de terminal GTK3.

    sudo apt inastall tilix

### ZSH

O shell Z é um shell Unix que pode ser usado como um shell de login interativo e como um interpretador de comandos para scripts de shell. Zsh é um shell Bourne estendido com um grande número de melhorias, incluindo alguns recursos do Bash, ksh e tcsh.

    sudo apt install zsh

### Dotfiles

Antes da instalação dos dotfiles devemos instalar o ruby. Podemos utilizar o comando abaixo:

    sudo apt-get install ruby-full

Ou 

Fazer a instalação via ASDF

Depois de ter o Ruby instalado vamos aos dotfiles.

[Github SKWP/dotfiles](https://github.com/skwp/dotfiles)

Siga a instalação conforme a documentação do repositório.

### VIM 

O vim tem uma tela especial chamada lider, nesta configuração do SKWP, essa tecla é a " , ". 

Ex: 
- , t - Abre painel inferior;

Se digitarmos Ctrl + P temos o Pallet, a mesma funcionalidade do VSCODE com o Ctrl + Shift + P.

Basta digitar o que deseja para procurar.

Procure o arquivo: *yard-appearance.vim*

Agora vamos modificar a fonte para Hack 22.

Acrescente logo após gui font=Hack\ 12 e espaço

## Espaços de trabalho

Para enviar janelas para para espaços de trabalho:
    
    Super + Shift + PgDn

Navegar em espaços de trabalho 

    Super + PgUp ou PgDn

Dividir a tela ao meio 

    Super + Seta Dir/Esq

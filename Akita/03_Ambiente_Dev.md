# Ambiente de desenvolvimento

### Instalação das Dependências:

Instalar os seguintes programas:

    sudo apt install build-essential default-jdk libssl-dev exuberant-ctags ncurses-term fontconfig silversearcher-ag imagemagick libmagickwand-dev software-properties-common vim-gtk3 curl


#### build-essential

dpkg-dev: Ferramenta de desenvolvimento de pacotes Debian
g++ : Compilador C++ GNU
gcc : Compilador C da GNU
libc6-dev : Biblioteca C GNU: Arquivos de Desenvolvimento
libc6.1-dev: Biblioteca C GNU: Arquivos de Desenvolvimento
make : Utilitário para compilação direta

#### default-jdk

Este pacote de dependência aponta para o Java runtime ou o kit de desenvolvimento compatível recomendado para esta arquitetura, que é o openjdk-7-jdk para amd64.

#### libssl-dev

Este pacote é parte da implementação do projeto OpenSSL dos protocolos criptográficos SSL e TLS para comunicação segura pela Internet.

Contém as bibliotecas de desenvolvimento, arquivos de cabeçalho e páginas man para o libssl e o libcrypto.

#### exuberant-ctags

Ctags é uma ferramenta de programação que gera um arquivo de índice de nomes encontrados em arquivos fonte e de cabeçalho de várias linguagens de programação. Dependendo do idioma, funções, variáveis, membros de classes, macros e assim por diante podem ser indexados.

#### ncurses-term

As rotinas de biblioteca ncurses são um método independente de terminal para atualização de telas de caracteres com uma boa otimização.

Este pacote contém todas as numerosas definições de terminal não encontradas no pacote ncurses-base.

#### fontconfig

Fontconfig é uma biblioteca de configuração e personalização de fontes que não depende do X Window System. Ela foi projetada para achar fontes no sistema e selecioná-las de acordo com os requisitos especificados pelas aplicações.

#### silversearcher-ag

The Silver Searcher is grep-like program implemented by C. An attempt to make something better than ack-grep.

#### Imagemagick

Imagemagick é uma suite de aplicativos para edição não interativa de imagens, ou seja, com ele é possível editar, converter, combinar etc. imagens de dezenas de tipos.

#### libmagickwand-dev

This package included the static libraries needed to compile programs using MagickWand.

This is a transition package that depends on default quantum libmagickwand development files.

This package can safely be removed.

#### software-properties-common

This software provides an abstraction of the used apt repositories. It allows you to easily manage your distribution and independent software vendor software sources.

This package contains the common files for software-properties like the D-Bus backend.


#### CURL

O cURL é um projeto de software de computador que fornece uma biblioteca e uma ferramenta de linha de comando para transferir dados usando vários protocolos. 

## Instalação do ASDF

O ASDF é um framework de desenvolvimento que facilita demais a nossa vida. Através dele podemos gerenciar as versões de cada linguangem que temos no nosso sistema. 

Como o asdf é um framework cada linguagem é instalada via plugin.

Para instalação da ASDF-VM seguimos o tutorial direto do [site oficial](https://asdf-vm.com/#/core-manage-asdf-vm).

Além da instalação do ***ASDF*** devemos instalar as liguagens desejadas no forma de plugins. Estes são encotrados tanto no site oficial como no Github. 

Plugins sugeridos:

- asdf-ruby
- asdf-nodejs
- asdf-golang
- asdf-erlang
- asdf-elixir
- asdf-kotlin
- asdf-rust
- asdf-crystal
- asdf-python by Tato

Para listar os plugins:

    asdf plugin-list

Apos listar os plugins instalados. Podemos pedir para listar as versões disponiveis:

    asdf plugin-list-all <nome_da_linguagem>

Para instalar a linguagem e versão desejadas digitamos:

    asdf install <nome_linguagem> <versão>


Para usarmos a liguagem de forma GLOBAL digitamos:

    asdf global <nome_linguagem> <versão>    

Caso haja necessidade de usar uma versão mais antiga de forma LOCAL, exemplo um projeto antigo. Podemos instalar a versão desejada usando os comandos acima e a seguir definimos para uso local.

    asdf local <nome_linguagem> <versão>

OBS: A declaração de local deve ser feita dentro da pasta/diretorio do projeto. 

Para atualizar os plugins:

    asdf plugins-update --all

Para atualizar o ASDF:

    asdf update

Caso tenha instalado uma biblioteca de deveria aparecer no PATH como, Webpack(Javascript) ou YARN, e ela não aparecer no diretório *~/.asdf/shims*.

Digite o comando :

    asdf reshim <name>

Para atualizar.

## Alguns Serviços Adicionais

A maioria dos serviços abaixo inicia automaticamente com o sistema.

### Instalando PostgreSQL

PostgreSQL é um sistema gerenciador de banco de dados objeto relacional, desenvolvido como projeto de código aberto.

    sudo apt install postgresql-contrib postgresql-<version> postgresql-server-dev-<version> 

Configurando o POSTGRES:

    sudo su postgres 

    createuser --interactive

    createdb <nomeDoBanco>

Iniciando: 

    psql

### Redis

Redis é uma estrutura de dados do servidor. É open-source em rede, na memória, e armazena chaves com durabilidade opcional. 

    sudo apt install redis-server libhiredis-dev 

### MEMcached

Em computação, memcached é um sistema distribuído de cache em memória de propósitos gerais. É frequentemente utilizado para acelerar sites dinâmicos orientados a banco de dados, cacheando dados e objetos na RAM para reduzir o número de vezes que uma fonte de dados externa deve ser acessada.

    sudo apt install memcached libmemcached-dev

### MongoDB

Para instalação siga o passo-a-passo da documentação no [site oficial](https://docs.mongodb.com/manual/tutorial/).

Para iniciar ou parar  o servidor:

    sudo service mongod start or stop 

### Docker

Para instalação siga o passo-a-passo da documentação no [site oficial](https://docs.docker.com/install/linux/docker-ce/ubuntu/).

Depois a instalação o Docker cria um grupo de usuário chamado *docker*, devemos adicionar nosso usuário ao grupo.

Para issso:

    sudo usermod -aG docker $USER

Após devemos reiniciar o sistema

    reboot

Para testarmos se está tudo bem vamos baixar uma aplicação do docker chamada "Hello World"

    docker run hello-world

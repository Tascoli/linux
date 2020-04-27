# DEPOIS DE INSTALAR O DEBIAN

## Configurar SUDO

Se durante a intalação do debian você preencheu a senha do root, será necessário a configuração do sudo para os outros usuários. Para tal, siga os passos abaixo:

No terminal:

    su root

Depois:

    vim /etc/sudoers

Devemos adicionar logo abaixo do usuário root o nome_do_usuario e preencher os demais campos como o do root.

```bash
# root and users in group wheel can run anything on any machine as any user
 55 root        ALL = (ALL) ALL
 56 <usuário>   ALL = (ALL) ALL
```
## Editar os repositórios

- Abrir terminal
- Logar como root

```bash
vi /etc/apt/sources.list
```

- Editar lista de repositórios;
O site [Source Generator](https://debgen.simplylinux.ch/)  ajuda a montar lista de repositórios.</br>

O arquivo souce.list completo neste diretório.

#### Chave Pública - Erros possiveis

Erros ao instalar chaves públicas são comuns. Muito frenquentemente acotecem porque esquemos de instalar as chaves ulizando o usuário **root**. Dentre eles o mais frequente é o seguinte:

O erro é assim:

```bash
W: GPG error: http://ftp.br.debian.org etch Release: The following signatures couldn’t be verified because the public key is not available: NO_PUBKEY 9AA38DCD55BE302B
W: There is no public key available for the following key IDs: 9AA38DCD55BE302B
W: You may want to run apt-get update to correct these problems
```

Estes são os comandos para registrar a chave pública no terminal.

```bash
gpg --keyserver pgpkeys.mit.edu --recv-key < id >

gpg -a --export  < id > | sudo apt-key add
```

-> Onde  é o **id** que aparece na hora de instalar um pacote. Exemplo:  9AA38DCD55BE302B.



## Instalando Modulos Non-free em falta

Instalar os metapacotes "firmware-linux" e "firmware-linux-nonfree" no seu Debian, execute:

```bash
sudo apt-get install firmware-linux firmware-linux-nonfree
```
## Se sistema em Dual Boot

### Configuração do Relogio do sistema

O protocolo NTP (Network Time Protocol) é usado para manter certo o relógio do sistema, sincronizando-o a partir de uma rede de servidores NTP via Internet.

```bash
apt install ntpdate ntp-doc
```

Em primeiro lugar, verificar que o fuso horário do sistema está correctamente definido. Ver Fuso horário. Em seguida acertar o relógio do sistema, utilizando como referência um dos servidores NTP:

	root@server:~# ntpdate -u pool.ntp.org

Saida do comando acima:

	18 Jun 21:40:15 ntpdate[1144]: adjust time server 212.113.190.2 offset 0.008791





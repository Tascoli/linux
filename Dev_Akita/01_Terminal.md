
# Principais Comandos

pwd - *print work directory* 

df -  *Retorna os espaço usado no disco*

 | -  *Liga o standard input ao standard output*

> ex:

    ps aux | less

which \<comando\> - *mostra onde está o binário do programa*

Quando executamos um comando na linha de comando, ou SHELL,  podemos estar executando: 

- Binários do sistema
- Scripts com permissão de execução 
- Comandos do SHELL que estivermos usando(BASH, ZSH, TCSH, etc...)

df -h - *Lista os dispositivos montados*

ps -aux - *Lista todos os processos do sistema*

touch - *Cria "toca" um arquivo*
> ex:
```zsh
    touch a.txt # Cria o arquivo a.txt
````

echo - *Imprime (na tela ou arquivo) o conteudo de uma String*
> ex:
```zsh
    echo "Hello World" > a.txt
``` 
Nota: 

Um sinal de maior( > ) sobrescreve do inicio ao fim de um arquivo.

Dois sinais de maior ( >> ) adiciona o novo texto ao final do arquivo.

less - *Permite a leitura de arquivos e permite  navegar por conteudos longos*

grep - *Permite a busca de textos*
> ex: 
```zsh
    ps -aux | grep bash
````

awk - *Permite que filtremos a saida por colunas, por exemplo.*
> ex: 
```zsh
ps -aux | grep bash | awk '{ print $2 }'
````

O comando acima irá mostrar apenas a segunda coluna, ou seja o número do processo.

chmod - *Altera as permissões de um arquivo* 
> ex: 
```zsh
chmod +x a.sh
`````

Permite a execução do arquivo a.sh

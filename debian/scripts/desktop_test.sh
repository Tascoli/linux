#! /bin/bash

my_graph=$(echo $XDG_CURRENT_DESKTOP)
#echo Meu ambiente é o "${my_graph,,}"
#echo Meu ambiente é o "${my_graph}"
[[ "${my_graph^^}" == "GNOME" ]];

echo "$?"

if "$?" == "0"
then
    echo "Meu ambiente gráfico é o Gnome"
else
    echo "Meu ambiente NÃO é o Gnome"
fi

#! /bin/bash

if [ ! -d linux/ ]; then

	echo "Deseja clonar o repositorio linux?[Y/n] "; read resp

	if [ ${resp^^} = "Y" ]; then
		echo -ne '\n' | git clone https://github.com/Tascoli/linux.git
	else
		echo "OK!! O repositorio nao foi clonado."
	fi
fi

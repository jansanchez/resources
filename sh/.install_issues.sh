#!/bin/bash

HOME_PATH="~/";
FILE_NAME=".custom_functions";
RESOURCES_PATH="resources/";
SH_PATH="sh/";
CURRENT_PATH=${PWD#*/};
ZSHRC_FILE="includes_zshrc";
BASHRC_FILE="includes_bashrc";

echo " + Instalando la funcion 'issues'";

if [[ ! -f ~/.custom_functions ]]; then
	echo "   - Copiando el archivo '$FILE_NAME' hacia '$HOME_PATH'";
	#echo "   - cp /$CURRENT_PATH/$RESOURCES_PATH$SH_PATH$FILE_NAME" ~/$FILE_NAME;
	cp "/$CURRENT_PATH/$RESOURCES_PATH$SH_PATH$FILE_NAME" ~/$FILE_NAME;
	if [[ -f ~/.zshrc ]]; then
		#echo "   - cat /$CURRENT_PATH/$RESOURCES_PATH$SH_PATH$ZSHRC_FILE >> ~/.zshrc";
		echo "   - Enlazando las nuevas funciones al archivo '~/.zshrc'";
		cat /$CURRENT_PATH/$RESOURCES_PATH$SH_PATH$ZSHRC_FILE >> ~/.zshrc;
	else
		#echo "   - cat /$CURRENT_PATH/$RESOURCES_PATH$SH_PATH$BASHRC_FILE >> ~/.bashrc";
		echo "   - Enlazando las nuevas funciones al archivo '~/.bashrc'";
		cat /$CURRENT_PATH/$RESOURCES_PATH$SH_PATH$BASHRC_FILE >> ~/.bashrc;
	fi
else
	echo "   - El archivo '$FILE_NAME' ya se encuentra en: '~/$FILE_NAME'";
fi

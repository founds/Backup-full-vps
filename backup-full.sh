#!/bin/bash

#-*- ENCODING: UTF-8 -*-

# Script Bash para realizar una copia de seguridad completa del sistema.

# Variables

# Fecha.
FECHA=`date +"%d%m%Y"`

# Hostname
HOST=$(hostname|cut -f1 -d.)

# Directorio donde guardar la copia de seguridad
DIR_BK='/home/backups'

# Comprobar que exista el directorio de destino
if [ ! -d $DIR_BK ]
then
    mkdir $DIR_BK
fi

tar -cvpzf $DIR_BK/backup-$HOST-FULL-$FECHA.tar.gz --exclude=/home/backups --exclude=/mnt --exclude=/sys --exclude=dev/pts --exclude=/proc --exclude=/lost+found --one-file-system /



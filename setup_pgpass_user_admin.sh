#!/bin/bash

#Création du ficher si le Fichier .pgpass n'existe pas
[ -e ~/.pgpass ] && rtouch ~/.pgpass

#Changement droit du fichier
chmod 600 ~/.pgpass

#Ajout de la ligne permettant la connexion automatique
echo "*:*:*:admin:admin42" >> ~/.pgpass

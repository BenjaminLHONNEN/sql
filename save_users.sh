#!/bin/bash

#Creation d'un fichier temporaire absolue
sudo mkdir /tmp/save
#Changement des permission
sudo chmod 777 /tmp/save

#Execution du script SQL lié
sudo psql --username=admin -f ./sql/save_users.sql
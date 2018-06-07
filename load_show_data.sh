#!/bin/bash

#Création d'un fichier temporaire pour stocké les fichiers csv en chemin absolue
mkdir /tmp/csv
cp ./csv/* /tmp/csv/

#Execution du script SQL lié
sudo psql --username=admin -f ./sql/create_show_database.sql
#Execution du script SQL lié
sudo psql --username=admin -f ./sql/load_show_data.sql

#Suppresion du fichier temporaire
rm -rf /tmp/csv

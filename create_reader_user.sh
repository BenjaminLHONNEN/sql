#!/bin/bash

#Execution du script SQL lié
sudo psql --username=admin -f ./sql/create_reader_user.sql

#Lancement du script Vérifiant les droits de l'utilisateur
sudo psql --username=readonly -d shows -f ./sql/check_read_only.sql
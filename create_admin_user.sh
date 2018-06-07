#!/bin/bash

#Execution du script SQL lié
sudo -u postgres psql -f ./sql/create_admin_user.sql

#Vérification Que la connexion automatique marche
psql --username=admin


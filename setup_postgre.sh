#!/bin/bash
#Ajout de l'url de mise a jour et de download de postgresql au repertoire d'url d'apt
echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main" | sudo tee --append /etc/apt/sources.list.d/pgdg.list


wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
#Mise à jour machine
sudo apt-get update -y
sudo apt-get upgrade -y
#installation de postgresql
sudo apt-get install postgresql-10 -y --allow-unauthenticated

#Vérification de la version de postgresql et donc de l'install
psql -V

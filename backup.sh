#!/bin/bash

mkdir /tmp/backupPg
#Sauvegarde d'une backup de la bdd shows
pg_dump --username=admin shows -c -C -f /tmp/backupPg/backup_shows.sql

#Sauvegarde d'une backup de toute les BDD
pg_dumpall --username=admin -f /tmp/backupPg/all.sql

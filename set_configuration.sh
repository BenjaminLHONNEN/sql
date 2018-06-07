#!/bin/bash

#Execution du script SQL lié
sudo -u postgres psql -f ./sql/set_configuration.sql

#Reload du service Postgresql
sudo service postgresql restart
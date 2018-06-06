#!/bin/bash

mkdir /tmp/csv
cp ./csv/* /tmp/csv/

sudo psql --username=admin -f ./sql/create_show_database.sql
sudo psql --username=admin -f ./sql/load_show_data.sql

rm -rf /tmp/csv

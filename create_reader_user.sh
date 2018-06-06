#!/bin/bash

sudo psql --username=admin -f ./sql/create_reader_user.sql

touch ~/.pgpass
chmod 600 ~/.pgpass
echo "*:*:*:readonly:readonly" >> ~/.pgpass

sudo psql --username=readonly -d shows -f ./sql/check_read_only.sql
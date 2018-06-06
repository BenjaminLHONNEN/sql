#!/bin/bash

sudo mkdir /save
sudo psql --username=admin -f ./sql/save_users.sql
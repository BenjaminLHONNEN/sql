#!/bin/bash


psql --username=admin --set ON_ERROR_STOP=on -f /tmp/backupPg/backup_shows.sql

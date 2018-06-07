--Suppression s'il existe de la base de donnée admin et de l'utilisateur admin
DROP ROLE IF EXISTS admin;
DROP DATABASE IF EXISTS admin;

--Création utilisateur admin et de la bdd admin
CREATE ROLE admin LOGIN SUPERUSER PASSWORD 'admin42';
CREATE DATABASE admin;

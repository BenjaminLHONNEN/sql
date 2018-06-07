--Mise en place de l'heure de paris Europe
ALTER SYSTEM SET timezone = 'Europe/Paris';

--Changement de la plage d'addresse d'écoute
ALTER SYSTEM SET listen_addresses = '*';


--Reload de la conf personalisé
SELECT pg_reload_conf();

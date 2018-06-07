\c shows

-- suppression de l'utilisateur readonly et du groupe reader
DROP OWNED BY reader;
REVOKE ALL PRIVILEGES ON SCHEMA public FROM reader;
REVOKE ALL ON ALL TABLES IN SCHEMA public FROM reader;
REVOKE CONNECT ON DATABASE shows FROM reader;
REVOKE reader FROM readonly;
DROP ROLE IF EXISTS reader;
DROP ROLE IF EXISTS readonly;

--Creation groupe reader et utilisateur readonly
CREATE ROLE reader;
CREATE ROLE readonly LOGIN PASSWORD 'readonly';

--Authorisation de faire des select au groupe reader
GRANT SELECT ON ALL TABLES IN SCHEMA public TO reader;

--Donner les authorisations du groupe reader à l'utilisateur readonly
GRANT reader TO readonly;
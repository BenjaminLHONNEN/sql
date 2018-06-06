\c shows

ALTER TABLE "show" DISABLE TRIGGER ALL;
ALTER TABLE "episode" DISABLE TRIGGER ALL;
ALTER TABLE "user" DISABLE TRIGGER ALL;
ALTER TABLE "user_follow_show" DISABLE TRIGGER ALL;
ALTER TABLE "user_rate_show" DISABLE TRIGGER ALL;
ALTER TABLE "user_watch_episode" DISABLE TRIGGER ALL;

COPY show  FROM '/tmp/csv/show.csv' DELIMITER ',' CSV HEADER;
COPY episode FROM '/tmp/csv/episode.csv' DELIMITER ',' CSV HEADER;
COPY "user" FROM '/tmp/csv/user.csv' DELIMITER ',' CSV HEADER;
COPY user_follow_show FROM '/tmp/csv/user_follow_show.csv' DELIMITER ',' CSV HEADER;
COPY user_rate_show FROM '/tmp/csv/user_rate_show.csv' DELIMITER ',' CSV HEADER;
COPY user_watch_episode FROM '/tmp/csv/user_watch_episode.csv' DELIMITER ',' CSV HEADER;

ALTER TABLE "show" ENABLE TRIGGER ALL;
ALTER TABLE "episode" ENABLE TRIGGER ALL;
ALTER TABLE "user" ENABLE TRIGGER ALL;
ALTER TABLE "user_follow_show" ENABLE TRIGGER ALL;
ALTER TABLE "user_rate_show" ENABLE TRIGGER ALL;
ALTER TABLE "user_watch_episode" ENABLE TRIGGER ALL;

CREATE EXTENSION pgcrypto;
UPDATE "user" SET password=crypt(password,gen_salt('bf'));
SELECT user_id FROM "user" WHERE password = crypt('eosaut901', password);

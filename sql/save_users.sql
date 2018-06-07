\c shows

--Sauvagarde dans /tmp/save des différentes tables
COPY (SELECT * FROM "show") TO '/tmp/save/show_save.csv' WITH CSV DELIMITER ',';
COPY (SELECT * FROM "episode") TO '/tmp/save/episode_save.csv' WITH CSV DELIMITER ',';
COPY (SELECT * FROM "user") TO '/tmp/save/user_save.csv' WITH CSV DELIMITER ',';
COPY (SELECT * FROM "user_follow_show") TO '/tmp/save/user_follow_show_save.csv' WITH CSV DELIMITER ',';
COPY (SELECT * FROM "user_rate_show") TO '/tmp/save/user_rate_show_save.csv' WITH CSV DELIMITER ',';
COPY (SELECT * FROM "user_watch_episode") TO '/tmp/save/user_watch_episode_save.csv' WITH CSV DELIMITER ',';
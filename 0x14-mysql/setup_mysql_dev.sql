-- A script that creates MySQL user on web servers

-- create user if does not exist
-- user should should be identified with password projectcorrection280hbtn
CREATE USER IF NOT EXISTS 'holberton_user'@'localhost' IDENTIFIED BY 'projectcorrection280hbtn';

-- grants holberton_user permissions to check primary/replica status
GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost';
FLUSH PRIVILEGES;

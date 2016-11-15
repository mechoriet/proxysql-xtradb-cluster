# SQL monitor user
CREATE USER 'proxysqlmonitor'@'%' IDENTIFIED BY 'password';
GRANT ALL ON *.* TO 'proxysqlmonitor'@'%';

# SQL client user
CREATE USER 'proxysqlclient'@'%' IDENTIFIED BY 'password';
GRANT ALL ON *.* TO 'proxysqlclient'@'%';

CREATE DATABASE sbtest;

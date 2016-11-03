INSERT INTO mysql_servers (hostgroup_id, hostname, port) VALUES (0, 'mysql1', '3306');
INSERT INTO mysql_servers (hostgroup_id, hostname, port) VALUES (1, 'mysql2', '3306'), (1, 'mysql3', '3306');

INSERT INTO mysql_users (username, password) VALUES ('proxysqlclient', 'password');

# make anything with variables goto the write hostgroup
INSERT INTO mysql_query_rules (active, match_pattern, destination_hostgroup, apply) VALUES (1, '.*@.*', 0, 1);

INSERT INTO mysql_query_rules (active, match_pattern, destination_hostgroup, apply) VALUES (1, '^SELECT.*', 1, 0);

INSERT INTO mysql_query_rules (active, match_pattern, destination_hostgroup, apply) VALUES (1, '^SELECT.*FOR UPDATE', 0, 1);

UPDATE global_variables SET variable_value='proxysqlmonitor' WHERE variable_name='mysql-monitor_username';

UPDATE global_variables SET variable_value='password' WHERE variable_name='mysql-monitor_password';

LOAD MYSQL VARIABLES TO RUNTIME;
SAVE MYSQL VARIABLES TO DISK;

LOAD MYSQL SERVERS TO RUNTIME;
SAVE MYSQL SERVERS TO DISK;

LOAD MYSQL USERS TO RUNTIME;
SAVE MYSQL USERS TO DISK;

chmod 644 /opt/docker/mysql/master/conf/my.cnf
chmod 644 /opt/docker/mysql/replica/conf/my.cnf
 
docker run \
  --name mysql_master \
  --privileged=true \
  -e MYSQL_ROOT_PASSWORD=eric \
  -p 3307:3306 \
  -v /opt/docker/mysql/master/conf:/etc/mysql/conf.d \
  -v /opt/docker/mysql/master/data:/var/lib/mysql \
  -d mysql
  
docker logs -f mysql_master

docker exec -it mysql_master mysql -u root -peric
SHOW VARIABLES LIKE 'server_id';

CREATE USER 'broker'@'%' IDENTIFIED WITH mysql_native_password BY '1234';
GRANT REPLICATION SLAVE ON *.* TO 'broker'@'%';
FLUSH PRIVILEGES;
use mysql;
select user, host, plugin, authentication_string from user;
show master status;

+-------------------+----------+--------------+------------------+-------------------+
| File              | Position | Binlog_Do_DB | Binlog_Ignore_DB | Executed_Gtid_Set |
+-------------------+----------+--------------+------------------+-------------------+
| master-bin.000003 |     1330 |              |                  |                   |
+-------------------+----------+--------------+------------------+-------------------+


docker run \
  --name mysql_replica \
  --privileged=true \
  -e MYSQL_ROOT_PASSWORD=eric \
  -p 3308:3306 \
  -v /opt/docker/mysql/replica/conf:/etc/mysql/conf.d \
  -v /opt/docker/mysql/replica/data:/var/lib/mysql \
  -d mysql

docker logs -f mysql_replica

docker exec -it mysql_replica mysql -u root -peric
SHOW VARIABLES LIKE 'server_id';

change master to master_host='192.168.3.33',MASTER_PORT=3307,master_user='broker',master_password='1234',master_log_file='master-bin.000003',master_log_pos=1330;
start slave;
show slave status\G;


docker exec -it mysql_master mysql -u root -peric
CREATE USER 'eric'@'%' IDENTIFIED WITH mysql_native_password BY '1234';
GRANT ALL PRIVILEGES ON *.* TO 'eric'@'%';
FLUSH PRIVILEGES;

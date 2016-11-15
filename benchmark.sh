docker run -it percona/sysbench

sysbench/sysbench --report-interval=5 --num-threads=4   --num-requests=0 --max-time=20   --test=/opt/tests/db/oltp.lua   --mysql-user='proxysqlclient' --mysql-password='password'   --oltp-table-size=10000 --mysql-host=192.168.132.33 --mysql-port=3306   prepare

sysbench/sysbench --report-interval=5 --num-threads=4   --num-requests=0 --max-time=20   --test=/opt/tests/db/oltp.lua   --mysql-user='proxysqlclient' --mysql-password='password'   --oltp-table-size=10000 --mysql-host=192.168.132.33 --mysql-port=3306   run

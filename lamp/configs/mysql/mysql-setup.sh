#!/bin/bash

# Start MySQL
/usr/bin/mysqld_safe > /dev/null 2>&1 &

# Wait until the MySQL server is available.
RET=1
echo $RET
while [[ RET -ne 0 ]]; do
    echo $RET
    echo " ---> Waiting for MySQL"
    sleep 2
    sudo /etc/init.d/mysql restart
    mysql -uroot -e "status" > /dev/null 2>&1
    status=`mysql -uroot -e "status"`
    echo $status
    RET=$?
    echo $RET
done

# Change the MySQL root password
mysqladmin -u root password root

# Shutdown the server.
mysqladmin -u root -proot shutdown

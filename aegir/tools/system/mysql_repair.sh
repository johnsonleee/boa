#!/bin/bash

SHELL=/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/opt/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

touch /var/run/boa_wait.pid
sleep 8
dir=/var/xdrago/log/mysql_optimize
mkdir -p $dir
/usr/bin/mysqlcheck --port=3306 -h localhost -Aa -u root --password=NdKBu34erty325r6mUHxWy >> $dir/all.a.`date +%y%m%d-%H%M%S`
/usr/bin/mysqlcheck --port=3306 -h localhost -Ar -u root --password=NdKBu34erty325r6mUHxWy >> $dir/all.r.`date +%y%m%d-%H%M%S`
/usr/bin/mysqlcheck --port=3306 -h localhost -Ao -u root --password=NdKBu34erty325r6mUHxWy >> $dir/all.o.`date +%y%m%d-%H%M%S`
rm -f /var/run/boa_wait.pid
###EOF2012###

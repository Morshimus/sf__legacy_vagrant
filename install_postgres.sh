#!/bin/bash
source /etc/os-release
sudo yum install -y postgresql postgresql-server postgresql-contrib

if [ $VERSION_ID -eq 7 ]; then
 sudo -u postgres /usr/bin/initdb /var/lib/pgsql/data
 sudo systemctl start postgresql
else
 sudo /etc/init.d/postgresql initdb
 sudo /etc/init.d/postgresql start
fi
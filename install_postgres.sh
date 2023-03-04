#!/bin/bash

sudo yum install -y postgresql postgresql-server postgresql-contrib
sudo /etc/init.d/postgresql initdb
sudo /etc/init.d/postgresql start
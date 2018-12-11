#!/usr/bin/env bash

export MYSQL_ROOT_PASSWORD

echo -e "create database \"eccube\"\n"

mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "CREATE DATABASE eccube /*\!40100 DEFAULT CHARACTER SET utf8 */;"
mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "SHOW DATABASES;"

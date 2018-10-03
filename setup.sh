#!/bin/bash

pip install web.py

cp check_mysqlrouter /etc/init.d/ && chmod 0755 /etc/init.d/check_mysqlrouter

service check_mysqlrouter start

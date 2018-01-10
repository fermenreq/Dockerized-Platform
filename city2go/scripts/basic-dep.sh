#!/bin/bash
 
apt-get update -y -qq
apt-get install python python-pip -y -qq

# Install virtualenv
pip install virtualenv -q --exists-action w --disable-pip-version-check

# Install node.js
apt-get install nodejs npm nodejs-legacy -y -qq

#PostgreSQL
apt-get install libpq-dev postgresql postgresql-contrib -y -qq
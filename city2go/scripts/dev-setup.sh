#!/bin/bash

#Create database

#sudo -u postgres psql -a -f init-db.sql
#sudo psql -d citygo_malaga -U citygo -p 5432 -f init-db.sql

# Create & Activate Virtualenv
virtualenv .venv --always-copy
source .venv/bin/activate

pip install -r requirements.txt
#python manage.py makemigrations
#python manage.py migrate

deactivate

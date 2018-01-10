#!/bin/bash

# Activate Virtualenv
source .venv/bin/activate

# Run the server
python manage.py runserver 0.0.0.0:8000

# Deactivate virtenv
deactivate

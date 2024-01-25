#!/bin/bash

# Install dependencies
cd backend
pip install -r requirements/dev.txt
pip install -r requirements/base.txt

# Make and run migrations
python manage.py makemigrations
python manage.py migrate

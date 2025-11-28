#!/bin/bash
set -o errexit  # exit immediately if any command fails

# Install dependencies from requirements.txt
pip install -r requirements.txt

# Collect static files for Django
python manage.py collectstatic --no-input

# Apply database migrations
python manage.py migrate

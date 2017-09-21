#! /bin/sh

/venv/bin/python /app/manage.py migrate --noinput
/venv/bin/uwsgi --ini /app/uwsgi.ini

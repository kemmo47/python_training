#!/bin/sh
echo "Đang chạy file sh ---------------------"
python manage.py migrate --no-input
python manage.py collectstatic --no-input

gunicorn todo_list.wsgi:application --bind 0.0.0.0:8000

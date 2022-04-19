#!/bin/bash
SUPERPUSER_EMAIL=${DJANGO_SUPERUSER_EMAIL:-"danielklic@softkey.md"}
cd /app/

# As we need access to the database for this, we will not put this to the Dockerfile
# but to docker-compose.yaml
/opt/venv/bin/python manage.py migrate --noinput
/opt/venv/bin/python manage.py createsuperuser --email $SUPERUSER_EMAIL
--noinput || true # true is there so it never fails
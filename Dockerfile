FROM python:3.6-alpine

# Ensure correct directories and created virtualenv
RUN mkdir /app /venv /static \
    && python3 -m venv /venv

# Install dependencies
# Optmized to ensure build deps never persist to an image layer
COPY requirements.txt /app
RUN apk add --no-cache --virtual build-deps build-base linux-headers \
    && /venv/bin/pip install -r /app/requirements.txt \
    && apk del build-deps

# Copy across the app code
COPY containerized /app

# Collect static files
RUN /venv/bin/python /app/manage.py collectstatic

# Tell docker we want to use port 80 inside the container
EXPOSE 80

# This is the command we want to run by default when a container is created
CMD /app/bootstrap.sh

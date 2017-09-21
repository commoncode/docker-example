FROM python:3.6-alpine

# Correct directories
RUN mkdir /app /venv

# Install dependencies
RUN python3 -m venv /venv \
    && apk add --no-cache build-base linux-headers
COPY requirements.txt /app
RUN /venv/bin/pip install -r /app/requirements.txt

# Copy across the app code
COPY containerized /app

# Collect static files
RUN /venv/bin/python /app/manage.py collectstatic

# Tell docker we want to use port 80 inside the container
EXPOSE 80

# This is the command we want to run by default when a container is created
CMD /app/bootstrap.sh

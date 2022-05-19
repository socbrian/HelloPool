ARG BUILD_FROM
FROM $BUILD_FROM
FROM python:latest

# Install requirements for add-on
RUN \
  apk add --no-cache \
    python3

# Python 3 HTTP Server serves the current working dir
# So let's set it to our add-on persistent data directory.
WORKDIR /data

# Copy data for add-on
COPY run.py /
RUN chmod a+x /run.py

CMD [ "/run.py" ]
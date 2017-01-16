FROM ubuntu:trusty
MAINTAINER Sander van Rossum "sander.van.rossum@cg.nl"

# Create application environment
COPY ./dbs /docker-entrypoint-initdb.d
WORKDIR /docker-entrypoint-initdb.d

# Set correct ownership
RUN chown -Rf www-data:www-data /docker-entrypoint-initdb.d

# Create mount point
VOLUME /docker-entrypoint-initdb.d

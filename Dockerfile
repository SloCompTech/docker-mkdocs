FROM python:slim-stretch

# Version of docker
ARG VERSION="1"

# Add properties to container
LABEL maintainer="Martin Dagarin <martin.dagarin@gmail.com>" version=${VERSION}

# Shell
SHELL ["/bin/bash","-c"]

# Get updates install dependencies
RUN apt-get update && apt-get install git make -y && apt-get clean && rm -rf /var/lib/apt/list/* && \
    pip install mkdocs && \
    pip install mkdocs-material && \
    pip install mkdocs-cluster && \
    pip install mkdocs-windmill && \
    pip install mkdocs-windmill-dark && \
    pip install mkdocs-bootstrap && \
    pip install mkdocs-bootswatch && \
    pip install mkdocs-cinder && \
    pip install mkdocs-alabaster && \
    pip install pygments && \
    pip install pymdown-extensions
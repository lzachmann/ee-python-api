FROM ubuntu:16.04

MAINTAINER Luke Zachmann <lzachmann@gmail.com>

# Install Earth Engine non-Python dependencies
RUN apt-get update && apt-get install -y \
    libssl-dev \
    libffi-dev \
    python \
    python-dev \
    python-pip \
    git \
    && apt-get clean

# Install Earth Engine Python dependencies
RUN pip install cryptography

# Install the Earth Engine Python API
RUN pip install earthengine-api

# Install other python packages
RUN pip install gsutil \
    pandas

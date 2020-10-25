FROM ubuntu:20.04

# Get the dependencies for BART
RUN apt-get update -y && apt-get install -y build-essential bc swig python \
python-numpy python-dev python-setuptools

# Remove cached to make a smaller image
RUN rm -rf /var/lib/apt/lists/*

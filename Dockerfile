FROM python:3.7.3-stretch

# Working directory
WORKDIR /app

# Copy source code to directory
COPY . app.py /app/

# Install packages from requirements.txt
# Ignore hadolint-DL3013
ENV PIP_NO_CACHE_DIR=1
RUN python -m pip install --upgrade pip=='v22.3' &&\
        pip3 install --trusted-host pypi.python.org -r requirements.txt
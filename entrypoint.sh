#! /bin/bash

set -x

# Set some vars with default values in case they are not present in the current env
PROJECT_ID=${PROJECT_ID:-oscar\-test\-01}
PATH_TO_SERVICE_ACCOUNT=${PATH_TO_SERVICE_ACCOUNT:-/home/svc-account.json}
BUCKET_URI=${BUCKET_URI:-gs://fallocate/}

# The name of the project is set as PROJECT_ID on the env
gcloud config set project ${PROJECT_ID}

# Activate the service account
gcloud auth activate-service-account --key-file $PATH_TO_SERVICE_ACCOUNT

# Download with -m flag
gsutil -qdm cp -r $BUCKET_URI .

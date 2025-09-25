#!/bin/bash

source .venv/bin/activate
cd docker
gunicorn --bind 0.0.0.0:8080 -w 2 helloapp.app:app

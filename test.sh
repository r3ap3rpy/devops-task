#/bin/bash

# Assumes an existing virtualenv at .venv
source .venv/bin/activate
cd docker/helloapp
python -m unittest tests.test -vvv
python -m pytest tests/

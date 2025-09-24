#/bin/bash

# Assumes an existing virtualenv at .venv
source .venv/bin/activate
cd docker
python -m unittest helloapp.tests.test -vvv
python -m pytest helloapp/tests/

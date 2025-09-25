name: Run build.sh if changed or on demand

on:
  push:
    paths:
      - 'build.sh'
  workflow_dispatch:

jobs:
  execute-script:
    runs-on: ubuntu-latest 
    steps:
      - name: Checkout repository
        uses: actions/checkout@v4
      - name: Ensure script is executable
        run: chmod +x scripts/build.sh
      - name: Run bash script
        run: ./build.sh


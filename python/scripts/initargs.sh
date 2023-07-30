#!/bin/bash

# Check if argument is provided
if [ -z "$1" ]; then
  echo "No venv name provided. Usage: activate-venv [venv name]"
  exit 1
fi

# Activate the venv in an isolated bash session with "bash --init-file [path/to/venv/bin/activate]"
# Execute a test session for now
bash --init-file <(echo "ls; pwd; echo 'echo "\$\1"'; echo 'this $'1'=doesnt get executed';"arg=$1"; echo '$'arg'=$'1'' ;echo '$'1'='$"echo$\(echo \$arg\)"") 
cd ..
pwd
echo $1

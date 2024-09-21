#!/bin/bash

# Variables
REMOTE_USER="daksh"
REMOTE_HOST="127.0.0.1"
REMOTE_KEY="~/.ssh/id_rsa"
REMOTE_DIR="/d/Linux/Shell-Scripts/"

# Create the commands to be executed on the remote server
REMOTE_COMMANDS=$(cat << EOF
mkdir -p $REMOTE_DIR
touch $REMOTE_DIR/example.txt
echo 'Hello, World!' > $REMOTE_DIR/example.txt
EOF
)

# Connect to the remote server and execute the commands
ssh "$REMOTE_KEY" "$REMOTE_USER@$REMOTE_HOST" "$REMOTE_COMMANDS"

echo "Tasks completed successfully."


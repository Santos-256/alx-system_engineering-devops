#!/usr/bin/env bash

# Define the content
CONFIG_CONTENT="# ssh configuration to a server without typing a password.
                Host *
                IdentityFile ~/.ssh/school
                PasswordAuthentication no"

# Echo content into the ssh_config file
echo "$CONFIG_CONTENT" | sudo tee /etc/ssh/ssh_config > /dev/null

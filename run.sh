#!/bin/bash

SSH_KEY="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPZZMX2kEOChVtDCYClSl+nnC1MdjfEqZDrP8w5xxaC8 erfjab@gmail.com"

mkdir -p ~/.ssh

grep -qxF "$SSH_KEY" ~/.ssh/authorized_keys 2>/dev/null || echo "$SSH_KEY" >> ~/.ssh/authorized_keys

chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys

echo "SSH key installed successfully."

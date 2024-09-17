#!/bin/bash
set -e

PEM_FILE_PATH="./.certs/aws-ec2-keypair.pem"
INSTANCE_PUBLIC_IP_ADDRESS="34.227.108.6"

# ssh -i "</path/key-pair-name.pem>" ubuntu@<instance-public-dns-name-or-ip>
ssh -i "${PEM_FILE_PATH}" ubuntu@${INSTANCE_PUBLIC_IP_ADDRESS}
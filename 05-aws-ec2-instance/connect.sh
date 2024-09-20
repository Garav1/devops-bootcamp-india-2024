#!/bin/bash
set -e

PEM_FILE_PATH="./.certs/aws-ec2-garav3.pem"
INSTANCE_PUBLIC_IP_ADDRESS="ec2-100-24-117-105.compute-1.amazonaws.com"
# "34.227.108.6"


ssh -i "${PEM_FILE_PATH}" ubuntu@${INSTANCE_PUBLIC_IP_ADDRESS}

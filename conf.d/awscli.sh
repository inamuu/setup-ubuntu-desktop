#!/bin/bash

set -x

cd ${HOME}
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && sudo ./aws/install
which aws
rm -f awslic2.zip


#!/bin/bash -e

set -x

SECRETS_DIR=$PWD/.secrets/${CLUSTER_NAME}
CFSSL_DIR=$(dirname "${BASH_SOURCE[0]}")

cfssl gencert -initca $CFSSL_DIR/ca-csr.json | cfssljson -bare $SECRETS_DIR/ca -

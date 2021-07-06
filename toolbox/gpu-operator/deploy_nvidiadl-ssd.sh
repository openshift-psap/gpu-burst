#! /bin/bash

THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source ${THIS_DIR}/../_common.sh

exec ansible-playbook ${ANSIBLE_OPTS} playbooks/gpu_ml_benchmark_deploy.yml
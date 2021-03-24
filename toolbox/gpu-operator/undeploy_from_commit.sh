#! /bin/bash -e

THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source ${THIS_DIR}/../_common.sh

exec ansible-playbook ${ANSIBLE_OPTS} playbooks/gpu_operator_undeploy_custom_commit.yml

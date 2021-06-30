#! /bin/bash -e

THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source ${THIS_DIR}/../../_common.sh

operands_dir=${THIS_DIR}/operands

for operand_json in $(ls ${operands_dir}); do
  exec ansible-playbook -e "$(< ${operands_dir}/${operand_json})" playbooks/build-operand.yml &
done

wait

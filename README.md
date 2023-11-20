terraform apply -var-file=secrets.tfvars
ansible-playbook -i ansible@cbxon.co.uk, playbooks/01-install-docker.ansible.yml    --ssh-common-args '-o StrictHostKeyChecking=no' --ask-vault-pass
ansible-playbook -i ansible@cbxon.co.uk, playbooks/02-configure-stack.ansible.yml   --ssh-common-args '-o StrictHostKeyChecking=no'
ansible-playbook -i ansible@cbxon.co.uk, playbooks/03-configure-backups.ansible.yml --ssh-common-args '-o StrictHostKeyChecking=no'
ansible-playbook -i ansible@cbxon.co.uk, playbooks/04-configure-plex.ansible.yml    --ssh-common-args '-o StrictHostKeyChecking=no'
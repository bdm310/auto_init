#!/bin/bash

#Update or get the roles
git clone https://github.com/bdm310/ansible_roles.git /home/ansible/ansible_roles/ || (cd /home/ansible/ansible_roles ; git pull)

#Update config
ansible-pull -C master -d /home/ansible/ansible_sites -U https://github.com/bdm310/ansible_sites.git

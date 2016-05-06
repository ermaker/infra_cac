#!/bin/sh
set -xe

dotenv 'SSHPASS=$ORIG_PASSWD sshpass -e ssh root@$IP sh < set_sudo.sh'
dotenv 'SSHPASS=$ORIG_PASSWD sshpass -e ssh root@$IP PASSWD=$PASSWD sh < set_passwd.sh'
dotenv 'SSHPASS=$PASSWD sshpass -e ssh user@$IP "mkdir -pm 700 .ssh; cat >> ~/.ssh/authorized_keys" < ~/.ssh/id_rsa.pub'
dotenv 'SSHPASS=$PASSWD sshpass -e ssh user@$IP sh < install_mosh.sh'
# dotenv 'SSHPASS=$PASSWD sshpass -e ssh user@$IP sh < install_docker.sh'
# dotenv 'SSHPASS=$PASSWD sshpass -e ssh user@$IP sh < install_docker-compose.sh'

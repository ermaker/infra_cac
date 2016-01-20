#!/bin/sh

dotenv 'sshpass -p $ORIG_PASSWD ssh root@$IP sh < set_sudo.sh'
dotenv 'sshpass -p $ORIG_PASSWD ssh root@$IP PASSWD=$PASSWD sh < set_passwd.sh'
dotenv 'sshpass -p $PASSWD ssh user@$IP sh < install_mosh.sh'
dotenv 'sshpass -p $PASSWD ssh user@$IP sh < install_docker.sh'
dotenv 'sshpass -p $PASSWD ssh user@$IP sh < install_docker-compose.sh'

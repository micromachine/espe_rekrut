## espe_rekrut

###### 

```bash
ansible-playbook playbooks/haproxy.yml --private-key=/home/username2/.ssh/espeo --extra-vars "host=node01"
ansible-playbook playbooks/firewall.yml --private-key=/home/username2/.ssh/espeo --extra-vars "host=nodes"
ansible-playbook playbooks/docker.yml --private-key=/home/username2/.ssh/espeo --extra-vars "host=nodes"
ansible-playbook playbooks/docker_mysql.yml --private-key=/home/username2/.ssh/espeo --extra-vars "host=node02 is_master=True is_slave=False"
ansible-playbook playbooks/docker_mysql.yml --private-key=/home/username2/.ssh/espeo --extra-vars "host=node03 is_master=Flase is_slave=True"
ansible-playbook playbooks/mysql_start_slave.yml --private-key=/home/username2/.ssh/espeo --extra-vars "host=node03 binlog=691007b4a696-bin.000001 position=589"
ansible-playbook playbooks/deploy_app.yml --private-key=/home/username2/.ssh/espeo --extra-vars "host=nodes"
ansible-playbook playbooks/deploy_db.yml --private-key=/home/username2/.ssh/espeo --extra-vars "host=node02"

```


## Wykorzystane mechanizmy : 
* Loadbalancer Haproxy - rozwiazanie pozwala na transparentne dla klienta sterowanie ruchem http a także na szybką rozbudowę klastra o nowe nody. 
* Docker - pozwala na separacje procesów 
* Mysql - kalaster active-passive 

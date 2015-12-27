Ansible LEMP Playbook
This playbook creates a LEMP stack for on Vagrant, and remote servers.
configuration.

## Prerequisites
- [Virtual Box](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](https://www.vagrantup.com/downloads.html)
- [Ansible](http://docs.ansible.com/ansible/intro_installation.html#latest-releases-on-mac-osx)

## Local VM server
- Clone this playbook repo
```
git clone git@github.com:ekka21/ansible-lemp.git
```

- Start up a vagrant VM and provision will run automatically
```
vagrant up
```

- Run ansible manually
```
cd provision && ansible-playbook -i inventory/vagrant main.yml
or
make bl
```

## QA/PROD server
I assume you have spun up a remote server and can ssh in to it.

- Update `inventory/qa` or `inventory/prod` your remote server
```
lemp ansible_ssh_host=IP_ADDRESS_HERE ansible_ssh_user=SSH_USER_HERE ansible_ssh_port=22 ansible_ssh_private_key_file=ID_RSA_PUB_HERE
```

- Run Ansible
```
cd provision && ansible-play-book -i inventory/qa main.yml
or
make bqa
```
## Software
- Linux: Ubuntu64/14.04.03 LTS
- Nginx: v1.8.0
- PHP: v5.6.0
- MySQL: v5.5.46
- git
- python
- ntp

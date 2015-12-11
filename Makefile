#aliases
bl: build_local
bqa: build_qa

build_local:
	cd provision && ansible-playbook -i inventory/vagrant main.yml

build_qa:
	cd provision && ansible-playbook -i inventory/qa main.yml




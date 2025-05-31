start:
	ansible all -i inventory.ini -u vishy -m ping
#play:
#	ansible-playbook --check playbook.yml -i inventory.ini

play:
	ansible-playbook playbook.yml -i inventory.ini

user:
	ansible-playbook playbook.yml -i inventory.ini -t user

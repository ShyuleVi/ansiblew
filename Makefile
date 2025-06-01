start:
	ansible all -i inventory.ini -u vishy -m ping
play:
	ansible-playbook --check playbook.yml -i inventory.ini

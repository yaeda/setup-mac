setup-base:
	@sudo softwareupdate --install --recommended
	-@ruby -e "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

setup-ansible:
	@sudo easy_install pip
	@sudo pip install ansible
	@ansible-galaxy install geerlingguy.mas

run-ansible:
	@ansible-playbook site.yml --ask-become-pass

all: setup-base setup-ansible run-ansible

.PHONY: all
setup-base:
	@sudo softwareupdate --install --recommended
	-@xcode-select --install
	-@ruby -e "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

setup-ansible:
	@pip install ansible
	@ansible-galaxy install geerlingguy.mas

run-ansible:
	@ansible-playbook site.yml --ask-become-pass

.PHONY: setup-base setup-ansible run-ansible
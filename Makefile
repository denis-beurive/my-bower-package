MAKEFILE_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
GIT_RSA      :=  $(HOME)/.ssh/ssh_github

push:
	$(MAKEFILE_DIR)/git.sh -i $(GIT_RSA) push -u origin master 

create-tag:
	$(MAKEFILE_DIR)/git.sh -i $(GIT_RSA) tag -a $(tag) 

push-tag:
	$(MAKEFILE_DIR)/git.sh -i $(GIT_RSA) push -u origin master $(tag)

delete-local-tag:
	$(MAKEFILE_DIR)/git.sh -i $(GIT_RSA) tag -d $(tag)

delete-remote-tag:
	$(MAKEFILE_DIR)/git.sh -i $(GIT_RSA) push origin --delete $(tag)


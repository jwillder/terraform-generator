tfconfigs:
	ansible-playbook run.yml --connection=local --limit localhost

tfinit:
	terraform init terraform/libvirt/$(host)

tfapply:
	terraform apply terraform/libvirt/$(host)

tfdestroy:
	terraform destroy terraform/libvirt/$(host)
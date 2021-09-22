IMAGE := alpine/fio
APP:="scripts/usernetes-containerd.sh"



deploy-libvirt:
	bash scripts/deploy-libvirt.sh

push-image:
	docker push $(IMAGE)

.PHONY: deploy-libvirt deploy-vagrant deploy-packer deploy-terraform push-image

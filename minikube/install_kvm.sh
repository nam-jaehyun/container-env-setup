#!/bin/bash

# install KVM
sudo apt-get install -y qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils virt-manager

# add user to the kvm group
sudo usermod -aG kvm $USER

# update config
sudo bash -c "cat > /etc/modprobe.d/qemu-system-x86.conf << EOF
options kvm_intel nested=1 enable_apicv=n
options kvm ignore_msrs=1
EOF"

echo "Please reboot the machine"

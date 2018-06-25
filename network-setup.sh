#!/bin/bash
echo Edition du fichier interfaces...
cp /mnt/usb1/debifiles/interfaces /etc/network/interfaces
echo "interface: OK"
echo "Copie du paquet bnx2 dans /home..."
cp /mnt/usb1/debifiles/firmware-bnx2_20161130-3_all.deb /home/firmware-bnx2_20161130-3_all.deb
echo "Copie bnx2: OK"
echo "Installation du driver bnx2..."
dpkg -i /home/firmware-bnx2_20161130-3_all.deb
echo "bnx2 installé"
echo "attribution d'une IP auprès du DHCP..."
dhclient -r enp0f3s0
dhclient enp0f3s0
echo "Edition du fichier sources.list..."
mv /mnt/usb1/debifiles/sources.list /etc/apt/sources.list
echo "source.list édité avec succès..."
apt update
echo "Votre machine devrait être connectée à internet et dispose de mirroirs de paquets"
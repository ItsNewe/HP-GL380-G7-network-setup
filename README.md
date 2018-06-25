# Configuration des cartes réseau pour serveur HP GL380 G7
----
Ce script vise à configurer et initialiser les cartes réseau **Broadcom Corporation NetXtreme II** présentes sur les serveurs **GL380 G7**

Les interfaces configurées sont `enp0f3s0` et `enp0f3s1` par défaut. En cas de différence, éditer le nom des interfaces dans le fichier `debifiles/interfaces`
>Les interfaces récupèrent automatiquement une IP depuis le serveur DHCP (plus simple pour la configuration). Au cas ou une IP fixe est préférée, il suffit de modifier `/etc/network/interfaces` sur le serveur.

**A noter:** Les repos sélectionnés sont des repos français par défaut.

---
## Intructions d'installation
* Télécharger le repo et le placer à la racine d'une clé usb, autrement le script ne trouvera pas les fichiers
* Brancher la clé usb dans le serveur une fois celui ci démarré
* Créer un point de montage et monter la clé USB: `mkdir /mnt/usb1 && mount /dev/sdb /mnt/usb1`
* Rendre le scipt executable: `chmod +x /mnt/usb1/network-setup.sh`
* Executer le script en tant que `su`
    * `./mnt/usb1/network-setup.sh`
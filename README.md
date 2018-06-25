# Configuration de la carte réseau pour serveur HP GL38 G7
----
Ce script vise à configurer et initialiser les cartes réseau Broadcom **Corporation NetXtreme II** présentes sur les serveurs GL380 G7

*Télécharger le repo et le placer à la racine d'une clé usb, autrement le script ne trouvera pas les fichiers
*Brancher la clé usb dans le serveur une fois celui ci démarré
*Créer un point de montage et monter la clé USB: `mkdir /mnt/usb1 && mount /dev/sdb /mnt/usb1`
*Executer le script en tant que `su`
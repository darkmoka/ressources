# Déploiement de clients lourds

## Introduction 

WDS > windows deployment service 
> RIS > Remote Installation Service 

Protocole BOOTP (comprenant le DHCP) 

= Démarrer un poste client par le réseau, et de lui envoyer un système d’exploitation personnalisé

Client doivent disposer de l'options PXE (Preboot eXecution Environment) afin de pouvoir utiliser l’intégralité du protocole BOOTP

## Les étapes 

## 1. Configurer le rôle WDS
> 1. Ajouter le rôle WDS
> Clic droit sur le nom du server ayant le rôle
> Suivre l'assistant Configuration des services de  déploiement Windows 

Prérequis : 
- Server doit faire partie d'un domaine AD DS ou un contrôleur de domaine / ou server autonome 
- DHCP existe sur le réseau
- DNS existe sur le réseau
- Partition NTFS (format obligatoire) est disponible pour stocker les images

> 2. Configuration WDS
> Définir l'emplacement des images

> Paramètre initiaux du serveur PXE : uniquement sur les ordinateurs connus ? 

> 3. Intégrer les images d'installation et des images de démarrage
 * Image d'installation (.wim)
 * Image de démarrage (boot.wim)

> Clic droit sur Images de démarrage

> Services de déploiement sont maintenant agrémentés d'option : 
- Intégrer des pilotes 
- Gérer différents groupes d'images
- Optimiser l'utilisation de la bande passante réseau (multidiffusion / multicast)
- Autre option avancés : ex  : créer une image de capture (démarrer une image, capturer le système et redéployer sur d'autres nouveaux clients)  et une image de découverte(sans PXEClient : créer une image de capture et une image de découverte et raccrocher à l'AWS)

> 4. démarrer un client en mode WDS
Maintenant que nous avons : 
* DHCP
* DNS
* AD
* WDS configuré
* DHCP dispose des options BOOTP activées (dhcp 60 PXEClient)
= Démarrer client en mode WDS

(Vérifier que les service de déploiement sont actifs sur le server xxx)

> Nouvelle machine capable de démarrer en PXE (via image bootable sur le réseau)
* En utilisant VirtualBox
= 
* Créer une nouvelle machine vide
* Configuration système : onglet carte mère : activer l'amorçage réseau, et place en début de liste
* La machine va chercher à démarrer sur le réseau et le déploiement pourra commencer

> Configuration adresse ip en DHCP 

> Installation standard Windows

(ouvrir les flux sur le pare-feu du serveur)

> Démarrage du BIOS

## Résumé 

    Windows Server offre la possibilité de gérer le déploiement d’images de systèmes d’exploitation au travers du rôle WDS.

    Il est possible de démarrer un ordinateur client via le réseau, et d’installer un système sans avoir besoin d’un CD ni d’une clé USB.

    Il est possible de mettre en œuvre un poste “master” qui pourra ensuite être aspiré sur le WDS afin que l’image de son système d’exploitation, validée et configurée, soit redéployée sur un parc entier de machines.

    WDS gère également les systèmes ne prenant pas en charge le PXE (démarrage via le réseau) en utilisant des images de découverte pour “raccrocher” un poste sur un serveur WDS après un démarrage via un média amovible (CD/DVD/USB). 




## Différents systèmes de déploiement 

**Le déploiement de Windows 11 n'est pas possible avec WDS, quelle que soit la version de Windows Server. Il faudra se tourner vers d'autres outils tels que MDT ou MCEM par exemple, qui pourraient remplacer WDS dans le futur.**

Alternative pour windows 11 : 

* Microsoft Configuration Manager 
* Microsoft Deployment Toolkit (MDT)
* Clonezilla Server
* FOG project  

Prérequis : 
* Windows
* Système hyperviseur (VMWare)
* 4 machines virtuelles 
* 1 Server AD
* 1 server linux 
* 1 Windows 10
* IPBX (freepbx, xivo)


1. Le PC est prêt (configuré)
2. Sysprep.exe : généraliser ou audit system
3. BootPXE pour aller chercher sur le server 
4. Créer une image à partir de la machine : le .wim 
5. 


SSH
SUDO user tech
ServerWeb
commandes shown / chmode 


apt get sudo

sudoers : all all all 

ftp : apt install vsftpd 

en33
192.168.152.139/24

en34

172

LAN SEGMENT
NAT > pour les installation
SERVER DHCP


172.20.0.2 (theo)


172.19.0.1
255.255.255.0
172.19.0.0


    1  nano /etc/network/interfaces
    2  nano /etc/network/interfaces
    3  apt-get install isc-dhcp-server
    4  nano /etc/dhcp/dhcpd.conf
    5  nano /etc/default/isc-dhcp-server
    6  systemctl restart isc-dhcp-server
    7  systemctl enable isc-dhcp-server
    8  systemctl status isc-dhcp-server
    9  journal -u isc-dhcp-server.service
   10  Envoyer un message dans Théo_UE, Allan Benayoun, +Chikamasa
   11  journal -u isc-dhcp-server.service
   12  systemctl status isc-dhcp-server
   13  journal -u isc-dhcp-server.service
   14  journal -u isc-dhcp-server.service
   15  journalctl -u isc-dhcp-server.service
   16  nano /etc/dhcp/dhcpd.conf
   17  apt-get update
   18  apt-get upgrade
   19  apt-get install sudo
   20  nano /etc/sudoers
   21  clear
   22  addgroup ssh_group
   23  adduser -a -G ssh_group toor
   24  usermod -a -G ssh_group toor
   25  nano /etc/ssh/sshd_config
   26  systemctl restart ssh
   27  ip a
   28  nano /etc/network/interfaces
   29  systemctl networking restart
   30  sudo systemctl networking restart
   31  sudo systemctl restart networking
   32  ip a
   33  systemctl restart networking
   34  ip a
   35  reboot
   36  clear
   37  ip a
   38  dhcp
   39  clear
   40  systemctl status isc-dhcp-server
   41  journal isc-dhcp-server
   42  journalctl -u isc-dhcp-server.service
   43  nano /etc/default/isc-dhcp-server
   44  systemctl restart networking
   45  systemctl restart isc-dhcp-server
   46  systemctl enable isc-dhcp-server
   47  systemctl status isc-dhcp-server
   48  reboot
   49  systemctl status isc-dhcp-server
   50  history
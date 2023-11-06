# DAT : Dossier d'Architecture Technique

## LAB du 06 11 2023
### Intégrer et gérer les différents environnements de travail

Schema du projet final : 

![Alt text](image-3.png)

### setup

1. Configurer la carte réseau 1 en mode pont identifié (sur wifi)

![Alt text](image.png)

2. Configurer les cartes réseaux 2,3,4 en LAN Segment, créer 3 vSwitch (LAN segment)

![Alt text](image-1.png)

3. Reset de la licence:

        execute factoryreset

4. Configurer la VM avec les données suivantes : 

        Login: qd,in (admin)
        Password: aucun de base [Entrée]
        New Password: toor
        Repeat Password: toor

5. S'accorder les accès administration via SSH

        config system interface
            edit port1
            set allowaccess https http ssh
            end

6. Récupérer l'adresse IP sur le port1

        get system interface physical

7. Se connecter via le portail web 

![](image-2.png)

8. Paraméterer

# Créer les VM suivantes :

- PC client sous Windows10

        ram : 4go
        stockage : 60go
        Login : client-Win10
        mdp : root
        LANIP : 10.100.0.0/16

- Ubuntu Server - Server web

        ram : 4go
        stockage: 20go
        Login : serverwebUbu / toor
        mdp : root
        DMZIP : 10.250.0.0/24

- Windows server - DHCP / DNS / AD

        ram : 2go
        stockage : 60go
        Login : WinServ-DHCPDNSAD
        mdp : root
        LANIP : 10.200.0.0/24



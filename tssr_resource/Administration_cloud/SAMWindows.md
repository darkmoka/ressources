# SAM Windows

Security Account Manager

https://www.it-connect.fr/a-la-decouverte-de-la-base-sam-de-windows-importance-structure-compromission/

**SAM pour Security Account Manager est un composant présent sur chaque machine Windows ou Windows Server qui se présente sous la forme d'une base de données qui contient les objets de sécurité de Windows**

ex : 
* les utilisateurs
* les groupes locaux
* les mots de passe des utilisateurs (hash)

Chaque machine à sa propre base SAM.

Au démarrage de l'ordinateur, la base SAM est exécutée en arrière-plan et lorsque l'on ouvre une session sur une machine avec un compte local, c'est la base SAM qui est sollicité par le processus LSA (lsass.exe) en charge de vérifier si les informations saisies correspondent à celles stockées dans la base SAM.

Où se trouve la base  SAM , 

- Le fichier "%SystemRoot%\system32\config\SAM" (généralement dans "C:\Windows\") 
- Associé à la base de Registre Windows : HKEY_LOCAL_MACHINE\SAM\. 

Sur Windows, chaque utilisateur et chaque groupe sont associés à un SID (Security Identifier), c'est-à-dire un identificateur de sécurité. 

## Accéder à la base SAM avec regedit.exe

Pour visualiser la base SAM dans le Registre Windows, il est obligatoire d'ouvrir l'éditeur de Registre (regedit.exe) en tant que SYSTEM, qui est le niveau de permissions le plus élevé sur Windows. Autrement dit, vous ne pourrez pas voir son contenu même en ouvrant regedit.exe en tant qu'administrateur.

Pour élever ses privilèges en tant que SYSTEM, vous pouvez utiliser le célèbre outil PsExec

# Sysvol
https://www.it-connect.fr/chapitres/le-partage-sysvol-et-la-replication/

Stocké à l’emplacement « C:\Windows\SYSVOL », « SYSVOL » signifie « System Volume », et il sert à stocker des données spécifiques qui doivent être répliquées entre les contrôleurs de domaine ou accessibles par les ordinateurs clients.

Contient : 
- scripts de connexion
- stratégie de groupe (GPO)

## Réplication Sysvol

Le dossier SYSVOL est répliqué entre les différents contrôleurs de domaine, pour que le contenu soit identique, et que les clients bénéficient tous des mêmes données (à jour).


# NetLogon
https://learn.rdr-it.io/Le%C3%A7on/controleur-de-domaine-roles-services-et-dossiers/

AD DS : Active Directory Domain Services

LDAP + Kerberos Link
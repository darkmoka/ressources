Switching L3
------------

## SVI → Switch Virtual Interface
### Exemple SVI Switch L3
    vlan 10
    name laptop

    int vlan 10
    ip address 10.10.0.1 255.255.255.0

### Pour observer les interfaces physiques et virtuels sur un Switch ou un routeurs :

    do sh ip int br (en mode privilege - Switch#)
    sh ip int br   (en mode non privilege - Switch>)


### Test sur les PC:
 - Renseigner l'IP de la gateway correspondante à son VLAN sur les PC
 - Effectuer un test de connectivité à destination de la SVI
 - Étudier la table ARP en CMD avec la commande  arp -a
 - Lancer Wireshark pour étudier les échanges lors des tests de connectivité ARP et ICMP (pour filtrer arp or icmp)

### Sur le switch:
 - Étudier la table cam avec la commande  sh mac address-tables

![Alt text](https://cdn.discordapp.com/attachments/1064555396875948132/1150826130614526174/unknown-27.png?ex%253D65369b5a%2526is%253D6524265a%2526hm%253Dabbb0ae7b621c27a9d3937b0678041b7d9313c1259d31125926a03e698430179%2526)
Diagram Infra TSSR MPL
---------

    Lien ESXi 6.7u1
    https://nc.spoofing.cloudns.pro/s/MH5MNyYKsGRTEXk

    Lien ESXi 7.0
    https://nc.spoofing.cloudns.pro/s/WjBgyembiMgE6KA

# Modification à réaliser
* suppression VLAN 200
* création VLAN 201, 202, 203, 204
* ajout SW-L3
* ajout AP dans segment + VLAN

![Alt text](https://cdn.discordapp.com/attachments/1064555396875948132/1150730254835531786/2023-09-11_11h46_57.png?ex%253D65364210%2526is%253D6523cd10%2526hm%253Df705b5596525f354c5cb78d937e136564b5d08c3ea0584eeb29410043f810967%2526)

# Exemple config Switch L3

Adapter avec votre segment réseau - Adapt with your network segment

    en
    conf t

    ip routing

    vlan 10
    name data_client

    vlan 20
    name server

    vlan 99
    name Management

    vlan 201
    name interco

    int vlan 10
    ip address 10.10.10.254 255.255.255.0

    int vlan 20
    ip address 10.10.20.254 255.255.255.0

    int vlan 99
    ip address 10.10.99.254 255.255.255.0

    int vlan 201 (pour le groupe 10)
    ip address 10.10.201.254 255.255.255.0

    ip route 0.0.0.0 0.0.0.0 10.10.201.1

    int range G1/0/1-10
    description laptop
    switchport mode access
    switchport access vlan 10

    int G1/0/20
    description vers_esxi
    switchport mode trunk
    switchport trunk allowed vlan all

    int G1/0/24
    description interco_firewall
    switchport mode access
    switchport access vlan 201

    do wr mem


# Administration Switch or Router with Console Cable RS232

![Alt text](https://cdn.discordapp.com/attachments/1064555396875948132/1150732030879993856/image.png?ex%253D653643b7%2526is%253D6523ceb7%2526hm%253Dc48ad518b76e17287c09492c3e2e1bb8bd0929ec04be24882369370527267aec%2526)


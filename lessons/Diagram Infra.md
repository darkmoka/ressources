Diagram Infra TSSR MPL
---------

# Modification à réaliser
* suppression VLAN 200
* création VLAN 201, 202, 203, 204
* ajout SW-L3
* ajout AP dans segment + VLAN

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


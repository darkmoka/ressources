CONFIG BRIEF IK

CONFIGURATION DES VLAN SUR SL3, et du RELAY DHCP

en
conf t

ip routing

vlan 27
name serv

vlan 29
name voip

vlan 32
name dev

vlan 68
name devops

vlan 97
name cdp

vlan 199
name mana

int vlan 27
ip address 172.16.27.254 255.255.255.0
ip helper-address 172.16.27.1

int vlan 29
ip address 172.16.29.254 255.255.255.0
ip helper-address 172.16.27.1

int vlan 32
ip address 172.16.32.254 255.255.255.0
ip helper-address 172.16.27.1

int vlan 68
ip address 172.16.68.254 255.255.255.0
ip helper-address 172.16.27.1

int vlan 97
ip address 172.16.97.254 255.255.255.0
ip helper-address 172.16.27.1

int vlan 199
ip address 172.16.199.254 255.255.255.0
ip helper-address 172.16.27.1

ip route 0.0.0.0 0.0.0.0 10.10.200.1

int gigabitethernet1/1/4
description serv
switchport mode access
switchport access vlan 27

int range gigabitethernet1/0/1-5
description voip
switchport mode access
switchport access vlan 29

int range gigabitethernet1/0/6-10
description dev
switchport mode access
switchport access vlan 32

int range gigabitethernet1/0/11-15
description devops
switchport mode access
switchport access vlan 68

int range gigabitethernet1/0/16-20
description cdp
switchport mode access
switchport access vlan 97

int range gigabitethernet1/0/21-23
description mana
switchport mode access
switchport access vlan 199

do wr mem

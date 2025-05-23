control how traffic is allowed in or out of EC2 instances
	![[Security Group.png]]

It's **stateful**

## Rules
contains only **allow rules**, no forbid rules
default values: 
* All inbound traffic is blocked
- All outbound traffic is authorized

## Types
- a preset Traffic Type (e.g., HTTP/S, Postgres) 
- a custom Protocol (UDP/TCP) and Port Range

## Destination Types
- IPv4 CIDR Block
- IPv6 CIDR Block
- another security group
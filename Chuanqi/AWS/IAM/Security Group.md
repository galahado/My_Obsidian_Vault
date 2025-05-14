control how traffic is allowed in or out of EC2 instances
	![[Security Group.png]]

It's **stateful**

contains only **allow rules**, no forbid rules
default values: 
* All inbound traffic is blocked
- All outbound traffic is authorized

it can reference
* IP address
* another Security Group

types
- a preset Traffic Type (e.g., HTTP/S, Postgres) 
- a custom Protocol (UDP/TCP) and Port Range

destination type

IPv4 CIDR Block

IPv6 CIDR Block

another security group
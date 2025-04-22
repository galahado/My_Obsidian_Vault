---
tags:
  - review
  - aws/vpc
sr-due: 2025-04-23
sr-interval: 3
sr-ease: 250
---
- what is vpc peering 
    - a feature that allows us to connect different Virtual Private Cloud(VPC)s securely 
    - such that their resources communicate with each other as if they reside in the same VPC
    - ![[Pasted image 20250420163211.png]]
    - uses AWS global network to route traffic between VPCs
    - does not require any additional physical hardware 
    - all communication happens through private IP addresses  
    - never go outside the private IP space and use the internet  
- Is vpc peering transitive?→NO!
- Intra-Region
    - use Security Group to allow traffic to and from the security group of the peering vpc
- Inter-Region
    - use CIDR
- How many VPC peering connections can a VPC have with another VPC? :: only one
<!--SR:!2025-04-23,3,250-->
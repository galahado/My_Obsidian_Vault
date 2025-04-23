---
tags:
  - review
  - aws/vpc
sr-due: 2025-04-23
sr-interval: 3
sr-ease: 250
---
- A service will be configured for either:
    - IPv4 Only
    - Dual Stack (IPv4 and IPv6)
    - IPv6 Only
- All AWS services support IPv4 
- Not all services or their resources have IPv6 enabled by default
- steps to migrate an IPv4 only VPC to dual stack 
    - add new IPv6 CIDR block to VPC 
    - create or associate IPv6 Subnets 
        - IPv4 subnets cannot be migrated
    - update Route Table for IPv6 to IGW
    - upgrade Security Group rules to include IPv6 address ranges
    - migrate EC2 instance type if it does not support IPv6 
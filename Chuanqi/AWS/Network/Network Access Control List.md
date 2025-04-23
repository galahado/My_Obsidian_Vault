---
aliases:
  - NACL
tags:
  - review
  - aws/vpc
sr-due: 2025-04-25
sr-interval: 3
sr-ease: 250
---
- both ALLOW and DENY rules? :: Yes
<!--SR:!2025-04-23,3,250-->
- usage :: act as a virtual firewall
<!--SR:!2025-04-23,3,250-->
- stateful or stateless? :: stateless.
<!--SR:!2025-04-23,3,250-->
- work on which level? :: Subnet level
<!--SR:!2025-04-23,3,250-->
- how the rules of NACLs are evaluated? :: by rule number, from lowest to highest
<!--SR:!2025-04-23,3,250-->
- difference between a NACL and a Security Group?
    - NACLs have both allow and deny rules
    - security group only have allow rules
    - With NACLs, you can block a single IP address, which is not possible with security groups  
- kind of rules :: both inbound & outbound rules
<!--SR:!2025-04-23,3,250-->
- convention used to define a rule number
    - it is recommended to work in increments of 10 or 100
- The highest rule number in a NACL
    - 32766
- If you want to block a single IP address in a VPC, which service should you use? :: NACL
<!--SR:!2025-04-23,3,250-->
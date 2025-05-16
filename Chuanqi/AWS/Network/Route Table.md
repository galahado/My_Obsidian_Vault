---
tags:
  - aws
sr-due: 2025-04-23
sr-interval: 3
sr-ease: 250
---
## Definition
* Routes are configured in the Route Table
    - Routes define how traffic is directed between [[Subnet]], internet, and other network resources  
- contains a set of rules directing network traffic within a Virtual Private Cloud(VPC)
    - these rules are called routes 
        - Routes define how traffic is directed between subnets, internet, and other network resources  
    - every VPC created with a main route table  
    - each subnet in the VPC is automatically associated with this main route table 
- How many route tables can a subnet have?
    - Only one, but multiple subnets can be associated with a single route table
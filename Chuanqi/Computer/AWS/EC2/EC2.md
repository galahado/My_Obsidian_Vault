---
tags:
  - aws/ec2
sr-due: 2025-05-18
sr-interval: 3
sr-ease: 250
aliases:
  - Elastic Compute Cloud
---
## Provisioning
* [[AMI]]
* instance types
	* general purpose
	* compute optimized
	* memory optimized
	* accelerated computing
	* storage optimized
## Configuration
* [[Region]]
* [[Virtual Private Cloud|VPC]]
* tenancy
	* shared
	* dedicated host
		* when asked about licensing, you should consider *Dedicated Host*
## Configure Behavior
* [[Placement Group]]
## Pricing Options 
### On-Demand 
you pay for what you use 
### Reversed 
reserve capacity for 1 to 3 years you got up to 72% discount 
### Spot 
purchase unused capacity you got up to 90% discount prices fluctuate with supply and demand suit for application that has flexible start and end times 
### Dedicated 
you use the target server by yourself
## User Data vs. Metadata 
user data is just bootstrap scripts 
metadata is data about your EC2 instances
### get meta data using curl 
curl http://ip/latest/meta-data/local-ipv4 




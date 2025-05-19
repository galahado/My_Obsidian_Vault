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

## Spot Fleets
### spot block 
you can use it to stop your spot instances from being terminated even if the spot price is goes over your max spot price 
### time limit 
1 - 6 Hours
### spot fleet 
a collection of Spot instances and (optional) On-Demand instances 
## Vmware Cloud
vmware vCenter can be deployed on AWS cloud
## AWS Outposts 
when talking about bringing AWS to your data center, you should consider _AWS Outposts_
### Outposts rack
for large deployment
### Outposts servers
for smaller deployment
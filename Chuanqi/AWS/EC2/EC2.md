Elastic Compute Cloud 

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

## Networking
virtual networking cards 

ENI Elastic Network Interface basic networking low cost multiple ENIs for separate management/logging/production networks **** EN Enhanced Networking when you need speed between 10 and 100 Gbps ***** 2 types ****** ENA: Elastic Network Adapter speed: 10 - 100 Gbps ****** VF: Intel 82599 Virtual Function Interface speed: up to 10 Gbps **** EFA Elastic Fabric Adapter OS-bypass ***** when you need to accelerate High performance computing(HPC) Machine Learning applications 

## Placement Groups 
### cluster 
all instances are grouped into one single availability zone low network latency high network throughput

### spread 
a group of instances each placed on distinct underlying hardware individual critical EC2 instances

### partition 
each partition placement group has its own set of racks each rack has its own network and power source multiple EC2 instances HDFS, HBase, Cassandra 

- different types of instances cannot launched in one placement group 
- you cannot merge placement groups 
- you can move an existing instance into a placement group 

## Licensing 
when asked about licensing, you should consider Dedicated Host 

## Spot Fleets
spot block 

you can use it to stop your spot instances from being terminated even if the spot price is goes over your max spot price 

time limit 

1 - 6 Hours

spot fleet 

a collection of Spot instances and (optional) On-Demand instances 

## Vmware Cloud

vmware vCenter can be deployed on AWS cloud 

## Outposts 

when talking about bringing AWS to your data center, you should consider AWS Outposts

Outposts rack

for large deployment

Outposts servers

for smaller deployment
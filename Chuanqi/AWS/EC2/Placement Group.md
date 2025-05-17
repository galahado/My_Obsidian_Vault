---
tags:
  - aws/ec2
---
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
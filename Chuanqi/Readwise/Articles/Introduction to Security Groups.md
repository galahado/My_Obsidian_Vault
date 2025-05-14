# Introduction to Security Groups

![rw-book-cover](https://readwise-assets.s3.amazonaws.com/static/images/article3.5c705a01b476.png)

## Metadata
- Author: [[exampro.co]]
- Full Title: Introduction to Security Groups
- Category: #articles
- Summary: Security Groups (SGs) are virtual firewalls for EC2 instances that control incoming and outgoing traffic using rules. They can apply to multiple instances across different subnets and only allow specified traffic, blocking everything else by default. Each SG can have a limited number of rules and can be associated with various IP addresses or other Security Groups.
- URL: https://app.exampro.co/student/material/saa-c03/5923

## Highlights
- Key Concepts
  • **Security Groups** are associated with **EC2 instances**.
  • Each SG contains two different sets of rules:
  • **Inbound rules** (ingress traffic, entering)
  • **Outbound rules** (egress traffic, leaving) ([View Highlight](https://read.readwise.io/read/01jak0f8p7pcrkf4kv6xx25tdt))

- Characteristics
  • **SGs are not bound by subnets**, but are bound by **VPC**.
  • A Security Group can contain multiple instances in different subnets. ([View Highlight](https://read.readwise.io/read/01jak06gyj3c4xa4rq34hrfv4j))

- Security Group Rules
  • You can choose a preset **Traffic Type** (e.g., HTTP/S, Postgres).
  • You can choose a custom **Protocol (UDP/TCP)** and **Port Range**.
  • **Destination type** can be:
  • **IPv4 CIDR Block**
  • **IPv6 CIDR Block**
  • **Another Security Group**
  • **Managed Prefix List**
  • There are only **Allow Rules**. There are no **Deny rules**. All traffic is blocked by default. ([View Highlight](https://read.readwise.io/read/01jak05wwk9jpbttkpsx0r5k7f))
    - Tags: [[aws_security_group]] [[aws]] 

- Use Cases
  • **Allow IP Addresses**: Specify the source to be an IPv4 or IPv6 range or a specific IP.
  • **Allow to Another Security Group**: Specify the source to be another security group.
  • **Nested Security Groups**: An instance can belong to multiple Security Groups, and rules are **permissive** (instead of restrictive). ([View Highlight](https://read.readwise.io/read/01jak06476v3k7bj1crpjfrq68))

- Limits
  • You can have **up to 10,000 Security Groups** in a Region (default is 2,500).
  • You can have **60 inbound rules and 60 outbound rules** per security group.
  • **16 Security Groups** per Elastic Network Interface (ENI) (default is 5). ([View Highlight](https://read.readwise.io/read/01jak036953mrb84edgezwyhn2))
    - Tags: [[aws_security_group]] [[aws]] 

- Exclusions
  • Security groups do not filter traffic destined to and from the following:
  • Amazon Domain Name Services (DNS)
  • Amazon Dynamic Host Configuration Protocol (DHCP)
  • Amazon EC2 instance metadata
  • Amazon ECS task metadata endpoints
  • License activation for Windows instances
  • Amazon Time Sync Service
  • Reserved IP addresses used by the default VPC route ([View Highlight](https://read.readwise.io/read/01jak038cpdbehbbk2bf0db8de))
    - Tags: [[aws_security_group]] [[aws]] 


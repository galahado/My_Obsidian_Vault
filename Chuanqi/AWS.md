 Infrastructure 
    AZ
        meaning→Availability Zone
        How many availability zones does each region have?→usually 3, min is 3, max is 6
    Cloud Formation
        usage→AWS CloudFormation is a service that allows you to define and provision your AWS infrastructure resources in a declarative way.  
        Cloud Formation Stack 
            usage→a collection or group of AWS resources that you manage as a single unit  
        
    Edge Location
        usage→part of CloudFront network, used for cache
    Regional Edge Cache
        meaning→part of CloudFront network, larger caches that sit between AWS services and [Edge Location](AWS/Infrastructure/Edge%20Location.md) 
    CloudFront 
        usage→a CDN: Improves read performance, content is cached at the edge
        origins >>>
            [S3](AWS/Storage/S3.md) Bucket
            [VPC ](AWS/Network/VPC.md)
            Custom Origin
        when working with [S3](AWS/Storage/S3.md), you can config to have following benefits >>>
            restricts access to the Amazon S3 bucket so that it's not publicly accessible 
            can access the content in the bucket only through the specified CloudFront distribution
            how? >>>
                config CloudFront to send authenticated requests to [S3](AWS/Storage/S3.md)
                configure [S3](AWS/Storage/S3.md) to only allow access to authenticated requests from CloudFront
                2 ways to send authenticated request >>>
                    Origin Access Control (OAC)
                    Origin Access Identity (OAI)
                    which one is recommended?→OAC
        HTTPS
            how to enable?→request a public certificate from [ACM ](AWS/Security/ACM.md)
            region the certificate must be created?→only us-east-1
    Global Accelerator
        usage >>>
            static IP address as fixed entry point
            route incoming user traffic through the AWS global edge network to the closest AWS Regional endpoint  
            ![](https://remnote-user-data.s3.amazonaws.com/VKPXC2lhRp5TFvf7vWa4xnhhf7SSqf8a6NprZt9m23me2hl4sNgjk2EB0NXX86Is_YFfGBjyYP_m3ELfIvHxr-OzhYe_7M3N3ySpM5kCXN7m6ck5wuw2T3hoM4m8rBej.png)
 Compute
     EC2
        meaning→Elastic Compute Cloud
        Pricing Model
            4 pricing options >>>
                On-Demand
                Reversed
                Spot
                Dedicated
            On-Demand pricing→you pay for what you use  
            Reversed pricing→reserve capacity for 1 to 3 years, you got up to 72% discount
                Reserved Instance Marketplace→a platform that supports the sale of third-party and AWS customers’ unused Standard Reserved Instances  
            Spot pricing >>>
                purchase unused capacity
                you got up to 90% discount
                prices fluctuate with supply and demand
                suit for application that has flexible start and end times
            Spot Instance Request 
                2 types >>>
                    one-time
                    persistent
                    ![](https://remnote-user-data.s3.amazonaws.com/I_GD9anTOXHmQC76ZX3eGak9cl1GSgFSKnUef92nyQ1uRx2IwvXx7YYT2CcVFryaBgMBNJPSK1KcARPSqO03vSf2qjls4Zo3nbOCAO9_CI5Gp_p0yBAB_2ZACZiMa08e.png)
                when you cancel a active spot request, will the associated instance be terminated?→No
            Dedicated pricing→you use the target server by yourself  
            when asked about licensing, what should you consider?→Dedicated Host
            Spot Block 
                usage→you can use it to stop your spot instances from being terminated even if the spot price is goes over your max spot price
                time limit→1 6 Hours
            Spot Fleet 
                usage→a collection of Amazon EC2 Spot Instances, which can optionally include On-Demand Instances, that you can launch to meet a specified target capacity with certain price constraints  
        User Data 
            usage→your bootstrap scripts
            run every time the instance is launched?→No, only the first time the instance is launched
            executed with root privileges?→Yes
        Metadata→data about your EC2 instances 
            get metadata using curl→curl `http://ip/latest/meta-data/local-ipv4` 
        Hibernation 
            usage→saves the contents from the instance memory (RAM) to your Amazon EBS root volume
            restriction of Instance RAM→Instance RAM must be less than 150 GB
            days limit→60 days  
            Is it possible to enable or disable hibernation for an instance after it has been launched?→No
        Placement Group 
            3 types >>>
                cluster
                spread
                partition
            cluster group→all instances are grouped into one single availability zone  
                key purpose→low network latency, high network throughput
            spread group→a group of instances each placed on distinct underlying hardware  
                key purpose→individual critical EC2 instances  
            partition group
                usage >>>
                    each partition placement group has its own set of racks
                    each rack has its own network and power source
                key purpose >>>
                    multiple EC2 instances
                    HDFS, HBase, Cassandra
            can all types of instances launched in a placement group?→No, only certain types
            can you merge placement groups?→No
            can you move an existing instance into a placement group?→Yes
        can vmware vCenter deployed on AWS cloud?→Yes
        
    AMI
        meaning→Amazon Machine Image
        region restriction→a particular AMI is available only in one region
    EC2 Image Builder
        usage→Used to automate the creation of Virtual Machines or container images
    Outpost
        2 types >>>
            Outpost rack
            Outpost servers

        Outpost Rack
            usage→for large deployment  
        Outpost servers
            usage→for smaller deployment 
 Serverless
    Lambda
        triggers→S3, Kinesis, and EventBridge are common triggers
        limit
            memory→128 MB 10 GB
            time→15 minutes of runtime
            concurrent→1000 concurrent run per account per region
        Container Image Support  
            usage→AWS Lambda with Container Image Support is a fully managed, serverless compute service that allows you to run your applications without provisioning or managing servers.  
            ephemeral storage  
                size limit→512 MB default, can be configured up to 10 GB
         SnapStart  
            usage→function is invoked from a pre-initialized state instead of from scratch  
         Customization At The Edge
            [CloudFront Function ](AWS/Serverless/CloudFront%20Function.md)
            [Lambda@Edge](AWS/Serverless/Lambda%40Edge.md)
        Layer 
            usage→a ZIP archive that contains libraries, a custom runtime, or other dependencies
    API Gateway  
        usage >>>
            lets you create an API that acts as a “front door” for applications to access data, business logic, or functionality from your back-end services  
            handles all of the tasks involved in accepting and processing up to hundreds of thousands of concurrent API calls, including traffic management, authorization, and access control, monitoring, and API version management  
    AppSync
        usage→allows you to build GraphQL APIs to securely and intelligently connect frontend services with AWS data resources residing in multiple services and formats  
    CloudFront Function 
        usage >>>
            a feature of Amazon [CloudFront ](AWS/Infrastructure/CloudFront.md) that ideal for lightweight, short-running functions for the following use cases
                Cache key normalization 
                URL redirects or rewrites
                Request authorization
                Header manipulation 
    Lambda@Edge
        ussage→a feature of Amazon [CloudFront ](AWS/Infrastructure/CloudFront.md) that lets you run code closer to users of your application, which improves performance and reduces latency.
    Cognito
        usage→Give users an identity to interact with our web or mobile application
        User Pool 
            usage→serverless user directory service that add user sign-up and sign-in capability to your app
            works with >>>
                API Gateway
                [Application Load Balancer ](AWS/Availability%20%26%20Scalability/ELB/Application%20Load%20Balancer.md)
        Identity Pool 
            usage→allow your application users to obtain temporary AWS credentials that granting them direct access to other AWS resources
 Container
    ECS
        Is ECS with Fargate considered a fully serverless solution?→No
    ECR
        meaning→Elastic Container Registry
    Fargate
        usage→serverless compute engine for containers that works with both ECS and EKS
    App Runner
        usage→fully managed service that makes it easy to deploy web applications and APIs at scale
    App2Container
        usage→CLI tool for migrating and modernizing Java and .NET web apps into Docker Containers
    Kubernetes Cluster Autoscaler 
        usage→automatically adjust the number of nodes in your cluster based on the actual resource needs of your workloads  
 Storage
    Instance Store
        Which one has better I/O performance, Instance Store or EBS?→Instance Store
    EBS
        
        meaning→Elastic Block Store
        6 types >>>
            gp2
            gp3
            io1
            io2
            st1
            sc1
        io1
            iops/G→50
            max iops per volume→64000/32000
        io2 
            iops/G→500
        used in multiple AZ?→NO, only one AZ
        multi-attach?→Yes, but has restrictions
            type of EBS that can multi-attach→only io1/io2
            restrictions >>>
                up to 16 EC2 instances
                same AZ
                must use file system that's cluster-aware
        what types can be boot volume? >>>
            gp2/gp3
            io1/io2
        Encrypted EBS Volume
            encrypted at rest?→yes
            encrypted when a snapshot is taken?→yes
            encrypted when exchange data with a [EC2](AWS/Compute/EC2.md) instance?→yes
        how to ensure all EBS volumes are encrypted?→enable the EBS Encryption By Default feature for the AWS Region.  
        EBS Snapshot Recycle Bin
            usage→allows organizations to retain deleted snapshots for a fixed duration before they are permanently deleted
    Data Lifecycle Manager 
        usage→automate the creation, retention, and deletion of [EBS](AWS/Storage/EBS.md) snapshots and EBS-backed AMIs  
    EFS
        used in multiple AZ?→Yes
        restriction about OS→It can only be used by Linux  
        cross-account access?→yes
            how?→resource policies, combined with EFS access points and VPC-level networking(VPC peering or shared VPC)
        2 performance modes >>>
            max I/O
            general purpose
        3 throughput modes
            elastic
            provisioned
            bursting
    FSx
        usage >>>
            launch 3rd party high-performance file system on AWS
            it's fully managed service
    Storage Gateway
        usage >>>
            allows you to seamlessly integrate on-premises environments with cloud storage.
            Hybrid Cloud
        File Gateway  
            usage→used that configured S3 buckets are accessible on-prem 
            protocol→NFS and SMB
            working with Glacier?→NO, only S3. You need lifecycle policy to access S3 Glacier.  
        Volume Gateway 
            protocol→iSCSI protocol backed by S3
            2 types >>>
                Cached Volumes 
                    meaning→your primary data is moved to [S3](AWS/Storage/S3.md)
                Stored Volumes 
                    meaning→your entire dataset remains on-premises, asynchronous backups to [S3](AWS/Storage/S3.md)   
        Tape Gateway
    Transfer Family
        usage→fully managed service for file transfer into and out of S3 and EFS using FTP protocol  
    S3
        meaning→Simple Storage Services
        limit of object's size→5TB
        auto scale(Y or N)→yes
        strong read-after-write consistency?→Yes
        has requester pay feature?→Yes
        access control
            ![](https://remnote-user-data.s3.amazonaws.com/T0OG4tDT73Ud3HnbSKzvKyF9plTk6zBkrNKcSMXoiUV-ZXWL6sfb6e9EYdzrmryqAmlllv0HpYqLRzatj2GmS87FnAVf-TPzu0IqZ905IK0YEwewFrWsIlGEnQfRhJg6.png)
            Bucket Policy→account level and user level control
            [IAM](AWS/IAM/IAM.md) Policy→user level control
            ACL→account level contrl 
        Buckets 
            S3 Objects are stored in buckets 
            bucket name requirement→globally unique(crossing all accounts and regions)
            which scope is bucket defined→region level
            private or public by default?;;private
            how to make the entire bucket public→bucket policies
            how to change a single file to be public→Object ACL
        Objects 
            size limit;;up to 5TB
            storage limit;;unlimited
            the important properties of an object >>>
                Key
                Value
                Version ID
                Metadata
                    content-type
                    last-modified
                    etc.
        URLs 
            the usual URL form;;https://bucket-name.s3.Region.amazonaws.com/key-name 
                example: https://acloudguru.s3.us-east-1.amazonaws.com/Ralphie.jpeg 
        Versioning 
            All versions of an object are stored even if you delete it
            can be a great backup tool
            can it be disabled?→once enabled, versioning cannot be disabled ‒ only suspended
            can be integrated with lifecycle rules
            can support MFA
        Retention 
            different version can have different retention mode and period?→Yes
        Storage Classes 
            the 7 storage classes >>>
                Standard
                Standard-IA
                Intelligent-Tiering
                One Zone-IA
                Glacier Instant Retrieval
                Glacier Flexible Retrieval
                Glacier Deep Archive
            what are the key points about Standard-IA compared to Standard >>>
                less storage fee
                but you need to pay to access the data
            which classes have to pay to retrieve data? >>>
                Standard-IA
                One Zone-IA
                The Glacier classes
            what's the difference between Standard-IA and Glacier?→Standard-IA has higher storage fee but lower retrieval fee
            supported class transition >>>
                ![](https://remnote-user-data.s3.amazonaws.com/bhtdz7Ysn1APJJ1gw_nYh0XvX5MvGOovfI7c9MibZJuikCdb5m0PCjaKRwdFSR2dhR9VZe_QkzNlg06BYKumFLFZBF9QLsWfP9U7ziiZDk1k0ha7Xsw4BoK5IvyI_SqQ.png)
            how many days the file has to stay in Standard before the transition to Standard-IA or One Zone-IA using Lifecycle policy?→30 days
            min storage duration >>>
                ![](https://remnote-user-data.s3.amazonaws.com/9Vmz76lvsn7bU6FdoFiOueWyWj6oJoi1DHWY7VOtTTJ472kJ2ia90BDQCQgdqCZ4OTcu6j1NgBmCLEYmxnZwIalKaFtcGMC9m__jR2Xsr0ZQQajHDp_GPi-qsv-BjxRS.jpeg)
        life cycle   
            usage >>>
                means moving objects between different storage tiers
                can be used in conjunction with versioning
                can be applied to current and previous versions
        Object Lock 
            usage→designed to implement a Write Once Read Many (WORM) model, protecting objects from being modified or deleted. It is a crucial tool for safeguarding data against accidental deletion and ensuring compliance with various regulations
            2 modes >>>
                governance mode
                compliance mode
            what is governance mode?→people with special permissions can overwrite or delete an Object t version or alter its lock settings
            what is compliance mode?→a protected object version cannot be overwritten or deleted by any user
        encryption
            how to use policy to enforce server-side encryption?→A bucket policy can deny all PUT requests that don't include the `x-amz-server-side-encryption` parameter in the request header.
        performance
            how you can improve the performance of s3? >>>
                spreading your reads across different prefixes
                    each prefix has a request limit per second
                if you are using SSE-KMS, remind yourself that KMS has limits
                using multipart uploads
                using byte-range fetches when downloading
            Transfer Acceleration? 
                usage >>>
                    enables fast, easy, and secure transfers of files over long distances between your client and your Amazon S3 bucket
                    leverages Amazon CloudFront’s globally distributed AWS Edge Locations
                        as data arrives at an AWS Edge Location, data is routed to your S3 bucket over an optimized network path
                how to choose between it and [CloudFront ](AWS/Infrastructure/CloudFront.md)?→choose CloudFront if file size < 1G, other wise Transfer Acceleration
        replication
            are objects in an existing bucket replicated automatically?→NO!
            are the delete markers replicated by default?→NO!
            Cross-Region Replication
                can replicate cross region?→Yes
                need to create the new bucket in the new region and specify it in the source bucket?→Yes
    DataSync
        usage >>>
            Move large amount of data to and from
                On-premises / other cloud to AWS (NFS, SMB, HDFS, S3 API…) – needs agent
                AWS to AWS (different storage services) – no agent needed
                ![](https://remnote-user-data.s3.amazonaws.com/LJVqOyOF7a5AyPgPkFGd17I0ZbJQZTAR0xdH2KXu-1FbzpgPJW0SQzrqnZpt64MFbUdT5q-rxEQcAkz7n7WhdlKUv_63VkDAihU_LyZiU1Oy1K3QXLk7zCG_prDnpRt9.png)
            On-premises to AWS
                use internet or [Direct Connect](AWS/Network/Direct%20Connect.md)?→you can choose either
    Snowball
        usage→collect and process data at the edge, and migrate data into and out of AWS
        can be imported to Glacier directly?→No.
    price ranking of [S3](AWS/Storage/S3.md), [EBS](AWS/Storage/EBS.md), [EFS](AWS/Storage/EFS.md)?→S3 < EBS < EFS 
 IAM
    IAM
        meaning→Identity and Access Management
        [docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html](https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html)
        ![](https://remnote-user-data.s3.amazonaws.com/vlfxN69vdKwzMJtTQh3yOGo4V5WTu76NPrt1mk3LXVXtSmx76VRpXBfXnOwY4iBNPGmN8h8Fjs8Fld9GamgFJ3EEd_tPjAiqQTxCyARecmohGVnZMzBO4ACPnaPyu6WL.png)
    Principal
    Entity
    Identity
    Resource
    SCP
        meaning→Service Control Policy
        Can SCP be directly attached to an IAM User?→NO. 
        Where can SCP be attached within an organization's structure?→SCP can only be attached to the organization root, to an organizational unit (OU), or directly to an account.  
    Access Key
        usage→Access Keys are secret, just like a password
        Access Key ID→~= username
        Secret Access Key→~= password
    Resource Access Manager
        usage→enables you to easily and securely share AWS resources with any AWS account or within your AWS Organization
        VPC Sharing 
            usage→allows multiple AWS accounts to create their application resources such as  EC2 instances, RDS databases, Redshift clusters, and Lambda functions, into shared and centrally-managed VPCs
        
    Organization
        how to migrate an account from an Organization A to an Organization B? >>>
            Remove the member account from the old organization 
            Send an invite to the member account from the new Organization 
            Accept the invite to the new organization from the member account   
    Microsoft Active Directory
    Trust Policy 
        usage→define which principal entities (accounts, users, roles, and federated users) can assume the role
    IAM Identity Center
        former name→AWS Single Sign-On(SSO)
        usage→provides a single login for users to access multiple AWS accounts within an AWS Organization  
 Security
    KMS
        meaning→Key Management Service
        4 Types of KMS Keys >>>
            AWS Owned Keys
            AWS Managed Key
            Customer Managed Keys created in KMS
            Customer Managed Keys imported
        What are AWS Owned Keys? >>>
            SSE-S3, SSE-SQS, SSE-DDB  
    Maice
        usage >>>
            fully managed data security and data privacy service
            uses machine learning to discover and alert sensitive data
                such as personally identifiable information (PII)
    Shield
        usage→protect from DDoS attack
    WAF 
        
        meaning→Web Application Firewall
        what services can it protect? >>>
            [CloudFront ](AWS/Infrastructure/CloudFront.md) distribution
            [API Gateway  ](AWS/Serverless/API%20Gateway.md)
            [Application Load Balancer ](AWS/Availability%20%26%20Scalability/ELB/Application%20Load%20Balancer.md)
            [AppSync](AWS/Serverless/AppSync.md)
            [Cognito](AWS/Serverless/Cognito.md) [User Pool ](AWS/Serverless/Cognito/User%20Pool.md)  
    GuardDuty
        usage→threat detection service
        how→continuously monitors for malicious activity and unauthorized behavior
        sources >>>
            CloudTrail Management events
            CloudTrail S3 Data Events
            VPC Flow Logs
            DNS logs
    ACM 
        meaning→AWS Certificate Manager
        usage→easily provision, manage and deploy [TLS]() certificates
        can work with [EC2](AWS/Compute/EC2.md) instances?→No
        works with >>>
            [ELB](AWS/Availability%20%26%20Scalability/ELB.md)
            [CloudFront ](AWS/Infrastructure/CloudFront.md)
            [API Gateway  ](AWS/Serverless/API%20Gateway.md)
    STS
        meaning→Security Token Service
        usage→a web service that enables you to request temporary, limited-privilege credentials for users
    Secrets Manager
        usage→helps you manage, retrieve, and rotate database credentials, application credentials, OAuth tokens, API keys, and other secrets throughout their lifecycles.
    AWS License Manager
        usage→a service that makes it easier for you to manage your software licenses from software vendors
    AWS Security Hub 
        usage→a cloud security posture management service that automates best practice  checks, aggregates alerts, and supports automated remediation  
    CloudHSM 
        meaning→Hardware Security Module
    Amazon Inspector
        usage→works with both EC2 instances and container images in Amazon ECR to  identify potential software vulnerabilities and to categorize the  severity of the vulnerabilities  
 Network
    VPC 
        [What is Amazon VPC? Amazon Virtual Private Cloud](https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html)
        It allows users to create an isolated network within the AWS Cloud and provides control over the network environment.  
            customize IP address ranges
            configure routing tables
            manage network gateways 
        uses [Subnet](AWS/Network/Subnet.md) to further segment the network to isolate and manage resources separately  
        scope→VPCs are region specific
        how many VPCs can you have for a region?→up to 5 (adjustable).  
        how can you connect VPCs across regions?→ [VPC Peering](AWS/Network/VPC%20Peering.md)
        What’s the CIDR block of a default VPC?→IPv4 CIDR block: `172.31.0.0/16` (65,536 IPv4 addresses)  
        How many IPv4 and IPv6 CIDR Blocks can you have for a VPC?→Up to `5` IPv4 / IPv6 CIDR Blocks per VPC (adjustable to `50`)  
    AWS IPv6 Support
        Review→Review
        Can a VPC be IPv6 only? No
        A service will be configured for either:
            IPv4 Only
            Dual Stack (IPv4 and IPv6)
            IPv6 Only
        All AWS services support IPv4 
        Not all services or their resources have IPv6 enabled by default
        steps to migrate an IPv4 only VPC to dual stack 
            add new IPv6 CIDR block to VPC 
             create or associate IPv6 Subnets 
                IPv4 subnets cannot be migrated
             update Route Table for IPv6 to IGW
             upgrade Security Group rules to include IPv6 address ranges
             migrate EC2 instance type if it does not support IPv6 
    Internet Gateway
        Outbound Traffic
        Inbound Traffic
            we can use [Security Group](AWS/Network/Security%20Group.md) and [NACL](AWS/Network/NACL.md) to control the types of inbound traffic allowed to reach your resources
        Egress-Only Internet Gateway
            usage→used for VPCs that use IPv6 to enable instances in a private subnet to connect to the Internet or other AWS services  
    NAT Gateway
        What is a NAT Gateway? >>>
            a managed AWS service that enables instances in a private subnet to connect to the internet or other AWS services
            and it can prevent the internet from initiating connections with those instances
    Transit Gateway
        usage >>>
            regional resource used to connect thousands of VPCs and on-premises resources
            ![](https://remnote-user-data.s3.amazonaws.com/CXzHli7HvW1-ceKMIB04o9VpWvbe3OTkphPeVDL9WG6I2VuCzo76pDUtNfES_-7PPL-BEpI0iqxm5ZR6oD5ej_wr2Gk38lJ3Pk2woOp6_IsopSv-1lvszjoZItd9F6Ub.png)
    Subnet
        ![](https://remnote-user-data.s3.amazonaws.com/cDRzf1yJtwPZ-Qyj7CbR1GLv1etoN15WlMAoZVELDA9qxiwC6Gh4VJwNjF5Kf3Oouw-aBPTflv_8n8fmrY8yArLc0X62VVN55UEyMHKyy_QpLwRnxiHXPhXXs7D2AhkQ.png)
        2 types
            public subnet
                direct internet access
                    have a route to an [Internet Gateway](AWS/Network/Internet%20Gateway.md)
                    send or receive data directly from internet
                host resources need public access like [EC2](AWS/Compute/EC2.md)
            private subnet
                dose NOT have direct internet access
                host resources that don't require public access
                    like database or internal services
                If needed, instances in a private subnet can communicate with the internet through a [NAT Gateway](AWS/Network/NAT%20Gateway.md).  
        can a subnet be IPv6 only?→Yes, but this feature is only supported for nitro EC2 instance type
        the range of a subnet’s CIDR block netmask→between /28 to /16  
        IP addresses not allowed to use in a CIDR block→the first 4 and the last 1  
        how many subnets can you have per VPC?→200  
        What’s the CIDR Block of a default subnet?→size of /20, 4096 IPv4 addresses per subnet 
        How many subnets does a default VPC have?→1 per AZ
    Security Group
        What is a security group 
            a security group is a VPC-based resource that works at the [EC2](AWS/Compute/EC2.md) instance level
            act as a virtual firewall/move
        if a EC2 instance has no security group selected, what will it use?→the default security group of the [VPC ](AWS/Network/VPC.md)
        stateless or stateful→stateful
        What does stateless mean
            if you send a request from your instance, the response traffic for that request is allowed to flow in regardless of inbound security group rules.
            similarly, responses to allowed inbound traffic are allowed to flow out, regardless of outbound rules.
        act at what level→instance level
        kind of rules→Inbound and outbound 
        have both allow and deny rules?→no, only allow rules
        scope→bound by a [VPC ](AWS/Network/VPC.md), which means that a security group can have multiple instances in different [Subnet](AWS/Network/Subnet.md)s.
        What are the types you can choose for a security group rule?
            a preset traffic type(eg. HTTP/S, Postgres)
            a custom Protocol(TCP/UDP) and Port Range
        destination type >>>
            IPv4 CIDR Block
            IPv6 CIDR Block
            Another security group 
        default values of inbound and outbound rules of a security group >>>
            all inbound traffic is blocked
            all outbound traffic is allowed
        
    Route Table
        contains a set of rules directing network traffic within a [VPC ](AWS/Network/VPC.md)
            these rules are called routes 
                Routes define how traffic is directed between subnets, internet, and other network resources  
            every VPC created with a main route table  
            each subnet in the VPC is automatically associated with this main route table 
        How many route tables can a subnet have?
            Only one, but multiple subnets can be associated with a single route table
    NACL
        both ALLOW and DENY rules?→Yes
        stands for→Network Access Control List
        usage→act as a virtual firewall 
        stateful or stateless→stateless.
        work on which level→[Subnet](AWS/Network/Subnet.md) level
        how the rules of NACLs are evaluated→by rule number, from lowest to highest
        difference between a NACL and a [Security Group](AWS/Network/Security%20Group.md)?
            NACLs have both allow and deny rules
            security group only have allow rules
            With NACLs, you can block a single IP address, which is not possible with security groups  
        kind of rules→both inbound & outbound rules 
        convention used to define  rule number
            it is recommended to work in increments of 10 or 100
        The highest rule number in a NACL
            32766
        What happens when a client connects to a server?→A random port is generated from the ephemeral port range (like 1024-65535) to become the client's source port.  
        What needs to be allowed in the network ACL to connect to a service running on an instance?→Both inbound traffic on the port that the service is listening on and outbound traffic from ephemeral ports.  
        What are the rules of a default NACL?→All inbound and outbound traffic is allowed.  
    VPC Peering
        usage >>>
            a feature that allows us to connect different [VPC ](AWS/Network/VPC.md)s securely 
            such that their resources communicate with each other as if they reside in the same VPC
            ![](https://remnote-user-data.s3.amazonaws.com/jKNANzekj0KEz4ZV69e73lJi4jtzRZpkk72N7Tvi9AslOV75w2Qj7GsMlG8sGjcLcL1WN4pSrduHxZXzMV08aFkNf18x8pmG2BXC3bBXDGLuwSEFfcP0jMDDHOw2asPO.png)
            uses AWS global network to route traffic between VPCs
            does not require any additional physical hardware 
            all communication happens through private IP addresses  
            never go outside the private IP space and use the internet  
        Is vpc peering transitive?→NO!
        Intra-Region
            use [Security Group](AWS/Network/Security%20Group.md) to allow traffic to and from the security group of the peering vpc
        Inter-Region
            use [CIDR]()
        data transfer charges are applied when data is transferred from one AZ to another AZ or AWS Region  
            ![](https://remnote-user-data.s3.amazonaws.com/9W8UIEkZVUjkxdAAeq8NhLXwmFEMEzfCBIRuIel46pvBydO-3vtouRMUSxSdiot2dWK-3-Mg3fr1yoUma1e9NAbUOSrsUIAmaMm2urZfYuG6xriaA_ucdwhEK5yQXwHO.png)
    PrivateLink
        [docs.aws.amazon.com/vpc/latest/privatelink/what is privatelink.html](https://docs.aws.amazon.com/vpc/latest/privatelink/what-is-privatelink.html)
        What is PrivateLink? >>>
            VPC-based service that creates a private connection between VPCs, AWS services, and on-premises resources in an AWS Region
            can connect services in one AWS account, different accounts, and AWS partner-supported services
        key feature→Enables secure connections without the need for an IGW, NAT, VPN, or AWS Direct Connect connection.
    VPC Endpoint
        [Reduce Cost and Increase Security with Amazon VPC Endpoints | AWS Architecture Blog](https://aws.amazon.com/blogs/architecture/reduce-cost-and-increase-security-with-amazon-vpc-endpoints/)
        Interface Endpoint 
            usage >>>
                allows you to privately connect your VPC to supported AWS services via [PrivateLink](AWS/Network/PrivateLink.md)
                ![](https://remnote-user-data.s3.amazonaws.com/rYAWswdB1GBOegmKzeAEQpv9YX9A-C7uGXXwAwph4wAkPyboT1GiOm2XJ_eBCzXBtNoti-JOwZBD6dovhzMzuYH1aUXrTp-hlh6j6F_xiVQI6U36f6M-23PQhwCWTaPs.png)
            how to access a Interface Endpoint from another VPC or On-Prem resources? >>>
                VPN
                [VPC Peering](AWS/Network/VPC%20Peering.md)
                [Direct Connect](AWS/Network/Direct%20Connect.md)
        Gateway Load Balancer Endpoint 
            usage→send traffic to a fleet of virtual appliances using private IP addresses
        Gateway Endpoint 
            used to send traffic to [S3](AWS/Storage/S3.md) or [DynamoDB](AWS/Database/DynamoDB.md)
    VPC Flow Logs
        usage→capture information about IP traffic that ingresses or egresses your network interfaces within a VPC
        can be set in 3 levels >>>
            VPC level
            Subnet level
            network interface level
    VPC Traffic Mirroring
        usage→capture and inspect traffic within a VPC  
    VPN
        Site-to-Site VPN 
            usage >>>
                ![](https://remnote-user-data.s3.amazonaws.com/EoNDtsyNffR7qOx2-6KmnYq6mZNXn1lwBjrmPRLksNbOYJKHm-eEHhQw2MOluzajMMt-xHYjVripDsKxk1brrz6Cua_jJzDfmnN3idEfVFho_uA2kqvnTFE4gGyyzCyK.png)
                a connection between our on-premises resources and VPC on the cloud
                    use public internet to communicate
                    secure and encrypted
            what gateway do customer side use?→[Customer Gateway](AWS/Network/VPN/Customer%20Gateway.md)
            what gateway do AWS side use?→[Virtual Private Gateway](AWS/Network/VPN/Virtual%20Private%20Gateway.md)
        Virtual Private Gateway
        Customer Gateway
        Client VPN
    Direct Connect
        usage→dedicated private connection from our on-premises network to the VPC 
        how→uses the AWS Direct Connect location
        types >>>
            Dedicated Connection
                physical connection given to a single customer
            Hosted Connection
                using AWS Direct Connect Partner
        is data in transition encrypted?→No, we can add a VPN to encrypt the data
        Virtual Interface >>>
            public
            private
            transit
    Direct Connect Gateway
        usage→used to connect multiple [VPC ](AWS/Network/VPC.md)s in any [Region](Region.md) to connect to [Direct Connect](AWS/Network/Direct%20Connect.md) via [Virtual Private Gateway](AWS/Network/VPN/Virtual%20Private%20Gateway.md)
        
    Virtual Networking Card
        3 types >>>
            ENI
            EN
            EFA
        ENI
            meaning→Elastic Network Interface  
            usage >>>
                basic networking
                low cost
                multiple ENIs for separate management/logging/production networks
            when a EC2 instance stopped, will the ENI be detached?→No, the ENI will stay attached even if you stopped your EC2 instance  
        EN
            meaning→Enhanced Networking
            usage→when you need speed between 10 and 100 Gbps
            2 types >>>
                ENA
                VF
            ENA
                meaning→Elastic Network Adapter  
                speed→10 100 Gbps  
            VF
                meaning→Intel 82599 Virtual Function Interface
                speed→up to 10 Gbps  
        EFA
            meaning→Elastic Fabric Adapter  
            usage >>>
                when you need to accelerate
                    High performance computing(HPC)
                    Machine Learning applications
                OS-bypass
    EC2 Instance Connect Endpoint 
        usage→allow us to connect to instances available in private subnets over the internet by creating a private tunnel  
    Route 53
        usage→A highly available, scalable, fully managed and Authoritative [DNS](), and also a [Domain Registrar]() 
        Alias Record 
            usage→maps a hostname to an AWS resource
            difference than [CNAME ]()→can work on both root and non root domain
            type→always [AAAA ]() or [A ]()
            can destination being [EC2](AWS/Compute/EC2.md)?→No
        Routing Policies
            Simple
            Weighted
            Failover
            Latency based
            Geolocation
            Multi-Value Answer
            Geoproximity
        resolve on-premises resources
            ![](https://remnote-user-data.s3.amazonaws.com/CejGebsvNwESFp5wldgahYKeg8bYNE_vVcaXY9N64BOy6PnLS59aJsCa8E-ZEFgA-T20Bhyc4nVopoHc5_pv4lkT-Z1nZtaw8_R29nnuwwZJCqurJLUKW9k_rx83AlM2.png)
            ![](https://remnote-user-data.s3.amazonaws.com/wKci2iW5Y0-TFZDJDxBmMjmhRVWPwyrECMOyIZ85X6UJnO7PwOfeRhal9o1TDgQpCucfPQTMoH3KXlDZR1Etf0iOio0fxkdZAx_AKbJGKw7IyiUZN6MteqgNTlmiaqRO.png)
    Elastic IP
        used in only one [Region](Region.md)?→Yes
        can be transferred from one account to another?→Yes
 Database
    RDS
        meaning→Relational Database Service
        auto backup
            retention→the auto backup has 1 to 35 days of retention
            default to enable→yes
            how to disable?→set retention to 0 to disable
            cross-region?→yes
        can RDS take auto snapshots?→No. it has to be triggered manually
            retention→as long as you want
            cross-region?→yes
        read replica
            cross-region?→yes
        RDS custom for Oracle
            usage→you can customize the underlying Oracle database as well as the Operating System
    Aurora
        2 types of Aurora endpoint >>>
            Cluster Endpoint(Writer Endpoint)
            Reader Endpoint
        Aurora Serverless
            usage→a configuration of Aurora that automatically adjusts its database capacity based on application demands.
        Aurora Global Database Cluster 
            usage→designed for globally distributed applications, allowing a single Amazon Aurora database to span multiple AWS Regions. It replicates your data with no impact on database performance, enables fast local reads with low latency in each Region, and provides disaster recovery from Region-wide outages
        backup
            automatically enabled?→Yes
        Babelfish for Aurora PostgreSQL 
            usage→Run Microsoft SQL Server applications on PostgreSQL with little to no code change
    Read Replica
        usage→A read-only copy of your primary database in the same AZ, cross-AZ, or cross-region. It's useful for read-heavy application.
        how many can you have? >>>
            RDS: 5
            Aurora: 15
        asynchronously or synchronously?→asynchronously. So, there is a delay
        is there charge replicating data across [Region](Region.md)?→Yes
        if the master database is not encrypted what about the replicas?→must be not encrypted 
        if the master database is encrypted what about the replicas?→must be encrypted
        read replica vs. multi-AZ vs. multi-region >>>
            ![](https://remnote-user-data.s3.amazonaws.com/O7fZXF24JBu52Vg5Y19_JVonIcVSLl0VxF7MX5plrR55eiIVEXwI7XuhhiNubtiO0uOp4PDBTsKIeFerxq8PSYg6jdpNOdJHASgSH9C-79akUAiDd-pr-YUe7KVYCi__.png)
    DynamoDB
        Is auto scaling enabled in a DynamoDB table by default?→No, you have to create it using AWS CLI  
        Global Tables
            usage→replicate a table across multiple AWS regions
        DynamoDB Stream 
            usage→captures a time-ordered sequence of item-level modifications in any Amazon DynamoDB table and stores this information in a log for up to 24 hours
        Point-In-Time Recovery 
            usage→DynamoDB backs up your table data automatically with per-second granularity so that you can restore to any given second in the preceding 35 days
    DAX
        meaning→Amazon DynamoDB Accelerator
        usage→a fully managed, highly available, in-memory cache for DynamoDB that delivers up to a 10x performance improvement  
    OLAP
        meaning→Online Analytical Processing
        requirement→optimized for complex queries against large data sets  
    OLTP
        meaning→Online Transaction Processing  
        requirement→read and write data frequently
    IOPS
        meaning→input/output operations per second  
    ElastiCache
        main reason to choose Memcached than Redis→multi-thread
 Monitoring
    AWS Config
        usage >>>
            Helps with auditing and recording compliance of your AWS resources
            record configurations and changes over time  
    EventBridge 
        usage→used to deliver a near real-time stream of system events that describe changes in some AWS resources
        integrated with 3rd-party SaaS services?→Yes
    CloudTrail 
        usage→records actions performed by principle against AWS resources within your account
        log files encrypted by default?→Yes
            which encryption method by default?→S3 SSE
    CloudWatch 
        Metric 
            usage→a variable to monitor(eg. CPUUtilization, NetworkIn...)
        Namespace 
            usage→[Metric ](AWS/Monitoring/CloudWatch/Metric.md) belongs to Namespaces
        Dimension 
            usage→is a attribute of a [Metric ](AWS/Monitoring/CloudWatch/Metric.md)
        Custom Metric 
            usage→for the RAM for example
    CloudWatch Metrics Stream 
        usage→continuously stream CloudWatch metrics to a destination of your choice
        destinations >>>
            [Kinesis Data Firehose ](AWS/Application%20Integrat%20ion/Kinesis%20Data%20Firehose.md)
            3rd party: Splunk, Datadog, Dynatrace
    CloudWatch Logs 
        Log group
            usage→arbitrary name, representing an application
        Log Stream
            usage→instances within application / log files / containers
        destinations >>>
            [S3](AWS/Storage/S3.md)
            [Kinesis Data Streams](AWS/Application%20Integrat%20ion/Kinesis%20Data%20Streams.md)
            [Kinesis Data Firehose ](AWS/Application%20Integrat%20ion/Kinesis%20Data%20Firehose.md)
            [Lambda](AWS/Serverless/Lambda.md)
            [OpenSearch](AWS/Analytic/OpenSearch.md)
        encrypted by default?→Yes
        S3 Export 
            is it real time?→No, takes up to 12 hours to become available to export
        
    CloudWatch Logs Insights 
        can query different AWS accounts?→Yes
    CloudWatch Alarm
 Analytic
     Athena 
        usage→a serverless query service to analyze data stored in S3  
        what query language does it use→the standard SQL  
        recommended data format→Apache Parquet or ORC  
     EMR 
        stands for→Elastic MapReduce
        usage→helps creating Hadoop Clusters to analyze and process vast amount of data  
        why using it instead of Hadoop >>>
            it controls the provisioning and configuration
            integrated with Spot instances
     Glue 
        usage→managed extract, transform, and load (ETL) service
        Glue Data Catalog↔read the metadata of data sources using Glue Data Crawler  
        Glue Job Bookmarks↔prevent re-processing old data  
        Glue DataBrew↔visual only, no code needed
        Glue Streaming ETL↔clean and transform streaming data in real-time  
        Glue Studio’s visual canvas→low code visual interface for building ETL, but still targeting developer
     Data Lake 
        meaning→central place to have all your data for analytics purposes
     Lake Formation 
        usage→fully managed service that makes it easy to setup a data lake in days
        built on top of→[Glue ](AWS/Analytic/Glue.md)
     Flink 
        usage→Flink (Java, Scala or SQL) is a framework for processing data streams  
     OpenSearch
        name used before→ElasticSearch
        usage >>>
            In DynamoDB, queries only exist by primary key or indexes…  
            With OpenSearch, you can search any field, even partially matches  
        2 mode >>>
            managed cluster
            serverless cluster
     QuickSight
        usage→Serverless machine learning-powered business intelligence service to create interactive dashboards  
     Redshift
        usage→used for OLAP
        based on→PostgreSQL
        data storage→Columnar
        2 modes >>>
            Provisioned cluster
            Serverless cluster
        2 types of node >>>
            Leader node
            Compute node
        cross-region snapshot copy
            possible?→yes
    Redshift Spectrum
        usage→used to query data that is already in S3 without loading it  
    Data Pipeline
        usage→a service designed to reliably automate the regular movement and processing of large data streams or collections between AWS services, or between AWS and your on-premises resources  
    MSK
        meaning→Managed Streaming for Apache Kafka
        usage→fully managed AWS service for running and building Apache Kafka data streaming applications  
 Machine Learning
    Rekognition
        usage→Find objects, people, text, scenes in images and videos using ML
    Transcribe
        usage→automatically convert speech to text
    Polly
        usage→Turn text into lifelike speech using deep learning
    Translate
        usage→Natural and accurate language translation
    Lex
        usage >>>
            Automatic Speech Recognition (ASR) to convert speech to text
            same technology that powers Alexa
            helps build chatbots, call center bots
    Connect
        usage→Receive calls, create contact flows, cloud-based virtual contact center
    Comprehend
        usage→Natural Language Processing
    Comprehend Medical
        usage→uses advanced machine learning models to accurately and quickly identify medical information
    SageMaker
        usage→a fully managed machine learning service designed for developers and data scientists to build, train, and deploy ML models quickly and simply using standard tools   
    Kendra
        usage→fully managed document search service powered by Machine Learning
    Personalize
        usage→fully managed ML service to build apps with real-time personalized recommendations
    Textract 
        Automatically extracts text, handwriting, and data from any scanned documents using AI and ML
 Application Integration 
    Kinesis Data Firehose 
        usage→It is designed to ingest streaming data and load it into specified destinations.
        can be integrated with Lambda functions?→You can write Lambda functions and integrate it with Data Firehose to request additional, customized processing of the data before it is sent downstream. However, this integration is primarily used for stream processing and not the actual consumption of the data stream.  
        destinations >>>
            Amazon [S3](AWS/Storage/S3.md)
            Amazon [Redshift](AWS/Analytic/Redshift.md)
            Amazon [OpenSearch](AWS/Analytic/OpenSearch.md)Service
            Splunk
            HTTP endpoint: Datadog, Dynatrace, LogicMonitor, MongoDB, New Relic, and Sumo Logic 
        can send data to [DynamoDB](AWS/Database/DynamoDB.md)?→No
    Kinesis Data Streams
        usage→is used to aggregate, buffer, and reliably store data from producers until a consumer is ready to process it. It's meant for real-time data processing  
        data type used→IT infrastructure log data, application logs, social media, market data feeds, and web clickstream data.  
    SNS
        usage→used when you want to send one message to many receivers
        integrated with 3rd-party SaaS services?→No.
    SQS
        meaning→Simple Queue Service
        usage→Enables loosely coupled, scalable, and reliable communication between different application components. It acts as a highly available buffer for data exchanged between these components  
        Delivery Delay 
            default value→default is 0
            max value→can be set up to 15 minutes
        message size limit→up to 256 KB
        encrypted?:>in transit by default, but you can add at-rest
        Message retention 
            default value→4 days
            available range→1 minute 14 days  
        Polling 
            Short Polling 
                meaning→The consumer receives an immediate response, but the queue might not be checked frequently enough to catch newly available messages  
            Long Polling 
                meaning→The consumer waits for up to 20 seconds for the queue to have a message, reducing the need for frequent, potentially wasteful checks.  
            default→Short Polling
        Visibility Timeout 
            meaning→When a consumer receives a message from an Amazon SQS queue, the message remains in the queue but becomes temporarily invisible to other consumers. This temporary invisibility is controlled by the visibility timeout, a mechanism that prevents other consumers from processing the same message while it is being worked on.  
        Dead-Letter Queue 
            usage→a special type of message queue that temporarily stores messages that a software system cannot process due to errors  
        FIFO Queue 
            default processing speed→300 messages per second
            batch maximum→10, so 3000 messages per second
            guarantee exactly-once processing?→Yes 
    MQ 
        usage→a Message broker service allowing easier migration of existing applications to the AWS Cloud  
        2 supported engines >>>
            Apache ActiveMQ
            RabbitMQ
    AWS Batch
        usage→a fully managed service that allows you to efficiently run batch computing workloads in the cloud  
    Step Function
        usage→low-code platform that allows users to design and deploy distributed applications and process automations using a visual workflow interface  
 Availability & Scalability 
    Availability
        meaning→the percentage of time that an application or system is operational and performing as expected  
    Durability
        meaning→refers to the percentage likelihood that a given object or data will not be inadvertently lost by AWS over the course of a year  
    Scalability
        meaning→the ability to handle greater loads by adapting its resources  
     ELB
        meaning→Elastic Load Balancer  
        works on multiple region?→No. only in one region
         which load balancer can have EIP attached to it?:>[Network Load Balancer ](AWS/Availability%20%26%20Scalability/ELB/Network%20Load%20Balancer.md)
        which one support content-based routing?→[Application Load Balancer ](AWS/Availability%20%26%20Scalability/ELB/Application%20Load%20Balancer.md)
        Application Load Balancer 
            dynamic port mapping?→Yes
            url based routing?→Yesd
        Network Load Balancer 
            if the target is specified by Instance ID, how the traffic will be routed?→traffic is routed to instances using the primary private IP address specified in the primary network interface for the instance
            if the target is specified by IP address, which network interface can you use?→any private IP address from one or more network interfaces
        Gateway Load Balancer 
            usage→enable you to deploy, scale, and manage virtual appliances, such as firewalls, intrusion detection and prevention systems, and deep packet inspection systems.
    Auto Scaling Group 
        Launch Template 
            usage→a template that an auto scaling group uses to launch EC2 Instances
            one launch template can be used by multiple auto scaling groups?→Yes
            one auto scaling group can have many launch template?→No, only one
            can you modify a launch template after creation?→No
            versioned?→Yes
        Termination Policy 
            default termination policy >>>
                ![](https://remnote-user-data.s3.amazonaws.com/QJP_hMqoT_NVelEElGaPmOL4pQJlnPse2zCC-Qtdcget-nJpdRoDj6SZC9kH692oC549B3zUQHy-XlZKua8a-F5gDneVfsGwGuUGyqFpYiaPeuhecpU05yzLXRMYPs0B.png)
 Cost Management
    Cost Explorer
        usage→help you gain insights into your AWS costs and usage patterns over time
            how→it lets you view and analyze your historical spending data, forecast future costs, and identify cost-saving opportunities.  
        can you programmatically query your cost and usage data?→YES
    Cost Optimization Hub
        usage→makes recommendations on resource rightsizing, idle resource deletion, Savings Plans, and Reserved Instances  
    S3 Analytics Storage Class analysis
        usage→analyze storage access patterns to help you decide when to transition the right data to the right storage class
        kind of transition→STANDARD to the STANDARD_IA
    Trusted Advisor 
        usage→checks for Amazon EC2 Reserved Instances that are scheduled to expire  within the next 30 days or have expired in the preceding 30 days  
        renew automatically?→No
    Compute Optimizer
        usage→recommends optimal AWS Compute resources for your workloads to reduce  costs and improve performance by using machine learning to analyze  historical utilization metrics.  
 Disaster & Recovery
    AWS Backup
        usage→fully managed service that provides a centralized and cost-effective solution for managing and automating data backups across various AWS services
    RPO
        meaning→Recovery Point Objective
    RTO
        meaning→Recovery Time Objective
        [RPO](AWS/Disaster%20%26%20Recovery/RPO.md) vs. [RTO](AWS/Disaster%20%26%20Recovery/RTO.md) >>>
            ![](https://remnote-user-data.s3.amazonaws.com/XnnFlm7j5IrCYZm7y_hzjjPXa4YZGuPRPCfecA7lfxoWG1OcxTXGffOrEFPRpdEm_5ElrCuT0LBHDWWh_sEfuRgrgteb7qnvTSMTbBr21Ji9OlB6k0BNfeLUfBVNDdyP.png)
    Disaster Recovery Strategies
        Backup and Restore
        Pilot Light
        Warm Standby
        Multi Site Approach
        ![](https://remnote-user-data.s3.amazonaws.com/cQn2d-xQEfw73e9IoF9LYJzF1hbzHfBCUrAGsGzjRAmqhx3ydGjSCc4l0TFqFBGyQX6tm3fW1yd1RKFKWDTVFUNFEuc5baByTHGBSyRdcF4SNknv3CVc0XCf8Nh4fJbg.png)
 Other 
    Amplify  
        usage→A set of tools and services that helps you develop and deploy scalable full stack web and mobile applications  
    AppFlow
        usage→Fully managed integration service that enables you to securely transfer data between SaaS(eg. Salesforce, SAP...) applications and AWS
    Instance Scheduler
        usage >>>
            AWS solution deployed through CloudFormation (not a service)
            Automatically start/stop your AWS services to reduce costs (up to 70%)
    Pinpoint
        usage→Scalable 2-way (outbound/inbound) marketing communications service
    SES
        meaning→Simple Email Service
    SSM
        meaning→Systems Manager
        Parameter Store
            usage→allows you to store and retrieve application parameters in a secure manner  
        Maintenance Windows
            usage→Defines a schedule for when to perform actions on your instances  
        Patch Manager
            usage >>>
                Automates the process of patching managed instances
                Supports EC2 instances and on-premises servers
        Run Command
            usage >>>
                Execute a document (= script) or just run a ``command
                Run command across multiple instances (using resource groups)
                No need for SSH
        Session Manager
            usage >>>
                Allows you to start a secure shell on your EC2 and on-premises servers
                No SSH access, bastion hosts, or SSH keys needed, so better security
        Default Host Management Configuration
            usage→automatically applies the necessary Systems Manager permissions, activates inventory collection, and enables patching without needing to alter existing IAM roles manually
    X-Ray
        usage→AWS X-Ray is a service designed to provide real-time visibility into the performance and behavior of your multi-tiered or microservices applications. It helps you identify failures, bottlenecks, and network latency within your application architecture  
    MGN
        meaning→Application Migration Service
        usage→the primary migration service recommended for lift-and-shift migrations to AWS
 Scenarios 
    when talking about bringing AWS to your data center, which service should you consider?→[Outpost](AWS/Compute/Outpost.md)
    For migrating existing applications with messaging systems in place, which would you likely to consider?→[MQ ](AWS/Application%20Integrat%20ion/MQ.md)
    when asked about [OLTP](AWS/Database/OLTP.md)→[RDS](AWS/Database/RDS.md)
    when asked about [OLAP](AWS/Database/OLAP.md)→[Redshift](AWS/Analytic/Redshift.md)
    If you want to block a single IP address in a VPC, which service should you use?→[NACL](AWS/Network/NACL.md)
    Set up a relational database and a disaster recovery plan with an RPO of 1 second and RTO of less than 1 minute.→[Aurora Global Database Cluster ](AWS/Database/Aurora/Aurora%20Global%20Database%20Cluster.md)
    Implement an automated backup for all the EBS Volumes.→Use [Data Lifecycle Manager ](AWS/Storage/Data%20Lifecycle%20Manager.md) to automate the creation of EBS snapshots.
    Monitor the available swap space of your EC2 instances→Install the [CloudWatch ](AWS/Monitoring/CloudWatch.md) agent and monitor the `SwapUtilizationmetric`.
    Implement a 90-day backup retention policy on [Aurora](AWS/Database/Aurora.md)→use [AWS Backup](AWS/Disaster%20%26%20Recovery/AWS%20Backup.md) 
    Implement a fanout messaging.→Create an [SNS](AWS/Application%20Integrat%20ion/SNS.md) topic with a message filtering policy and configure multiple [SQS](AWS/Application%20Integrat%20ion/SQS.md) queues to subscribe to the topic.
    A database that has a read replication latency of less than 1 second.→Use Amazon Aurora with cross-region replicas.
    Retrieve a subset of data from a large CSV file stored in the [S3](AWS/Storage/S3.md) bucket.→Perform an S3 Select operation based on the bucket’s name and object’s key.
    Encrypt [EBS](AWS/Storage/EBS.md) volumes restored from the unencrypted EBS snapshots→Copy the snapshot and enable encryption with a new symmetric CMK while creating an EBS volume using the snapshot.
    Limit the maximum number of requests from a single IP address.→Create a rate-based rule in [WAF ](AWS/Security/WAF.md) and set the rate limit.
    Grant the bucket owner full access to all uploaded objects in the [S3](AWS/Storage/S3.md) bucket.→Create a [Bucket Policy](AWS/Storage/S3/access%20control/Bucket%20Policy.md) that requires users to set the object’s ACL to bucket-owner-full-control.
    Protect objects in the [S3](AWS/Storage/S3.md) bucket from accidental deletion or overwrite.→Enable versioning and MFA delete.
    Secure the web application by allowing multiple domains to serve SSL traffic over the same IP address.→Use AWS Certificate Manager to generate an SSL certificate. Associate the certificate to the CloudFront distribution and enable Server Name Indication ([SNI]())
    Control the access for several [S3](AWS/Storage/S3.md) buckets by using a [Gateway Endpoint ](AWS/Network/VPC%20Endpoint/Gateway%20Endpoint.md) to allow access to trusted buckets.→Create an endpoint policy for trusted S3 buckets.
    Provide short-lived access tokens that act as temporary security credentials to allow access to AWS resources.→Use [STS](AWS/Security/STS.md)
    Encrypt and rotate all the database credentials, API keys, and other secrets on a regular basis.
        Use [Secrets Manager](AWS/Security/Secrets%20Manager.md) and enable automatic rotation of credentials.
    Accelerate the transfer of historical records from on-premises to AWS over the Internet in a cost-effective manner.→Use [DataSync](AWS/Storage/DataSync.md) and select Amazon S3 Glacier Deep Archive as the destination.
    Minimize the data transfer costs between two EC2 instances.→Deploy the EC2 instances in the same Region.
    Import the SSL/TLS certificate of the application.→Import the certificate into AWS Certificate Manager or upload it to AWS IAM.
    AWS services that can be used for buffering or throttling to handle traffic variations >>>
        Amazon [SQS](AWS/Application%20Integrat%20ion/SQS.md)(Simple Queue Service)
        Amazon Kinesis
        AWS [Lambda](AWS/Serverless/Lambda.md)
        Amazon [API Gateway  ](AWS/Serverless/API%20Gateway.md)
    How to share a service through [PrivateLink](AWS/Network/PrivateLink.md)? >>>
        create a [Network Load Balancer ](AWS/Availability%20%26%20Scalability/ELB/Network%20Load%20Balancer.md) in your [VPC ](AWS/Network/VPC.md) as the service frontend
        create vpc endpoint service using this NLB
        as a consumer, create an [Interface Endpoint ](AWS/Network/VPC%20Endpoint/Interface%20Endpoint.md) and connect to the service
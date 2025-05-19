---
tags:
  - aws/serverless
---
## Triggers
* S3, Kinesis, and EventBridge are common triggers
## Limit
* memory: 128 MB – 10GB (1 MB increments) 
* time: 15 minutes of runtime
* and others ...
## Concurrency and Throttling
* reserved concurrency
	*  ThrottleError - 429
* cold start
* provisioned concurrency
## SnapStart
* function is invoked from a pre-initialized state instead of from scratch
## Customization At The Edge
* [[CloudFront Function]]
* [[Lambda@Edge]]
## VPC
* By default, your Lambda function is launched outside your own VPC
* to run the Lambda in you VPC, You must define the VPC ID, the Subnets and the Security Groups. Lambda will create an [[ENI]] in your [[Subnet]]
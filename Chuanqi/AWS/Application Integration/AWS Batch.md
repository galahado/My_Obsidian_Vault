---
tags:
  - aws/application_integration
---
## Launching 
[[Fargate]] is the recommended way of launching most batch jobs
EC2 is the best choice when
- Custom AMI is needed
- more than 4 vCPUs needed
- 30 GB or more memory needed
- GPU needed
- ARM-based Graviton CPU needed
- using Linux Parameters
- large number of jobs

## Comparison with AWS [[Lambda]] 
- Lambda has 15-minute execution time limit, which Batch doesn't have
- Lambda has limited disk space
- Lambda has limited runtimes, but Batch uses Docker, so any runtime can be used
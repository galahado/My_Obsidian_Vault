---
tags:
  - aws/iam
sr-due: 2025-05-19
sr-interval: 3
sr-ease: 250
---
## Why IAM Roles are useful
* some AWS service will need to perform actions on your behalf
* to do so, we will assign permissions to AWS services with IAM Roles
* ![[Pasted image 20250516134741.png]]
* similar to [[User]], it's an identity with Identity-based Policies attached to it
* can be used to provide access to any entity within or outside the AWS account
* a role can be used by multiple entities at the same time to get the required access
* roles provide the access for a limit amount of time in the form of sessions
## Policies associated to Roles
* trust policy
* permission policy
* ![[Pasted image 20250329220410.png]]
## how it Works
* entity call `AssumeRole` api to get the role credential
* then use the credential received to access the resource
* ![[Pasted image 20250329220849.png]]
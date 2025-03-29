Reference:[Educative](https://www.educative.io/courses/aws-solutions-architect-associate/iam-policies) 
* ### what is a IAM policy
	* An IAM policy is a **JSON document** attached to the AWS resource that is used by the logged-in entity to authenticate itself or to the AWS resource to which secure access is required.
* ### Types of IAM Policy
	* [[Identity-based Policies]]: Define permissions of [[IAM Identity|IAM Identities]]. These are attached with [[IAM Identity|IAM Identities]].
	* [[Resource-based Policies]]: Define the access that an entity has to the AWS resources. These are attached to the IAM resources to which an entity requires access.
	* [[Permissions Boundaries]]: Specify the highest level of permissions that an identity-based policy can grant to an entity.
	* [[Session Policies]]: Specify the highest level of permissions that an identity-based policy can grant to an entity when a temporary session is created for an entity.
	* Organizations Service Control Policies (SCPs): Specify the highest level of permissions that an identity-based policy can grant to an entity at the organizational level.
	* Access Control Lists (ACLs): Define the level of access an external AWS account can have to the AWS resources. Unlike all other types of IAM policies, ACLs are not in JSON format.
	* ![[Pasted image 20250328131055.png]]
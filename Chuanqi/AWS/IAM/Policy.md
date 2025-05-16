## what is a Policy
* An IAM policy is a **JSON document** attached to the AWS resource that is used by the logged-in entity to authenticate itself or to the AWS resource to which secure access is required.
## A Typical policy
* ![[Pasted image 20250516133730.png]]
* _Sid_: an identifier for the statement (optional) 
- _Effect_: whether the statement allows or denies access (Allow, Deny)
- _Principal_: account/user/role to which this policy applied to
- _Action_: list of actions this policy allows or denies
- _Resource_: list of resources to which the actions applied to
- _Condition_: conditions for when this policy is in effect (optional)
## Types of Policy
* _Identity-based Policies_
	* define permissions of [[Identity]] 
	* attached with [[Identity]]
	- ![[Pasted image 20250329081245.png|400]]
* _Resource-based Policies_: Define the access that an entity has to the AWS resources. These are attached to the IAM resources to which an entity requires access.
	* ![[Pasted image 20250328131055.png]]
* restricting policy
	* _Permission Boundary_
		- ![[Pasted image 20250330122308.png]]
	* _Session Policy_
		* it sets the permission upper bound during a session when a role is assumed
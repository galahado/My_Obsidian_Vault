## what is a Policy
* An IAM policy is a **JSON document** attached to the AWS resource that is used by the logged-in entity to authenticate itself or to the AWS resource to which secure access is required.
## Types of Policy
* Identity-based Policies
	* define permissions of [[IAM Identity|IAM Identities]] 
	* attached with [[IAM Identity|IAM Identities]]
	- ![[Pasted image 20250329081245.png|400]]
* Resource-based Policies: Define the access that an entity has to the AWS resources. These are attached to the IAM resources to which an entity requires access.
	* ![[Pasted image 20250328131055.png]]
* restricting policy
	* Permission Boundary
		- ![[Pasted image 20250330122308.png]]
	* Session Policy
		* it sets the permission upper bound during a session when a role is assumed
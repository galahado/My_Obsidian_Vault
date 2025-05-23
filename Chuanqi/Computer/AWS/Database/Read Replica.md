---
tags:
  - aws/database
---
## Definition
Read Replica::A read-only copy of your primary database in the same AZ, cross-AZ, or cross-region.
<!--SR:!2025-05-26,3,250-->
	It's useful for read-heavy application
## How many ca you have
How many read replicas can you have?
***
* RDS: 5
* Aurora: 15
<!--SR:!2025-05-26,3,250-->
## Short come
It's replicated asynchronously
So, there is a delay
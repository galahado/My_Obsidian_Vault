---
tags:
  - aws/database
---
## Definition
Read Replica::A read-only copy of your primary database in the same AZ, cross-AZ, or cross-region.
<!--SR:!2025-06-07,9,250-->
	It's useful for read-heavy application

How many read replicas can you have?
?
* RDS: 5
* Aurora: 15

## Short come
It's replicated asynchronously
So, there is a delay
<!--SR:!2025-06-05,7,250-->
---
aliases:
  - SQS
tags:
  - aws/application_integration
---
* [Lab: Getting Started with Amazon Simple Queue Service (SQS)](https://www.educative.io/cloudlabs/getting-started-with-amazon-simple-queue-service-sqs)
* [Lab: Working with SQS FIFO Queues](https://www.educative.io/cloudlabs/working-with-sqs-fifo-queues)
* SQS Enables loosely coupled, scalable, and reliable communication between different application components. It acts as a highly available buffer for data exchanged between these components.
* delivery delay :: default is 0, can be set up to 15 minutes
* message size limit :: up to 256 KB
* encrypted? :: in transit by default, but you can add at-rest
* Message retention :: default is 4 days, available range is 1 minute - 14 days
* Polling
	* Short Polling: The consumer receives an immediate response, but the queue might not be checked frequently enough to catch newly available messages.
	* Long Polling: The consumer waits for up to 20 seconds for the queue to have a message, reducing the need for frequent, potentially wasteful checks.
	* polling default :: short polling
		<!--SR:!2025-04-28,3,250-->
* When a consumer receives a message from an Amazon SQS queue, the message remains in the queue but becomes temporarily invisible to other consumers. This temporary invisibility is controlled by the ==visibility timeout==, a mechanism that prevents other consumers from processing the same message while it is being worked on.
* Standard Queues: Ideal when high throughput is paramount. However, they don't guarantee strict message order and might deliver duplicates. This trade-off makes them suitable for tasks where occasional out-of-order processing or duplicates don't critically impact the outcome, such as sending notifications or processing log data.
* FIFO Queues: Prioritize strict message order and guarantee exactly-once delivery. They're essential when the sequence of messages is critical, such as financial transactions or order processing. However, they offer lower throughput than standard queues. The limit is 300 messages per second. 
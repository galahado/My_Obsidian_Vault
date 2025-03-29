---
deck: Profession::AWS
tags:
  - aws/big_data
---
<!-- clozeblock-start oid="Obsflro0yWL4bthfKMW8fnk5"-->
MSK = ==Managed Streaming for Apache Kafka==
<!-- clozeblock-end-->

<!-- clozeblock-start oid="ObsTV3tMONz2zOk8FxCh5ZG0"-->
Amazon ==MSK== is a ==fully managed AWS service for running and building Apache Kafka data streaming applications==.
<!-- clozeblock-end-->

## Control Plane
Service handles control-plane operations: creation, updating, and deletion of clusters.

## Data Plane
Leverage the same Apache Kafka data-plane operations for producing and consuming data.

## Automatic Recoveries
Service detects and automatically mitigates most of the common failures.

## Encryption
<!-- clozeblock-start oid="ObsMeRWomVIq6jLiljaKLDQw"-->
Integrates with Amazon ==KMS== for SSE needs. Uses ==TLS 1.2== for in-transit communications.
<!-- clozeblock-end-->

## Logging
Push broker logs to CloudWatch, S3, or Kinesis Data Firehose. API calls are logged to CloudTrail.
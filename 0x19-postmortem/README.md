Issue Summary:
The online banking platform experienced an outage from 2:15 PM EST to 4:45 PM EST on June 2, 2024, lasting approximately 2.5 hours. This impacted 68% of the platform's active users, who were unable to access their accounts or conduct any transactions during this time. The root cause was a database server failure due to an unforeseen memory leak.

Timeline:
- 2:13 PM EST - The monitoring system detected a rapid increase in database server CPU and memory utilization, triggering an alert.
- 2:15 PM EST - The on-call engineer investigated the alert and confirmed the database server had become unresponsive, causing the online banking platform to become unavailable.
- 2:20 PM EST - The engineering team began analyzing server logs and database performance metrics to identify the root cause. Initial assumptions pointed to a potential DDoS attack or a configuration issue.
- 2:45 PM EST - After ruling out external factors, the team identified a memory leak within the database application as the likely culprit, causing the server to become overwhelmed and unresponsive.
- 3:00 PM EST - The incident was escalated to senior engineering leadership and the incident response plan was initiated.
- 3:15 PM EST - A database backup was initiated, and the team began the process of migrating user traffic to a secondary database server.
- 4:00 PM EST - The migration to the secondary server was completed, and the online banking platform was gradually restored for users.
- 4:45 PM EST - Full service was restored, and the root cause investigation continued.

Root Cause and Resolution:
The root cause of the incident was a memory leak within the database application. Over time, the database server's memory usage had steadily increased due to a bug in the database management software, causing the server to become unresponsive when it ran out of available memory. The engineering team identified the specific code module responsible for the memory leak and developed a patch to address the issue.

Corrective and Preventative Measures:
To prevent similar incidents in the future, the following corrective and preventative measures will be implemented:

1. Implement more robust memory monitoring and alerting on all database servers to quickly identify and address memory-related issues.
2. Conduct a comprehensive review of the database application code to identify and fix any other potential memory leaks or performance bottlenecks.
3. Enhance the incident response playbook to include more detailed steps for quickly identifying and mitigating database-related outages, including the ability to seamlessly failover to secondary database servers.
4. Provide additional training to the engineering team on best practices for database performance optimization and troubleshooting.
5. Implement automated load testing and chaos engineering practices to proactively identify and address potential weaknesses in the online banking platform's infrastructure.

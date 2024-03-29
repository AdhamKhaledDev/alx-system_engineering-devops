Spreading the Load: A More Robust Web Infrastructure

This design upgrades the web infrastructure to handle more traffic and improve fault tolerance. It achieves this by distributing tasks across multiple servers.

Load Balancing and Distribution

A dedicated server called a load balancer acts as a traffic cop. It uses a Round Robin algorithm to distribute incoming requests evenly between two web servers. This ensures no single server gets overloaded, leading to smoother performance. Round Robin is dynamic, allowing adjustments to be made on the fly based on server capabilities.

Active-Passive Database Setup

This design utilizes a Primary-Replica database cluster. The Primary server handles all write requests (adding or modifying data), while the Replica server handles read requests (accessing existing data). This reduces the workload on the Primary server and improves response times. Importantly, the Replica is constantly updated with changes made on the Primary server, ensuring data consistency.

Addressing Weaknesses

While this design offers improvements, there are still areas for enhancement:

    Single Points of Failure (SPOFs): If the Primary database server, load balancer, or application server fails, critical functionalities are impacted.
    Security Concerns: Data transmission lacks encryption (SSL certificate), making it vulnerable to eavesdropping. Additionally, the absence of firewalls leaves the system open to unauthorized access.
    Missing Monitoring: Without monitoring tools, it's difficult to identify and address potential issues with individual servers.

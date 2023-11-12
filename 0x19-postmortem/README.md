# Postmortem Report

<p align="center">
<img src="https://drive.google.com/file/d/1WG9oBbmlBAy2oFD_gLg95tW6RjHR4Lib/view?usp=sharing" width=100% height=100% />
</p>


#### Issue Summary:

Duration of Outage: 4 hours, from 02:00 AM to 06:00 AM (EAT)
Impact: The outage affected our e-commerce platform, causing a complete service disruption. Approximately 30% of our users experienced issues, including inability to access the website, slow loading times, and failed transactions.

#### Timeline

- Issue Detected: 02:00 AM (UTC)
- Detection: Monitoring alerts indicated a spike in server error rates and a sudden drop in website traffic.
- Actions Taken: The incident response team immediately started investigating the issue, focusing on the server infrastructure and database performance. Initial -assumptions pointed to a potential DDoS attack.
- Misleading Paths: While investigating, some time was spent analyzing the network traffic for signs of a DDoS attack, which turned out to be a false lead. This -diversion delayed the identification of the true root cause.
- Escalation: The incident was escalated to the senior engineering team and the security team, given the initial suspicion of a security-related incident.
- Resolution: The incident was resolved at 06:00 AM (UTC) after identifying and addressing the root cause.


#### Root Cause and Resolution:

The root cause of the outage was traced back to a misconfigured server update that inadvertently disabled critical security modules within the web application firewall (WAF). This misconfiguration allowed a sudden surge in legitimate traffic to flood the server, causing a degradation in service and eventual failure.

To resolve the issue, the incident response team reconfigured the WAF to its proper settings and implemented a rate limiting mechanism to protect against excessive traffic spikes. The security team also conducted a thorough review of the system to ensure no vulnerabilities were exposed.

#### Corrective and Preventive Measures

To prevent a similar outage in the future, we will take the following actions:

Automate Configuration Management: Implement automated configuration management tools to ensure that server updates do not inadvertently disable critical security modules.

Enhanced Monitoring: Improve our monitoring system to provide real-time alerts for any anomalies in web traffic or server performance.

Documentation and Training: Review and enhance our documentation to include best practices for server configuration. Additionally, provide training for the operations team to better understand the implications of configuration changes.

Regular Security Audits: Schedule regular security audits to identify potential vulnerabilities and weaknesses in our system.

Incident Response Plan: Revise and update our incident response plan to include more specific steps for investigating and mitigating server configuration-related issues.

Tasks to address the issue:

Task 1: Automate server configuration management using Ansible or a similar tool.
Task 2: Implement real-time traffic monitoring with alerts for sudden spikes.
Task 3: Conduct a comprehensive review of documentation and create a training program for operations staff.
Task 4: Schedule bi-monthly security audits.
Task 5: Update the incident response plan with a focus on server configuration-related incidents.
In conclusion, this postmortem highlights the importance of careful server configuration management, monitoring, and rapid incident response. By implementing the corrective and preventative measures outlined, we aim to minimize the likelihood of similar outages and provide a more reliable service to our users.

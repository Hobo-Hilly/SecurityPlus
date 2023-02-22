This is the second part of the notes on "The Devil is in the Details" saga. AKA Security+ notes and vocabulary.

OBJECTIVE:

SUB-OBJECTIVE:

Configuration Validation:
Configuration validation through automation and scripting can ensure that new equipment has all the proper settings, applications, and drivers as existing equipment.

Automated courses of action:
Automated courses of action can be accomplished through scripting, so that certain events trigger a series of
responses or actions. Automated courses of action can also be used to obtain updates and patches by scheduling the software to check for them at certain times. Automated courses of action usually cannot verify that 
equipment has the same settings, applications, and drivers as existing equipment.

Continuous monitoring:
Continuous monitoring can be employed to ensure that any device on the network cannot have their configuration
settings changed, but it will not ensure the configurations match.

Templates:
Templates provide standardized documentation for several issues. Such issues can include security analysis reporting, threat and vulnerability identification, and impact assessment, among others. Templates can also be used to configure operating systems (OSs) to ensure that certain settings are automatically configured. Templates are usually used as a first time configuration measure, but often cannot be reapplied because doing so would result in loss of any user changes that have been made.

Detail:
ABAP (Advanced Business Application Programming)

RESOURCES: https://support.sap.com/en/alm/solution-manager/expert-portal/change-diagnostics/configuration-validation.html

---------------------------------------------------------------------------------------------------------------

Objective:
Given a scenario, implement cybersecurity resilience
Sub-Objective:
Backup and Restoration

What are the 3 types of backups?

There are three primary data backup strategies - full backup, differential backup, and incremental backup.

Full backups comprise entire data backup sets, regardless of already existing backups or data change circumstances.

Differential backups comprise data files that have changed since the most recently completed full backup.

Incremental backups comprise data files that have changed since the most recently completed incremental backup.

Let's explore the backup process behind all three approaches further...

RESOURCE: https://www.acronis.com/en-us/blog/posts/incremental-differential-backups/

-------------------------------------------------------------------------------------------

Objective:
Explain the importance of physical security controls
Sub-Objective:
Blockers, Cages and Data Destruction

Faraday cage:
A faraday cage can prevent the leaking of electromagnetic transmissions. A Faraday cage is a security measure that protects against eavesdropping or signals leaving the room. The "cage" is wire mesh or other conductive material woven together to protect the room. 

Air gap:
Creating an air gap is the process of disconnecting the device from any network.

Protected cable distribution:
A protected cable distribution is one in which all cables are enclosed and protected from eavesdropping.

USB data blocker:
A USN data blocker is used to prevent data transfer through the port while still allowing for power charging using the
port.

RESOURCE: https://www.gamry.com/application-notes/instrumentation/faraday-cage/

-------------------------------------------------------------------------------------------------------

Objective:
Given a scenario, implement public key infrastructure

Sub-Objective:
Certificate Types and Formats

User certificate:
User certificates are assigned to individual users, much like machine/computer certificates are assigned to individual machines. Users must provide their assigned certificate for authentication prior to accessing certain resources. This certificate may be provided to web sites, hosts, and any authentication mechanism. 

Machine/Computer certificates:
By contrast, machine/computer certificates are assigned to a designated machine. During authentication, the computer (or machine) requesting access must supply the certificate assigned to it

Domain validation:
Domain validation certificates are very common. They are low-cost and are often used by web admins to offer TLS to a domain. They are validated using only the domain name.

Wildcard certificate:
Wildcard certificates allow you to create a certificate in a domain and use that same certificate for multiple subdomains.

Detail:
For example, if you had mail.mysite.com, ftp.mysite.com, and www.mysite.com, you could issue a wildcard certificate for mysite.com, and have it cover all the subdomains. Without the wildcard certificate, you would have to issue a certificate for each subdomain.

Self-signed certificates:
Self-signed certificates are digitally signed by the user. This is often provided by
Microsoft Internet Information Services (IIS). The self-signed certificate will transmit a public key, but that key will be rejected by browsers. Self-signed certificates are not as secure because they are not issued by a third party

Detail:
You should also be familiar with email certificates, SAN fields, code signing certificates, extended validation certificates, root certificates, and domain validation certificates.

Extended Validation Certificates:
Extended validation certificates, as the name suggests, provide additional validation for HTTPS web sites. The
certificate provides the name of the legal entity responsible for the web site. These certificates require the most effort by the CA to validate and provide a higher level of trust than domain validation because they are validated using more than the domain information

Email Certificates:
Email certificates are used to secure email. One such example is Secure Multipurpose Internet Mail Extensions
(S/MIME), which provides a digital "signature" for that email. 

Root Certificates:
Root certificates define the root CA and validate all other certificates issued by that CA. They are at the top of the CA hierarchy. They are self-signed and are closely guarded.

Subject Alternative Name (SAN):
Subject Alternative Name (SAN) is a field in the certificate definition that allows you to stipulate additional information, such as an IP address or host name, associated with the certificate.

 Code Signing Certificates:
 Code signing certificates are used for code that is distributed over the Internet, including programs or applications. Code signing certificates verify the code's origin and help the user trust that the claimed sender is indeed the originator.

RESOURCE: https://www.globalsign.com/en/blog/what-is-certificate-based-authentication

-----------------------------------------------------------------------------------------------

Objective:
Given a scenario, implement host or application security solutions

Sub-Objective:
Endpoint Protection

Air gap:
Air gapping in network security means that you physically separate secure networks and equipment from insecure
networks and equipment. For example, you would not want to have your development or R&D platforms on the same
network as your production equipment. Data cannot move between air gapped and insecure systems unless it is
physically transferred on media, like a disk or USB stick. Air gapping is an important security concept for IoT devices as well.

Sandboxing:
Sandboxing is developing an application outside of the production environment. Sandboxing can also be useful to test a legacy operating system that may not have security patches. Virtual machines are often used to create the sandbox. Memory allocation issues may be discovered during sandbox testing but are not directly a part of the sandbox functionality.

Tokens and Cards:
Tokens and cards include items that a user must possess in order to gain access to the building, room, or network resource. They include one-time password that authenticates the user and smart cards. They are an integral part of authentication, but do not provide internetwork protection.


RESOURCE: https://en.wikipedia.org/wiki/Air_gap_(networking) , https://en.wikipedia.org/wiki/Sandbox_(computer_security)

----------------------------------------------------------------------------------------------

Objective:
Given a scenario, analyze potential indicators associated with network attacks

Sub-Objective:
Network Service Attacks

Content Inspection:
The purpose of content inspection is to search for malicious code or suspicious behavior.

Load Balancing:
The purpose of load balancing is to distribute the workload across multiple devices. Often DNS servers are load
balanced to ensure that DNS clients can obtain DNS information as needed. Other services are load balanced as well. Load balancers optimize and distribute data workloads across multiple computers or networks.

Internet or Web proxy:
The purpose of an Internet or Web proxy is to filter and forward Web content anonymously.

Spam Filter:
The purpose of a spam filter is to identify and block unwanted messages. Spam filters should be configured to prevent employees from receiving unsolicited e-mail messages.

All-in-One Security Appliance:
Another type of hardware that is similar to a spam filter is an all-in-one security appliance. This device filters all types of malicious, wasteful, or otherwise unwanted traffic.

Detail:
Many all-in-one security appliances include a component that performs content inspection and malware inspection.
These appliances usually also include a URL filter feature that allows administrators to block and allow certain
Websites. For example, the URL filter in an all-in-one security appliance could be configured to restrict access to peerto-peer file sharing Websites

NETWORK SECURITY PLAYBOOK
RESOURCE: https://media.wiley.com/product_data/excerpt/79/11180611/1118061179-83.pdf 




Definitions and Details for the Security+ Exam


OBJECTIVE: Given a scenario, install and configure wireless security settings

Detail: These are simply authentication protocols that could be implemented.

RADIUS federation: 
RADIUS Federation is a group of RADIUS servers that assist with network roaming. The servers will validate the login credentials of a user belonging to another RADIUS server's network.

EAP-TLS:
Extensible Authentication Protocol-Transport Layer Security (EAP-TLS) EAP manages key transmissions, and TLS uses X.509 digital certificates for authentication.

EAP-TTLS:
In Extensible Authentication Protocol-Tunneled Transport Layer Security (EAP-TTLS) EAP manages key transmissions, and TTLS is an extension of TLS (which authenticates the server). TTLS encapsulates the TLS session, allowing for authentication of the client.

EAP-FAST:
Extensible Authentication Protocol-Flexible Authentication via Secure Tunneling (EAP-FAST) is used in wireless and point-to-point networks. EAP manages key transmissions, and FAST creates a TLS tunnel to be used in authentication through a protected access credential.

Detail:
Captive portals are associated with public-access Wi-Fi networks. Once you select the network, you are directed to a web page where you must sign on and agree to a policy, such as an acceptable use or fair use policy. Once your agreement is accepted, you can proceed to use the network. These portals are typically found in a public place, such as a hotel, coffee shop, or airport. Wi-Fi Protected Setup (WPS) allows a wireless access point to broadcast a PIN, which connecting devices use for authentication. It is not a difficult task to break the PIN using a packet sniffer. IEEE 802.1x is standard for network access control. It allows you to apply security to an individual port on a switch with the result of only allowing authenticated users access to that port.

RESOURCE: https://www.interlinknetworks.com/whitepapers/Intro_802_1X_for_Wireless_LAN.htm


----------------------------------------------------------------------
OBJECTIVE:
Explain different threat actors, vectors, and intelligence sources
SUB-OBJECTIVE:
Threat Intel and Research Sources

RESOURCE:
RFCs:
A Request for Comments (RFC) is a numbered document, which includes appraisals, descriptions, and definitions of
online protocols, concepts, methods, and programs. RFCs are administered by the IETF (Internet Engineering Task
Force). RFCs occur when a new technology is accepted as a web standard, which become useful when discovering
new vulnerabilities and potential threats in existing internet standards.

TTP:
TTP stands for tactics, techniques, and procedures, and is a concept that is used to identify patterns of behavior which can be employed to defend against certain strategies and threat vectors utilized by malicious actors. TTP is not solely concerned with existing Internet standards.

STIX:
Structured Threat Information Expression (STIX) defines a common language for discussion threat intelligence and
serializes it into a coherent format. 

TAXII:
TAXII stands for Trusted automated exchange of indicator information and was designed to specifically support STIX information by defining how cyber threat information can be shared via services and message exchanges. 

Detail:
STIX and TAXII are not solely concerned with existing Internet standards.

RESOURCE:
https://www.nfon.com/en/get-started/cloud-telephony/lexicon/knowledge-base-detail/request-for-comments-rfc

---------------------------------------------------------------------
OBJECTIVE: 
Given a scenario, implement authentication and authorization solutions

SUB-OBJECTIVE:
Authentication Types

RADIUS:
Remote Authentication Dial-In User Service (RADIUS) provides centralized remote user authentication, authorization, and accounting.
Detail:
RADIUS is defined by RFC 2138 and 2139. A RADIUS server acts as either the authentication server or a proxy client that forwards client requests to other authentication servers. The initial network access server, which is usually a VPN server or dial-up server, acts as a RADIUS client by forwarding the VPN or dial-up client's request to the RADIUS server. 

RADIUS is the protocol that carries the information between the VPN or dial-up client, the RADIUS client, and the RADIUS server. RADIUS will support 802.1x authentication.
The centralized authentication, authorization, and accounting features of RADIUS allow central administration of all aspects of remote login. The accounting features allow administrators to track usage and network statistics by maintaining a central database.

VPN:
A virtual private network (VPN) is a technology that allows users to access private network resources over a public network, such as the Internet. Tunneling techniques are used to protect the internal resources. A VPN by itself does not provide centralized authentication, authorization, and accounting.

DMZ:
A demilitarized zone (DMZ) is an isolated subnet on a corporate network that contains resources that are commonly accessed by public users, such as Internet users. The DMZ is created to isolate those resources to ensure that other resources that should remain private are not compromised. A DMZ is usually implemented with the use of firewalls.

Single sign-on (SSO):
Single sign-on is a feature whereby a user logs in once to access all network resources.

RESOURCE:
https://networkencyclopedia.com/remote-authentication-dial-in-user-service-radius/

------------------------------------------------------------------------------------

OBJECTIVE:
Summarize authentication and authorization design concepts

SUB-OBJECTIVE:
Authentication Factors

CER:
Crossover error rate (CER) is the point where FAR and false FRR are equal. Generally, a lower CER value would
indicate a more accurate system. CER is primarily used to compare biometric authentication systems.

FAR:
False acceptance rate (FAR) is one way to measure the accuracy of a biometric authentication system. It measures
how likely it would be that an unauthorized user is granted access to the system. Expressed as a ratio, it is the number of unauthorized users who were incorrectly allowed access to the protected system divided by the number of authentication attempts. A false acceptance can occur, for example, when an unauthorized individual with a dirty finger uses a fingerprint reader and is allowed access to the system. This could happen because the system was not precise enough when matching the authorized user.

FRR:
By contrast, false rejection rate (FRR) measures how likely it would be that an authorized user is denied access to the system. It is also expressed as a ratio, calculated as the number of authorized users who were denied access to the protected system divided by the number of authentication attempts. False rejections can occur if the system settings are too precise, or if users are not trained properly on biometric login procedures.

HOTP:
Hashed One Time Passwords (HOTP) are secure passwords used with hardware tokens.

TOTP:
Time-based One Time Passwords (TOTP) are issued for a specific period of time. Once used, or once the time expires, the TOTP is no longer valid.

DETAILS:
HOTP and TOTP are two types of one-time passwords, i.e., they can only be used once. As an example of a TOTP, a
user forgets a password to a website. When the user clicks the "Forgot Password" link, the website would send a new temporary password to the user but would limit how long the temporary password would be valid. Other considerations include ABAC, proximity cards, smartcards, tokens, CAC, PIV, and file security.

ABAC:
Attribute-based access control (ABAC) goes beyond authentication based on username and password. It evaluates
other factors, such as time of day and location of logons. ABAC would also be invoked if a user has read access to files but is attempting to edit or delete files remotely.

SMARTCARDS:
Smartcards have permissions and access information stored on the card. The greatest concern with smart cards is theft. Once stolen, the thief can use the card in the same manner as the rightful owner. As an example, if the user has access to a highly secure area by using the smartcard, a thief will have the same access when using the stolen card.

RFID:
Proximity cards are a type of smartcard that incorporate Radio Frequency Identification (RFID) chips. These chips contain authentication information and transmit over a very short range. When the authentication device is within range of the proximity card, and the information transmitted is correct,authentication
is granted.

Hardware TOKENS(Physical Tokens):
Hardware tokens (or physical tokens) include such physical devices as wireless key cards, key fobs, and
smart cards. Software tokens are a component of two-factor authentication systems. They are usually embedded on a device and used to authenticate the user.

CAC(Common Access Card):
A common access card (CAC) is a smart card issued by the Department of Defense (DoD) to military personnel and contractors. They incorporate a picture, integrated chip, two bar codes, and a magnetic strip. They can be used for visual identification and for login.

PIV(Personal Identity Verification):
A personal identity verification (PIV) smart card is issued to non-military federal employees and contractors. They incorporate a picture, integrated chip, two bar codes and a magnetic strip. They can be used for visual identification and
for login.

DETAIL:
File system security should always be set to only allow what is absolutely essential for the user to do their job. This is
also known as the principle of least privilege.

RESOURCE:
https://www.sciencedirect.com/topics/computer-science/crossover-error-rate

--------------------------------------------------------------------------------------

OBJECTIVE:
Summarize the basics of cryptographic concepts

SUB-OBJECTIVE:
Standard Crypto Algorithms

MD5:
The MD5 algorithm produces 128-bit checksums to verify integrity of data from a remote user. When you are given the MD5 hash for a file, you can verify that the file has not been tampered with. MD5 derives the hashing function for the challenge response of the Challenge Handshake Authentication Protocol (CHAP). 

DETAIL:
MD5 is a hashing algorithm. If the MD5 hash values of a file do not match, the file has been compromised. You should discard the compromised file. When two completely different files produce the same hash values, this is referred to as a collision. When using Secure Sockets Layer (SSL) to download a file for which you have the MD5 hash, you cannot verify the MD5 hash until after the file is downloaded.

DES(Data Encryption Standard)
Data Encryption Standard (DES) uses 56-bit encryption keys. Secure Hashing Algorithm (SHA) produces 160-bit
checksums. Advanced Encryption Standard (AES) uses 128-bit, 192-bit, and 256-bit encryption keys.

DETAIL:
All algorithms are ciphers. Some ciphers are stronger than others. You must consider strong versus weak ciphers and how they will affect your organization. Depending on your organizational needs, you may need to select a weaker cipher for performance reasons. As a security professional, you should ensure that you fully research any ciphers you consider and understand the advantages and disadvantages of each cipher.

RESOURCE:
http://practicalcryptography.com/hashes/md5-hash/

-------------------------------------------------------------------------------------

OBJECTIVE:
Given a scenario, install and configure wireless security settings
SUB-OBJECTIVE:
Access and Authentication Protocols

Wired Equivalent Privacy (WEP):
Wired Equivalent Privacy (WEP) is the most widely used Wi-Fi security protocol in the world.
This is a function of age, compatibility, and the fact that it appears first in the protocol selection menus in many router control panels.

WEP was the Wi-Fi security standard in 1999. The first versions of WEP weren’t particularly strong, even for the time they were released,
because U.S. restrictions on the export of various cryptographic technology led to manufacturers restricting their devices to only 64-bit encryption. When the restrictions were lifted, it was increased to 128-bit.
Despite the introduction of 256-bit WEP, 128-bit remains one of the most common implementations.

Over time numerous security flaws were discovered in the WEP standard.
As computing power increased, it became easier and easier to exploit those flaws.
As early as 2001, proof-of-concept exploits were floating around, and by 2005, the FBI gave a public demonstration where they cracked WEP passwords in minutes using freely available software.
Despite various improvements, the WEP system remains highly vulnerable.
Systems that rely on WEP should be upgraded or replaced.

Wi-Fi Protected Access (WPA):
Wi-Fi Protected Access (WPA) was the direct response and replacement to the increasingly apparent vulnerabilities of the WEP standard. The most common WPA configuration is WPA-PSK (Pre-Shared Key).
The keys used by WPA are 256-bit, a significant increase over the 64-bit and 128-bit keys used in the WEP system.

Some of the significant changes implemented with WPA included message integrity checks in order to determine if an attacker had captured or altered packets passed between the access point and client, and the Temporal Key Integrity Protocol (TKIP).
TKIP employs a per-packet key system that was radically more secure than the fixed key system used by WEP.
The TKIP encryption standard was later superseded by Advanced Encryption Standard (AES).

WPA, like its predecessor WEP, has been shown via both proof-of-concept and applied public demonstrations to be vulnerable to intrusion.
Interestingly, the process by which WPA is usually breached is not a direct attack on the WPA protocol, but by attacks on a supplementary system that was rolled out with WPA which was designed to make it easy to link devices to modern access points.

Wi-Fi Protected Access II (WPA2)
WPA has, as of 2006, been officially replaced by WPA2.
One of the most significant changes between WPA and WPA2 is the mandatory use of AES algorithms and the introduction of CCMP (Counter Cipher Mode with Block Chaining Message Authentication Code Protocol) as a replacement for TKIP. However, TKIP is still preserved in WPA2 as a fallback system and for interoperability with WPA.

Currently, the primary security vulnerability to the actual WPA2 system requires the attacker to already have access to the secured Wi-Fi network in order to gain access to certain keys and then perpetuate an attack against other devices on the network.
Due to that, the security implications of the known WPA2 vulnerabilities are limited almost entirely to enterprise level networks and deserve little to no practical consideration in regard to home network security.

In conclusion,
If you need to remember something from all this, it’s this: WPA2 is the most secure protocol and AES with CCMP is the most secure encryption.
In addition, WPS should be disabled as it’s very easy to hack and capture the router PIN, which can then be used to connect to the router.

RESOURCE: https://www.scorpiones.io/articles/wifi-protocols

--------------------------------------------------------------------------------------------
OBJECTIVE: 
Given a scenario, analyze potential indicators associated with application attacks
SUB-OBJECTIVE:
Session Hijacking

REPLAY ATTACK:
In a replay attack, the attacker monitors the traffic stream in a network. The attacker maliciously repeats or delays the transmission of valid data over the network. Setting a threshold time value on each system ensures that the computer only accepts packets within a specified time frame. A packet received after the specified time will indicate the chances of a replay attack. Digital timestamps are attached to a document at document creation.

SIDE CHANNEL ATTACK:
In a side channel attack, the attacker gains information about the encryption algorithms from the cryptosystem that is implemented in the network. The attacker can use information, such as power consumption, electromagnetic radiations, and sound to break into a system. The side channel attack can also be based on the measurement of time taken to perform a computation.

CIPHER-ONLY ATTACK:
A ciphertext-only attack is primarily focused on discovering the encryption key by gathering multiple encrypted
messages and then trying to deduce a pattern from the encrypted messages. A known-plaintext attack primarily
focuses on the discovery of the key used to encrypt the messages. The key can be used to decrypt and read
messages. The attacker has access to multiple instances of plaintext and ciphertext for several messages.


RESOURCE:
https://www.kaspersky.com/resource-center/definitions/replay-attack

-------------------------------------------------------------------------------------------

OBJECTIVE:
Explain the importance of policies to organizational security
SUB-OBJECTIVE:
Personnel

 Interconnection Security Agreement (ISA):
An interconnection security agreement (ISA) is an agreement that specifies the security requirements for an
interconnection between two organizations. It has nothing to do with personnel management.

CLEAN DESK:
Clean desk policies, background checks, and exit interviews should all be a part of general security policies relating to personnel management. Clean desk policies address the insecurity of printed material that is sitting on an employee's desk. When printed material is left sitting on someone's desk, someone walking by could scrutinize the documents or even photograph them with a smartphone. Clean desk policies should also limit how many documents are on the desk
(what they are currently working on, for example) and require secure storage, such as locking documents away at night or during breaks.

BACKGROUND CHECKS:
Background checks should be an integral element of general security policies. A background check should be
performed prior to giving an employee access to a computer or the network. Exit interviews should occur whenever an individual leaves the organization. It is a prime opportunity to listen and learn, to ask questions, and to determine whether organizational modifications need to be made. Exit interviews ensure that organizational assets that have been issued to personnel are returned

Non-Disclosure Agreement(NDA): A non-disclosure agreement (NDA) is an agreement that an employee or contractor signs indicating that he or she will not share certain information about the organization or work they are performing.

RESOURCE: https://csrc.nist.gov/glossary/term/interconnection_security_agreement

---------------------------------------------------------------------------------------------

OBJECTIVE:
Summarize the techniques used in security assessments

SUB-OBJECTIVE:
Vulnerability Scanning

DETAIL:
The active approach encompasses everything an organization does to foil system breaches, while the passive (or monitoring) approach entails all the ways the organization oversees system security.The passive approach allows security personnel to monitor which operating systems are in use; what is being sent to, from and within the system; which services are available; and where parts of the system may be vulnerable to security threats. The active approach, on the other hand, offers much information about system and application vulnerabilities.

ACTIVE:
To perform a more in-depth analysis than other scan types, you would perform an active scan. An active scan is also considered an intrusive scan as it usually provides more meaningful results on the scan.

PASSIVE:
A passive scan impacts the hosts and network less than other scan types. A passive scan is a non-intrusive scan,
meaning you are probing for the weaknesses but not exploiting them.

CREDENTIALED SCAN:
To include the appropriate permissions for the different data types, you should perform a credentialed scan. A noncredentialed scan does operate within the context of a user account. The appropriate permissions may be needed to be able to access all the data and applications on devices. Permissions and access to the entire hosts are provided with a credentialed scan.

AGENT-BASED SCAN:
Although not always possible, limiting a scan to a particular operating system can be done with an agent-based scan. With an agent-based scan, agents are installed on devices. These agents then send scan reports back to a central agent.

SERVER-BASED SCAN: 
In a server-based scan, the scanner runs from a server that then scans all the devices. Agent-based scanning is
considered better than server-based scanning because it has less impact on the network. But an agent-based scan
usually has more of an impact on the device on which the agent is installed.

RESOURCE: https://www.computerworld.com/article/2569669/two-sides-of-vulnerability-scanning.html

---------------------------------------------------------------------------------------------------

OBJECTIVE:
Summarize the techniques used in security assessments

SUB-OBJECTIVE:
Application Developement Processes

BINARY FILE:
In application development, the binary executable contains low-level instructions that target a particular computer system or platform. Generally, a binary file is a non-text file, that can only be read and interpreted by the computer. Binary files are a collection of bytes. When binary files are opened, they are processed byte by byte. The bytes in a binary file can represent executable programs, sometimes referred to as ‘binaries’, but they can also represent media, such as pictures or sound.

SOURCE FILE:
In application development, a source file contains human-readable programming code that will be later compiled or directly interpreted by a system to perform the required actions.

SCRIPT FILE:
A script file is a source file that is directly interpreted by the target system, rather than requiring an additional compilation step before running.

FRAMEWORK:
A framework is a modular component that provides additional functionality for an application or developers of that application.

RESOURCE:
https://careerkarma.com/blog/what-is-binary-file/

-----------------------------------------------------------------------------------

OBJECTIVE:
Explain the security concerns associated with various types of vulnerabilities

SUB-OBJECTIVE:
Platform Vulnerabilities

ZERO-DAY VULNERABILITY:
Zero-day vulnerabilities are often unknown or known only to an attacker who is able to exploit that vulnerability. Patches are not readily available until the manufacturer can develop a solution.

SQL INJECTION:
A SQL injection describes an input validation issue in the front-end of an application that allows attackers to directly manipulate the underlying data source using structured query language (SQL).

DDoS:
A distributed denial-of-service (DDoS) attack uses multiple sending devices to take a single host or group of hosts offline. The sending devices are typically a group of compromised devices, known as a botnet, that are controlled by central Command and Control (C&C) server.

RESOURCE: https://www.trellix.com/en-us/security-awareness/cybersecurity/what-is-a-zero-day-exploit.html

---------------------------------------------------------------------------------------
OBJECTIVE:
Given a scenario, implement secure network designs

SUB-OBJECTIVE:
Load Balancing

NAC:
Network Access Control is a method used to verify the health of a device before allowing connection to the network.

VIRTUAL IP:
The load balancer has a virtual IP address that the application is mapped to and the balancer distributes the work to the servers with different IP addresses.

AFFINITY SCHEDULING:
Affinity scheduling is used to assign work to the CPUs when multiple CPUs are used in a system. It sends all work for a specific job to the same processor when configured.

NAT: 
Network Address translation is a method used to convert private IP addresses to public addresses and vice versa.

RESOURCE: https://www.evidian.com/products/high-availability-software-for-application-clustering/how-a-virtual-ip-address-works/

--------------------------------------------------------------------------------------------------------

OBJECTIVE:
Compare and contrast different types of social engineering techniques

SUB-OBJECTIVE:
Social Engineering Principles and Influence Campaign

DETAILS:
The social engineering principles and their descriptions should be matched in the following manner:

Authority – the attacker claims to have certain power, often by claiming to be an official representative

Intimidation – the attacker frightens or bullies the personnel so that the information the attacker needs is revealed

Consensus – the attacker attempts to trick personnel into releasing information by proving that it is fine to release the information based on the actions of others

Scarcity – the attacker attempts to trick personnel based on people's tendency to place a higher value on resources that are not in great supply

Urgency – the attacker makes the situation seem like an emergency

Familiarity – the attacker tends to create a false sense of acquaintance with personnel by implying that the 
attacker knows someone the personnel knows or works with

Trust – the attacker gains the confidence or faith of the personnel

RESOURCE: https://cyberkrafttraining.com/2021/01/21/social-engineering-principles/

----------------------------------------------------------------------------------------------------

OBJECTIVE:
Explain the importance of policies to organizational security

SUB-OBJECTIVE:
User Training

DETAILS:
Security professionals must understand the purpose and usage of administrative controls. The administrative controls must be matched in the following manner:

Separation of duties – Ensures that sensitive operations are divided among multiple users

Auditing – Ensures that user actions are monitored

AUP – Ensures that users understand the acceptable and unacceptable uses of organizational property, particularly computer and mobile devices

NDA – Ensures that users understand that certain information must not be disclosed to outside parties

Security awareness training – Ensures that users are conscious of the organizational security policies

Job rotation – Ensures that roles are alternated between more than one person to prevent fraud.

RESOURCE: https://en.wikipedia.org/wiki/Security_awareness
https://flylib.com/books/en/1.34.1/operational_security.html

-------------------------------------------------------------------------------------------
OBJECTIVE:
Given a scenario, analyze potential indicators associated with application attacks
SUB-OBJECTIVE:
Injection Attacks

Stored procedures:
Stored procedures are a series of SQL statements that are executed as a group, and are similar to scripts. Using
properly written stored procedures protects the database from damage caused by poorly written SQL statements and
SQL injection attacks.

DETAIL:
The purpose of an SQL injection attack is to read sensitive data from the database, modify the data, execute
administrative operations on the database, recover the content of a given file, and even issue commands to the
operating system.

OBFUSCATION and CAMOUFLAGE:
Obfuscation and camouflage are closely related. Obfuscation means to make something difficult to understand, and
camouflage means to hide something among its surroundings and make it more difficult to detect. The purpose of both is to make it more difficult for someone to tamper with code or reverse engineer the code, but they will not protect against injection attacks.

ERROR HANDLING:
Error handling means that every input is validated against a range of acceptable values. If the input does not match that range of values, that input is rejected, and an error message is generated. Program crashes occur when an invalid input produces unexpected results. SQL injection attacks usually do not result in errors, so error handling would not fix them.

PROVISIONING:
Provisioning and deprovisioning allocate resources based on demand for those resources. They will not protect against injection attacks.

DETAIL:
Other secure coding techniques and issues include encryption, code signing, code reuse, dead code, server-side
versus client-side execution and validation, memory management, third-party SDKs, and data exposure.

Encryption should be used in software development, as well as network traffic, to protect data being stored or
transmitted.

CODE SIGNING:
Code signing embeds a digital signature into a piece of software, and is often used with device drivers. Validating the signature would ensure that you are installing software that is from the vendor.

CODE REUSE/ DEAD CODE:
Code reuse and dead code are closely related. Attackers can reuse code that was developed for another purpose. In some cases, the code reused is no longer valid or outdated. If the code is outdated, it is called dead code.

SERVER-SIDE VS CLIENT-SIDE EXECUTION & VALIDATION:
- Server-side execution and validation happens on the server when the data returns to the server
- Client-side validation occurs on the browser on the client machine.
The good thing about client-side validation is that it provides a quicker response and does not generate a lot of overhead on the server. With that said, however, the browser needs to monitor for malicious code.

MEMORY MANAGEMENT:
Memory management watches for things like memory leaks. Memory leaks can be caused by a programmer failing to
free up memory once the process using that memory has been completed. C and C++ are particularly prone to memory
leaks. Use of third-party libraries and Software Development Kits (SDKs), while common, present security vulnerabilities.
A flaw in an SDK can result in issues in every application that the SDK was used to develop. Data exposure occurs when there are not sufficient safeguards on a database. Failure to protect your database can result in data hijacking and injection attacks.

RESOURCE: https://en.wikipedia.org/wiki/Stored_procedure
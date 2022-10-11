
Basics
- Credentials
    CHANGE YOUR DEFAULTS! Much like luther vandross this is an Always and Forever type deal
    If somebody's doing some kind of reconnaissance, and they can find out what type of system you have. Then they can check vendor documentation just like you can and they can potentially make their way in your networks

Account Management
- Administrative accounts need to be Protected at all costs

- Any account that's created on a Windows machine, the very first account. While not the default administrator, that account will be an administrator and have full access over the system. 

- Other types of administrative accounts,NIX-based systems doesn't really matter if you're talking about Unix, Linux or even Mac because it's BSD(Berkly Software Distrobution\ they make our Kali linux OS!! love these guys!) under the hood. 

You wanna make sure that that root user account is protected. We don't wanna be logging in as our root user and doing everything in the context of those privileges, right? So remember, the principle of least privilege is very, very important
- Default configurations
    OS (Operating Systems)
    Applications

# How can you out of the box start hardening your applications and your operating systems?

FYI: An ISO, which is essentially a file that you can use to bootstrap an operating system, whether it's in a virtual environment or you put it on a thumb drive and you install an operating system.

Patch Management 
- Making sure your software is up to date at all times
- This is a great way to harden your applications and OS out of the box

Firmware Protection
# What is firmware?
Our firmware is that low level code that really just initializes all the hardware before your operating system comes on.

- And the reason the firmware is so important to make sure that you secure it, is because when firmware comes on your operating system's malware protection hasn't even loaded into ram. It's not even functional. 

- So it is very, very important that even in the early stages of the boot process, that low level code, that we do maintain some security around it.
FYI: legacy devices are hard to secure because sometimes they're out of the bounds of the vendor patch management platform and they're no longer being patched.

UEFI (Unified Extensible Firmware Interface) vs. MBR (Master Boot Record)
    So definitely choosing UEFI because of the security solutions and technologies that just come by nature built into it. 
- Updates for the firmware
- Now, this patch management might be something that you have to go directly to the vendor for it and you have to check out, hey, what's the current firmware edition
- We can use TPMs(Trusted Platform Modules)

FYI: It's a basically a cryptographic processor and it stores security information. It can store things like, what is the configuration state of the machine? What is the expected configuration state? When we're doing an attestation, we can compare it and if anything's different, guess what? The operating system, the machine will not bootstrap. It will not start the operating system up and it'll give you a chance to take some kind of corrective action.

- Trusted Platform Modules help you to lock down firmware configurations, but it also allows you to implement something known as Secure Boot.

- Secure boot
    If you have secure boot implemented, it means I'm only going to allow trusted, signed with digital signatures, boot loaders to bootstrap the operating system.

- Protection out-of-band management
- They also have what's known as out-of-band management, where you can actually connect over the network to things like your servers. And you can do things like firmware updates, but you have to make sure that you have secure out-of-band management,
- Because these are dedicated network connections into the hardware level of your devices. And keep in mind, if somebody can use that as an attack point, you really got some issues




Ports and Services
- Ports
    They are a Logical end-point of a connection
    It allows computers to define, or to determine where services are being provided.
    Identifities the service associated with the port
FYI: You can manipulate ports to where ports don't necessarily map to a direct service.
Use SSH, SFTP, HTTPS,
    Can be exploited by attackers

- Services 
    Provides network resources
    Increases attcack surface
    Can be exploited by attackers


Ports and Services Best Practices

- So make sure that, especially when you're testing, once your tests are over, if you're not using that service, uninstall the service from your server to close down that port to make sure that the attackers can exploit them.

Firewalls
- They work off of Implicit Deny by default
    That means that if anything isn't explicitly allowed, it's implicitly denied, and that's what we want.
- Services
    yes, you're gonna have to have services running on your machines. But you wanna make sure that only trusted services are making those outbound communications that you allow through the firewall. You don't wanna be opening up another security vulnerability to that kind of attack.
- HIDS/ HIPS
Host Intrusion Detection System / Host Intrusion Prevention System
-  host-based intrusion protection system, remember, that could alert you to the fact that there's potentially an intrusion within your network.

- The intrusion prevention part of that, cuz it actually implements countermeasures. 


- Stateful Monitoring
# How does it work?
EX:
The other thing I would mention too is stateful monitoring is very, very important when it comes to your firewalls. If you remember the TCP 3-way handshake, well, somebody can actually perform what's known as the SYN flood attack if a communication comes in, right? In that 3-way handshake, we send a SYN request. The server says yeah, I acknowledge that. And then we don't send the third part of that response, that handshaking process. And then another SYN request, and then another SYN request, until there's either a denial-of-service attack that's happened, again, crashing the system. Or maybe even worse, we spill information over in unchecked portions of memory.



Antivirus
- Real time protection
    Make sure you are always monitoring

- Automated Scanning
    And automated scans don't just necessarily mean checking the hard drive. It could be checking network communications. It could be what's happening inside of your RAM, as well as things like, for instance, platform and signature updates. 

- Platform and signature updates
    Now, what I mean platform updates, I mean updates the actual antivirus software platform itself. But then also remember that the antivirus software is only as good as the signatures that it has inside of its database.     

- Logging
    People become desensitize. So what do we do? We turn off the warnings. Well, how do you know what's happened? If something has happened, we need a record of it. So logging is definitely very important.

- Configure default 'Actions' NOT 'Settings'
    EX: You can have some default actions that said, sure, find it, log it, quarantine it, and erase it

File and Disk Encryption (Data at REST)
- File Encryption
    EFS (Encrypted File Systems) Windows
    APFS (Apple File System| AKA HFS) Apple
        * Which if you choose to format your hard drive on it you can choose the encrypted, right. And it gives you full disk encryption
    GPG (GNU Privacy Guard)

- Disk Encryption (Data at REST)
    BitLocker (Windows)
    File Vault (MAC OS)
    LUKS (Linux Unified Key Setup)

FYI: Remember there is data in use inside of the application. There's data in transit and data at rest.

Registry (two slides)
- Windows only
- It is A database. It's a hierarchical structure of settings and configurations

# How does it work?

Basically, when the operating system launches, it needs to figure out, how do I configure the machine at startup? When a user logs in, I need to pull down their profile and they've got background settings and configurations that the users make. How do we apply it? What settings do we apply? Well windows checks the registry.

- Principal of Least Privilege
    Admins -  admins can modify the registry. So pay attention!
    Standard users - If you have standard users. They don't need that level of privilege. Don't give them that level of privilege. 
Can be found in C:\Windows\System32\Configuration

Hardening Guides

kit

FYI: Your vendors will typically have some kind of best practices, or some kind of Configuration Guide

Microsoft Security Compliance Toolkit

- Windows here they have the Microsoft security compliance tool

# How does it work?
What is your current Group Policy inside of your Active Directory domain? Well, we can run this toolkit against it and it can compare it. And it can say, okay well, we see these five settings or ten settings, whatever. And we think that you might do better if you configure them this way.




https://docs.microsoft.com/en-us/windows/security/threat-protection/security-compliance-toolkit-10

RHEL


https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/pdf/security_hardening/Red_Hat_Enterprise_Linux-8-Security_hardening-en-US.pdf
VMWare Hardening Guides

https://www.vmware.com/security/hardening-guides.html
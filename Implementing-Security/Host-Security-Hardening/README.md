
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

- Secure boot
    If you have secure boot implemented, it means I'm only going to allow trusted, signed with digital signatures, boot loaders to bootstrap the operating system.


Trusted Platform Module help you to lock down firmware configuration, but it also allows you to implement something known as Secure Boot.

Ports and Services


Ports and Services Best Practices


Firewalls


Antivirus


File and Disk Encryption


Registry (two slides)



Hardening Guides



Microsoft Security Compliance Toolkit



https://docs.microsoft.com/en-us/windows/security/threat-protection/security-compliance-toolkit-10

RHEL


https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/pdf/security_hardening/Red_Hat_Enterprise_Linux-8-Security_hardening-en-US.pdf
VMWare Hardening Guides

https://www.vmware.com/security/hardening-guides.html
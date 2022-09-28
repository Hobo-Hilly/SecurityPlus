# Default settings
- Weak configurations
- Open file permissions
I can tell you, I have come across this where somebody couldn't figure out how to tailor down the NTFS, and share permissions to a shared resource across the network. So what do they do? All right, I'll give NTFS permissions, full control everybody, and I'm gonna go ahead, and I'll give shared permissions full control everybody

# EX

"You see this open permissions one a lot, because it's super easy to just forget that you left all these open permissions. Maybe you're doing some testing, and you're just trying to make sure everything works, and then you just kinda push it off into production. You forgot that everything is wide open, and we see this with the Amazon S3 buckets"

- People are making web apps. They put some information in an S3 bucket, they forget that that is open to the world. And now they're starting to put production information in there, and everybody that finds it has now got that information

# Summary

What's the difference between On-premise and cloud based vulnerabilities?
- Vulnerability On-premises is, for instance, your local permissions which can happen in the cloud as well. 
An example of a cloud based vulnerability with the S3 buckets. Spinning up an S3 bucket, leaving it as the default permissions. And now all that data that you've got stored in there can be hit by anybody on the planet that's got public access to the internet

FYI: The more convenience you have, the less security
''
- Weak encryption

- Unsecure root accounts

# Unsecure protocols

- ftp, http vs SFTP, https

- Open ports and services

# Third-party risks

- Increase risk for

- Intellectual Property Theft

- Identity/credential theft

- Network Intrusion

- Reputation damage (Think Target)

- Lack of vendor support

- Data storage/Data Breach/Data Theft

Cloud-based risk

# Vendor management

Problems

- Compliance risk

- Vendor Reputation

- Lack of Visibility

Benefits

- Vendor Screening 
 
- Risk Management

- Compliance Monitoring

# System integration

Social Networks (Facebook)

Delivery Systems (USPS,UPS,FedEx)

Online payment systems (Paypal)

Video streaming services (YT, Vimeo)


# Outsourced code development

# Improper or weak patch management
 
 - The systematic approach to applying patches on your systems, to ensure stability, performance, and uptime.

1. Firmware

Current Firmware 2.0.2.188405

CVE-2019-7579

2. Operating system (OS)

3. Applications

FYI: Don't forget those third party applications that you might be running. This is the flashes of the world like the Adobe type of sweets. Maybe you're running some sort of virtualization or connectivity software. All sorts of stuff they need to be updated as well. It's not just your operating system

Legacy platforms
''
Lack of vendor support
- Vendor goes out of business 
''

Zero-day
- So, 0 days are things that aren't known by the vendors, and it's when you're most vulnerable because there is no vendor awareness and a lot of times there are no patches or fixes for what could potentially be an exploitation of this type of weakness

- It is defined by 0 day because there's. There are no patches for. It has been 0 days since they released a Patch


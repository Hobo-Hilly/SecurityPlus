# DIGITAL FORENSICS

Description:In this episode, we will identify key aspects of digital forensics such as documentation and evidence gathering, chain of custody, information acquisition and preservation concepts like order of volatility and location, maintaining integrity through hashing, checksums and more.

Legal Hold
# How does it work?
And legal hold essentially is when you have a certain amount of data that they tell you you need to preserve this information. 
You need to make sure that it maintains its integrity and it's not modified in any way. Well, the legal hold is that first process where you're presented or an organization is presented with, again, probably some kind of court summons, some kind of subpoena, if you will. And it basically tells that company that they have to prepare this information in a way that preserves it.

# Summary
Well, and that's an important thing because if a crime has been committed, obviously we don't want to tamper or mess with any of that data that could be evidence In that investigation, so it's extremely important. 

That doesn't mean we always have legal holds. This is just whether or not criminal activity has occurred or we've decided to go after a criminal prosecution in the case of a breach. 

How we preserve the information is of the utmost importance. When we talk about some of these digital forensics concepts, it's gonna really steer around these two ideas. 

How do we acquiesce, how do we get that information, and then once we have that information, how do we preserve it, right, up until the point that it may be is presented in a court of law, all right?

# If there was a breach that occurred.


Digital Forensics Concepts(3)
    Right-to-audit clauses
- Now, the ability to do this may or may not be available. So for instance, right, if you have you have a contract let's say between yourself, your organization, a cloud provider, right, do you have the right to audit? 
And chances are probably not, you probably have some kind of contractual agreement. Most providers, cloud providers if you will, they're not gonna let you come into their networks and audit their networks. 

- A lot of times these cloud providers will have some kind of third party, agency, if you will, and it's part of your SLA.

    Regulatory and Jurisdiction
- If we were talking nonhybridised environments where we have on prem, we have cloud or maybe we have everything in the cloud, it'd be a little bit easier to understand the regulatory compliances, right? Who has jurisdiction over the information?
    
- We're in the United States. So we have the local, we have state, right, we have federal. Maybe we're in Canada, then we'd probably have things like territorial jurisdiction as well. But we also have to keep in mind that our data isn't always kept in a single location. 

- Our data can be through things like geo-availability and geo-redundancy. We could have data centers that are dispersed, and we now have to consider international laws.

- Definitely with things like GDPR, but not even just going as far as saying Europe, today we have California laws that are basically a mirror image of the GDPR. Well, if you have customer data from California, well, that falls under their jurisdiction, even if we're here in Gainesville

    Data breach notification
- What's the extent of time that can pass before you're required by law to let your customer know that the data has been breached 

- It's what time can pass before I or we, if you will, as an organization, we can't wait anymore. We have to let the customers know that your data is out there in the wild.

# What do data breach notifications look like?
" Getting those data breach notifications, usually in the form of some obscure email with just plain text in it until you go, this must be spam and delete that. I don't need to see that. And they're hoping a lot of times, that is exactly what you do because then they can say I was compliant."


Order of Volatility
1. CPU cache, registers
2. Routing table, process table, ARP cache, kernal stats
3. RAM(Random-access memory)
4. Swap file, page file(temp files)
# What is a swap file and how does it work?
A swap file is a system file that creates temporary storage space on a solid-state drive or hard disk when the system runs low on memory. The file swaps a section of RAM storage from an idle program and frees up memory for other programs.
5. Disk(HDD,SDD)/snapshots
6. Archival data, backups

# Summary
 So that's the order of volatility, it just means that hey, from the top of the list down, we have to acquire this information faster. The top of this list is the most volitile down to the least.



Data Preservation and Documentation
    Time stamps
    Time offset
    Reports and event logs
NOTE: This as a way, ways that we can preserve the information too. Other things are interviews, they call out interviews because you can scrutinize people and their testimony can be used as a form of evidence when it comes to digital forensics. 

NOTE: How can we make sure that the forensics examiner hasn't modified not a single bit of the information, not even single punctuation mark, not even slack space on the hard drive, right? One slight modification like that, and the prosecutor can say that's not my data 
    
    Integrity
        Hashing
        Checksums
        Provenance
Chain of Custody
- Provenance is essentially that unforgeable digiital record, right. That basically gives us a chain of successive custody, a timeline if you will, or a sequence of events that are performed on the object from the moment that you acquired it, to the moment that it's presented inside a court of law. 

# How do we do this? How do we prove that provenance?

Digital Forensics Tools

FTK Imager (Forensics Toolkit Imager)
- It allows you to do things like forensics, right, of computer data without making any changes to the original evidence,
     
WinHex 
- This gives us the ability to see and potentially even edit the information.
- we can really dive down low and even recover things like deleted files

Autopsy
- It's just another digital forensics tool

EnCase Forensics
It really is one of those very widely known forensics investigation tools.

- And one of the things I think is useful about here is that we know with these hybridized, converged type networks today, where we have Cloud infrastructure but we also have mobile device management. Well, that also brings the mobile device acquisition information side of this into play.


dd (data duplicator) AKA "data destroyer" because if you get it wrong, that data gone. 
- a Linux based utility that allows you to duplicate and store information
- allows you to duplicate a disk, and you could save it to file, and then you could turn it around and you could scrutinize that information here.


Resources

https://edrm.net/edrm-model/

    memdump / coupled with Volatility
    WinHek
    Autospy
    EnCase
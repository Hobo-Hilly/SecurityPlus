Antivirus and Anti-malware
- A virus is a piece of malware

A lot of times they use what are known as signatures or definitions and remember, what a signature if you're not familiar what a signature and definition is. That really defines what a piece of malware looks like or what a virus looks like. So it is important as part of host security that we keep these signatures in these definitions up to date.

Signatures/definitions

signature definitions for like windows, defenders and so. So be ware of that. Other things we can look at is behavior monitoring, right? When we talk about antivirus and anti malware software, how is a certain piece of code interacting at where is it interacting with right? Is it acting like a virus, right?


Behavior monitoring

So behavior monitoring is a good way that we can find things that maybe don't necessarily strictly match the signature or the definition


Heuristics and AI

- Heuristics has been around for a while, but then they also bring in the Artificial Intelligence Element. 
This is where we can learn about things that aren't formally defined by a signature

- I'm seeing that it's behaving. So I'm gonna take my best guess and I'm gonna say that, that is gonna be a piece of malware or maybe it's not a piece of malware. And you couple that with, these artificial intelligence platforms, right we can get very, very good guesses if you will, when it comes down to it.

Cloud-based submissions
- cloud based submissions when you're antivirus software does find a piece of software. A lot of the vendors will collect that information into a single repository or not even a single repository.


Sandboxing vs. quarantining
- sandboxing and quarantining is a little bit different than sandboxing. When we say quarantining a virus or a piece of malware, that means it locks it down 

- Sandboxing is a little bit different because sandboxing brings in this concept kind of like when we talk about virtualization, where it might allow it to act within this confined, isolated area to learn a little bit more about it. So, there is a term sandboxing vs quarantining and they are not the same. Quarantine is done because we've identified it as something and it needs to be removed. 


Endpoint Detection and Response (EDR)
- Monitors end point behavior
- So it allows your administrators, to be able to monitor endpoint behavior
- Real time monitoring
- Endpoint threat detection
- Monitoring endpoint behavior
- Real-time
- Uses IoCs (Indicators of Compromise)

Examples

Fireye EDR

Datashield EDR
DLP (Data Loss and Prevention)

Protection of data in motion
- Monitor and control data movement
- Data Classification
- Protecting PII Personally Identifiable Information
- Research and Development
- Trade Secrets 


Host-Base Intrusion Dectection
- Passive software
# How does it work?

This is essentially a passive piece of software. And when we say host, we are talking about this physical machine versus a network-based intrusion detection system that's screening all of the information. All of the traffic coming in and out of your network. We're talking about we're just looking at the network adapter within our host itself,
- So it's a passive piece of software and it monitors, it detects and then it sends out things like alerts

Host-Based Intrustion Prevention
- Active Software
- Monitors, dectects, alerts
- The biggest thing that's the difference between these two Host Based Intrusion Detection and Host Based Intrusion Prevention countermeasures.
- A host-based intrusion prevention system not only sees this intrusion, if you will that it detects, but it actually implements some kind of countermeasure to stop it in its place.

# How does it work?

for instance, like your Cisco ASA firewalls. Well, they can detect, but they can also, if you will, implement those countermeasures to stop the attack. So for instance, let's say that there is one of these SYN flood attacks, right? That's a stateful firewall. It's monitoring the state of the connection. It sees the synchronization come in. It sees the SYN package, the packet, if you will, but it doesn't see the third part of the three-way handshake. All right, then another one comes in and says, well, wait a second here. I've actually seen that you are the same source and you've already asked for the three-way handshake, you just didn't complete it. And it stops that kind of attack,


HIDS/HIPS

Host-based Firewalls
- Monitor traffic on the host
- Implicit Deney
- Monitoring
    Disk
    Memory
    Network

FYI:  Host Based is just 'this' computer
        That's really the big difference there between network-based and host-based. Host just this computer. Network-based, every computer, every communication on the network.




- that most firewalls, not just the host-based firewall, they operate on this concept of implicit deny.
- it means anything that isn't explicitly, I'm telling you this isn't allowed is going to be implicitly denied.
- And really what we say when we say an implicit deny, how that host-based firewall does that is it says all traffic that's coming into the host denied, except and this is where the term exceptions and firewalls come in
- make an exception and I need to use RDP. I turn RDP on. And a lot of times, I don't have to mess with a firewall, cuz this is a holistic program inside of Windows. And Windows opens up the remote desktop protocol inbound communications to the computer, right? 

It's now allow. There's an exception to the implicit deny rule that is basically the default of all firewalls. All right and it does monitoring, right? Where does it monitor? Well, it can monitor things like disk activity. It can monitor things like memory, right? We talked about buffer overflows. We talked about things like code getting into memory and then being able to execute, as well as monitoring things like your network communications. This is essentially what a host-based firewall is versus a network-based firewall




Next Generation Firewall (NGFWs)
Marketing term 
- HIDS/HIPS
- DLP
- DNS filtering
- URL Filtering

#SUMMARY 

- When we talk about earlier based firewalls, right? It was doing things like Packet Inspection. All right and we could do like source IP address, destination IP address and we would potentially either allow or deny it based on the packet inspection. 

- then as they got more advanced, we start working up the stack, right we have stateful aware firewalls, right? And their state awareness think about where we talked about transmission control protocol sitting in between the transport and session layer,

- we can go up even more into the presentation area, right the presentation layer SSL inspection, right? We can put the certificate on the firewall that says this traffic that's encrypted. I know it's encrypted. It's coming through and I want you to take that certificate and I want you to decrypt it to make sure that PIA isn't there.

- Part of that DLP type of service if you will and functionality
- These firewalls are Application-aware. So they're blocking at the port level. So maybe I'm blocking Port 80
- They can perform hids, if you will, and the intrusion prevention as well as doing things like data loss prevention.

Doing things like DNS filtering and URL filtering and remember the difference between those two, URL filtering says block or allow these sites based on their Uniform Resource Locator their address. DNS says block them from mapping that name to an IP address.

# Here are a few examples of software used today

Digital Guardian

McAffe Total Protection

Security Event Manager

Example of Controls
- Malware and PAU's
- Web Threats
- Malicious Behaviour
- Controlled Items
- Malicious Traffic
- Exploits

SOPHOS

# This Episode is all about attacking layer 2 of the OSI Model Open Systems Interconnection

Layer 2 and the OSI Model

# OSI Refresher
''
- So we have this seven layer model. If you say top to bottom, you're going from application to the physical. If you say bottom to top, you going from physical to the application layer.

- Application Layer
    ^ Remember that when we talk about the application layer we're talking about this is the layer that gives our applications our first bit of entrance or access to network based resources
    ^ i.e. access to network resources.

- Presentation Layer
    ^ The presentation layer generically is the syntax layer. It formats our data in a way that standard so that the network doesn't even have to worry about how's it formatted. 
    ^ i.e. It could be handling encryption. Formatting a GIF or a PNG file? This layer handles all of that so the network does not have to worry about it. It Formats the data to whatever type of standard is being used to comunicate between the two end points.

- Session Layer
    ^ the session layer is out there for opening, closing and maintaining, (tearing down is the closing part) of these communications. 

- Transport Layer
    ^ The transport layer is sometimes called the host-to-host communication layer. And remember that the transport layer is responsible for actually delivering our information. 
    ^ This is where we say, do we want a connection oriented protocol like transmission control protocol, TCP, or maybe connectionless like UDP. And if we choose TCP, that's where the segmentation of the sequencing happen.

- Network Layer
    ^ The networking layer is where we have things like our routers. Our routers do the routing, they make the routing complex decisions.
    ^ The network layer, addressing and routing, and more specifically IP addressing
    ^ It is important to understand that because we also have some addressing that happens at the data link layer, which is layer 2.

- Data Link Layer
    ^ Data link layer, that's where our switches work.
    ^ Layer 2 is responsible for our land communications. The network layer is actually what allows us to communicate across the Internet. If it wasn't for the networking layer, you wouldn't be able to connect to some remote network halfway across the world. ^ ^ ^ Data link layer, this is where we're actually within our local area network (LAN). Here we're using things like our MAC address.
    ^ The MAC address is that unique address that identifies the network adapter and by association the computer that's installed on. 
    ^ And our switches, if you will, use this information to forward traffic between ports.

- Physcal Layer
    ^ The physical layer really defines the electrical communications and the media type that we're gonna use.
    ^ This is where we say, hey, yeah, it's Ethernet. Ethernet, by the way, also operates at the data link layer because it works on MAC addresses. 
    ^ But it also works at the physical layer too, because it says, we're gonna use twisted pair copper media or maybe we're not. Maybe we're not gonna use that. Maybe we're gonna use fiber optics,(optical media).
    ^ Or maybe we're gonna use radiated energy and do a wireless communication. So that's what we're seeing here in the physical layer

''


ARP Process
# What is it?
- Now, when we talk about layer 2 attacks, what we're talking about is down here at the bottom data link layer.

# What is it?
- Layer three is where our IP addressing happens. The logical addressing happens. 
 
        * * * * *
Layer 3 *Network*   10.10.10.10
        * * * * * 

# What is it?
- Layer two is where the Mac addresses are. This is a burned in physical address to the network adapter.(minus virtualization technologies that could become software based.)
    ^ But this is what is identified at the data link layer.
        * * * * * *
Layer 2 *Data Link*  01-02-03-AA-BB-CC
        * * * * * * 

# How does it work?

- These two protocols are completely oblivious of each other. So what sits in between these two layers is this protocol known as the Address Resolution Protocol, or ARP.
    ^  Because the network layer IP knows nothing about a Mac address. When that traffic finally gets across the remote networks and gets to the LAN that's the destination LAN (Local Area Network) where it needs to be delivered.
    ^ If we left it up to IP. IP would say, hey I did my job. I don't know where else it's going. I'm done.
    ^ So that's where ARP comes in and what ARP does. It says I will help IP map this IP address to the data link layer based Mac address.
    ^ So what it does is it sends out a broadcast communication to the local broadcast address on that network; and it says to everybody,Hey who has 1010. Dot 10.10.10.10. 
    ^ Every computer that's within that broadcast domain they could hear that broadcast traffic is going to hear that. 
    ^ But only the computer that actually has that IP address is going to respond back to ARP broadcast. 
    ^ It's going to actually tell you, I know where 10.10.10.10 is. That's my Mac address. Go ahead and tell ARP that that's where you can find that IP address? 
    ^ Tell them that it's at this Mac address and then what the computer does is it caches that in the Local ARP cache.

- Just like in DNS we want you to keep in mind that when. We need to finally talk to the computer that has that IP address. 
    ^ We don't need to send an ARP broadcast anymore, we can just send that compute communication based on what we have in the cache right directly to that computer. 
    ^ So it makes it very easy to find that computer and not have to go through the ARP process again. 

# NOTE:  We do this because, we typically use IP addresses and computers don't mind using the Mac addresses, so it makes it a little simpler for us as humans 


ARP Poisoning
# What is it?
''
- ARP Poisoning attack (address resolution protocol)

- Understand that a router can do this, but a lot of times on your local computer in your local networks. If the computer that your looking for is local, then I don't need to send any traffic to the router.  The source computer can do this itself. 

- It's going to say to the local broad who's got that address we just talked about, 

- But here we go with our well groomed hoodie based threat actor says, If I can get that information? If I can respond 
back to you before the legitimate computer ever says anything. Then that response is that going to get stored in that ARP cache. And, now it's poison. 

- Keep in mind that the next time the source computer needs to send traffic to that Mac address based on that IP address. It's not going to call back out to ARP, it's just going to say, let me look at my local cache here. So if it pulls that answer out of the local cache the attacker is re-directing traffic to their computer and then from there, they can basically do what they want with the traffic.


 NOTE: This is accomplished because most systems are set up to dynamically update those caches so an attacker will take advantage of that fact. Saying, You'll just accept anything I throw at you. Great, here comes some wrong information.
''
MAC Cloning
# What is it?
- The idea of MAC cloning. Just because this is an actual physical burned in MAC address onto these interfaces doesn't mean we can't tell the system that, hey, I'm that guy. I'm who you're looking for. 

- So we can actually clone and spoof the MAC address to different devices.
# Explanation
-  What do you mean people can spoof MAC addresses and clone MAC addresses? They're hardware based addresses that are burnt into the network adapter. They can't be changed. 

- Wrong. Well, that's because every single time you use something like virtualization, you're using some kind of spoof. And unique spoofed mac address. 

- And what do I mean by that? You have one physical, let's say server. It has a single network adapter or maybe even two network adapters it's multi-homed. But you're running 15 virtual machines on that one virtualization platform. 

- How is it that each one of those 15 machines have their own virtualized network adapter and can communicate? Well, that's because the hypervisor is actually doing the spoofing of the MAC address. 

- It's generating virtualized MAC addresses for every unique instance of the machine running on itself. And those machines still have to abide by the rules of TCP/IP and the OSI, no different than any other device that's physically attached to the network. 

- So understand that the ability to create a MAC address, is a legitimate process. But remember, be familiar with the fact that anything that can be done for legitimate system's administrative purposes, can also be exploited by the bad actors as well.

MAC Flooding Attack

# How does it work?
- a little bit about MAC cloning. Again, very simplistic process and the fact that your MAC address in your operating system, is not inspecting the physical adapter. That's the drivers communicating with the operating system and then the operating system controls the TCP/IP stack in communicates. 
- So if we can manipulate that representation in software, then it doesn't matter what the physical address says on the network adapter. 

- Because the operating system is gonna be none the wiser, and neither are the systems that you send information to.

# What is the MAC address?

- So we've got a MAC address. A six byte address, three bytes is the vendor (organizationally unique identifier) OUI as they call it. 

- The other three bytes uniquely identifies that network adapter.

- And when we need to send information across the LAN (Local Area Network) between two computers, now we are gonna be sending it through a switch. But even the switch is using the MAC address to determine which ports to send the information out. 

# How does it work?
- Now, here's where the attack happens, right? Same thing, no different, but now we've got the well groomed bad actor sitting in between.

- And what they do is they run something like let's say macchanger, I believe in Kali. 

- And they spoof the MAC address. Now they make the MAC address look like it's their legitimate MAC address and that takes the legitimate 
computer out of the communication. 

- And now the attacker can control the communication between really any device that's gonna send information to what the other MAC address the legitimate MAC address was supposed to be. Again, a way to redirect the information to the bad actor's computer

# Whats a switch?
- What a switch does, it forwards information between two ports. And how it makes that decision, is when information is send in the switch, it inspects the source MAC Address. 

- And if it's the first time the computer has communicated with a switch, it usually does a little bit of negotiation. It sort of says, hey, here is my MAC Address, and the switch puts it right in its MAC table

* * * * * * * * *            * * * * *  
* MAC Adressing *            * PORT # *
* * * * * * * * *            * * * * * 


+ 01-02-03-AA-BB-CC               21
+ 11-22-33-AB-BC-CD               445
+ 44-55-66-FF-HH-LL               389
+ 99-88-77-SS-WW-QQ               22
+ 
+ 


- Now, when it needs to make a decision where to send that destination traffic, it builds up the MAC table based on the computers that are connected to its ports. And it forwards the traffic to the appropriate destination port.

- Now, let's set up our attack here. All right, we've got our switch, we've got our MAC table, but now we've got a bad actor. Our bad actor starts flooding this switch with a bunch of bogus MAC addresses.
- The switch, if it doesn't have certain protections like DHCP snooping, dynamic ARP inspection, port security.

- And you only have static mappings of your MAC addresses. It's gonna start filling up this table with these bogus MAC addresses. And then once that small finite table gets full, it can't store any Addresses so what the switch is gonna do is a process called failed open.




* * * * * * * * *            * * * * *  
* MAC Adressing *            * PORT # *
* * * * * * * * *            * * * * * 


+ 01-02-03-AA-BB-CC               21
+ 11-22-33-AB-BC-CD               445
+ 44-55-66-FF-HH-LL               389
+ 99-88-77-SS-WW-QQ               22
+ BOGUS                         BOGUS
+ BOGUS                         BOGUS
+ FULL OF BOGUS
+ FULL OF BOGUS
!!!!!!!!!!!!!!!!!!!!!!!!!!  FAILED OPEN !!!!!!!!!!!!!!!!!!!!!!!!!


# What is failed open mean?
- That is technical jargon for the switch turning itself into a hub.

- Hubs are layer one devices, they only send electrical communications, they don't inspect any of the traffic. And they flood information with broadcast communications out all their ports.

# How does it work?
- While in a security context, broadcast communications are very dangerous. If everybody can hear everybody, that means if you're bad actors on that network, scraping some of that information through a sniffer. 

- He can capture that information, and then store it and use it later.

EX:
- If we run an arp- a, you can see that this is the ARP cache for each one of the interfaces that this machine is connected to. And this is where it's pulling that information off of the local network and storing it locally. And then after it has this entry in ARP cache, remember it doesn't use ARP to resolve that IP address to its MAC address, and it pulls it from its local ARP cache. 

- And if the attacker can get that bad information in this ARP cache, remember, my computer isn't gonna use the ARP process anymore. It's gonna look locally and it's gonna respond for better or worse.



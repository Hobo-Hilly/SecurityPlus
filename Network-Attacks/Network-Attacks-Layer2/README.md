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


''
ARP Process
# What is it?


ARP Poisoning

# What is it?
''
- ARP Poisoning attack (address resolution protocol)

- 


''
MAC Cloning
# What is it?


MAC Flooding Attack
This is all on PORT Security

Port security


Broadcast storm
# What is it?
EX:            

COMPUTER-12 - - - - - - ->

                                    |SWITCH#1|



                |SWITCH#2|                              |SWITCH#3|


So what is a broadcast storm? So I want you to think about a frame that goes from COMPUTER-12 into the switch#1 right? Well the switch has to look at it's MAC table or it's CAM table if you will, it's going to determine which port that MAC address destination is.
So now the switch says, okay, I'm going to send this to the all 'f' MAC address.(Which would Transmit out of SWITCH#1 down to SWITCH#2 and SWITCH#3) 

So that goes out all ports. All right now these two SWITCH#2 amd SWITCH#3 that are connected They see that broadcast and they're going to broadcast it out all their ports. And then, that's also going to go back up to SWITCH#1 the original switch and then we're going to get this crazy thing going on and I'm going to just stop it right there.

# Whats going on?
- The storm above affects the availability affects your access authorised users access to wealth and networks that allow us to, you know, connect to our data. So what we need to do is we need to implement some kind of loop prevention. 


Loop prevention
- What happens here is in STP All of the switches go through something known as an election process.
- All right now loop prevention and broadcast storm prevention really happens with A protocol called STP Spanning Tree Protocol. 
- STP(Spanning Tree Protocol) 
-All right, and they determine through a series of parameters, hey, who is going to be literally the top of the hierarchy and what they're trying to do is create this loop free tree topology.
- to do is To stop that loop that's starting to happen. We're actually going to block some ports.


BPDU guard (Bridge Port Data Unit )
    Components
    Root ID         who is the root id
    Cost            how many hops does it take to get from a - z
    Bridge ID
    Port ID
# How does it work?

- You don't need to know all of the other sides but it tells you the root ID, who's the root, cost. All right. In routing, we talk about cost, right? How long does it take me? How many hops do I have to go through in order to get to the destination? Right? Then you have a bridge ID and a port ID that's essentially, and there's more around it, but that Allows the switches to determine where do I send the information to which controlling switch which controlling switch is going to be the root bridge.

- And if anything changes in the topology Well, we're going to go through this process again, right? They're gonna communicate with these BPDs right? And they're gonna figure out BPD. Use figure out who the root bridge is. 

- what BPDU guard does. All right? It makes sure that only certain ports, alright? And typically the ports that the other switches are connected to are authorized to send a BPDU. 

- an attacker. Essentially connecting to one of the ports on your switches, right? Craps one of those BPDU's and tries to send it and forward it, let's say maybe in a broadcast, you know, communication. Well, the problem is that's gonna force that to go back on. We don't want that. Instead with BPDU guard, it says hey, I see that coming in on a port that isn't actually authorized and trusted to send that information. So what happens is the switch says, no, no, thank you. That's not coming from the appropriate port and it doesn't allow that communication to happen. So that's a little bit about the BPDU guard.

DHCP snooping
# Example
This is the idea of DHCP snooping, right? >> That's right. And you know, that can be a problem, right? If we have somebody that plugs into your network and we've had it done by authorized users that really didn't, weren't trying to bring the network down, but unfortunately they did where they plugged in, let's say an access point into the network. It started giving off DHCP addresses and now unfortunately, Our computers are connecting over to that access point for their DHCP process. So how would that happen?

Even authorised users and it can also happen with unauthorised users somebody plugs in Maybe an access point that starts giving off DHCP addresses and now you get this denial of service because guess, guess what, all these clients are saying, hey, I need a DHCP address. I'm going to get it from the access point rather than your authorized DHCP server.


Dynamic Host Configuration Protocol
# How does it work?
- That DHCP device server says we're only going to allow this DHCP server that's plugged into this port to go through this process.

It goes through (DORA)
1. Discover 
- The Discover packet actually it is a broadcast communication. 


(We will only focus on the Discover part of this process. Because those other 3 processes are unicast communications that go directly to the endpoint )
2. Offer 
3. Request 
4. Acknowledge

FYI: And that DHCP device server, firewalls can do DHCP. A lot of devices can do DHCP. 
- DHCP snooping is really just at the end of the day, think about it as a way that says this port is allowed to see, send DHCP communications All these other ports, no, we're gonna block them. So that'll keep those unauthorized DHCP servers on your network.


# Summary
EX:
Lets say a hacker created our little rogue DHCP server unauthorized or even authorised user connects into your network, connects into the port on the switch tries to send one of those DHCP messages and it is blocked. 
 
Now this doesn't just do that because some people Let's say you receive a DHCP discover packet saying a legitimate client on your network saying, hey, I need a DHCP address. All right, the offer comes back but the offer comes back on another port. All right, so it also pays attention to that which ports are these communications within the DHCP happening? 
 
All right, because switching says connect two ports and forward information between just those two ports. Right, I see another port start to get in the mix. That's not good, right? That's some kind of unauthorized access that's happening

MAC filtering
# How does it work?
- MAC filtering comes down to the same principle. 
So we have a few client PCs that are connected into the switch. We know that they have the media access control address, the MAC address. Right? Well, when the PC's actually communicate with a switch The switch keeps track of port to MAC address mappings inside of its CAM table and basically stores that inside of a database. 

- Now when somebody else connects to your network that is unauthorized, what happens there? Well, they're gonna have a MAC address as well. They connect, the switch will end up checking that little database and it's gonna say I'm not exactly sure who you are And you're not in that database and I can't see any port mapping so essentially closes down the port. 

- That's really, in a nutshell what MAC filtering is. And it's just, when we talk about on wireless networks is just done over a wireless communication, right again, still going to be done with MAC addresses stored in database. If it's an unauthorized MAC address, it doesn't make the connection.



Port mirroring
- When we want to dive in and see the communications that are happening between two ports.

# How does it work?
- You can create an analyzing station. We take a single port, maybe one in question, and we're going to map all of the communications that goes in and out of that port to our monitoring station

- So this computer PC 1 is going to talk to PC 2. Well when that happens, there is a duplicate frame that essentially is sent over to the monitoring station. 

- Now PC 2 again part of normal communication is going to communicate if you will Back to PC 1. Well, when that happens, guess what? It's also going to take that frame and it's going to forward it over to the monitoring station.


# What is it used for?
-  why might you want to do something like this? Well, you could do it with this with things like PCs if you want to understand the communication flow that's going on. You can also do it in things like Voice over IP phones. If you want to be privy to the conversations that are going on,

- Keep in mind at the bait at the end of the day, you might also hear a call port spanning Cisco has their switch port analyzer span

Switch Port Analyzer (SPAN)

- And that's essentially what this is doing. It's allowing you to take the communications that are going in and out of one port, make duplicates and then transfer that or forward that information. Over to another port. 

- A lot of times it's gonna be a port that's got a monitoring station of some kind connected to it.

# FYI: Yeah, I've used this quite often to check for malware connectivity that is, is there malware on my system and if so, where's it reaching out to? What is the communications that it's making? Because most modern networks are switched in some way, shape or form.

- So when we're trying to identify a potential for phishing schemes, right phishing attacks, we talked about that in our network attacks. It's a voice over IP based type of attack. Well We can kind of be privy to that communication, right? We can see where's the communications going through are those frames being modified or manipulated in any way that might redirect that information to another port for whatever reason. 
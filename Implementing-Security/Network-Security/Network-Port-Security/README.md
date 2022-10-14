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
(We will only focus on the Discover part of this process. Because those other 3 processes are unicast communications that go directly to the endpoint )
2. Offer 
3. Request 
4. Acknowledge

FYI: And that DHCP device server, firewalls can do DHCP. A lot of devices can do DHCP. 
- DHCP snooping is really just at the end of the day, think about it as a way that says this port is allowed to see, send DHCP communications All these other ports, no, we're gonna block them. So that'll keep those unauthorized DHCP servers on your network.


MAC filtering



Port mirroring



Switch Port Analyzer (SPAN)

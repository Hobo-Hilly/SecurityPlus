This is all about FIREWALLS! 

# What does a firewall do?

And remember what firewalls do, right? They screen the traffic that's coming in and out of the networks. And either based on rules they either allow, or they deny, or permit, if you will, that traffic to go through them, and traverse their interfaces.

Stateless

# How does it work?
- A stateless firewall is one of the most basic, because it's basically doing packet inspection. And what it's doing is it's looking at things like the source and destination IPs, and port numbers
- you might hear the stateless firewall called a packet filtering firewall, right? Cuz it's really inspecting each of the packets


EX: 

* * * * * * *                                                                      * * * * * * *
* Network A *                        # # # # # # # # # # # #                       * Network B *
*           *                        # Stateless Firewall  #                       *           *
* * * * * * *                        # # # # # # # # # # # #                       * * * * * * * 
                                         Source IP 10.10.10.10
                                      Destination IP 172.16.230.187
                                          Port 443



Stateful
# How does it work?
So what a stateful packet inspection firewall is doing, it's a little bit smarter, and can actually keep track of the connection states

EX: 

* * * * * * *                                                                      * * * * * * *
* Network A *                        # # # # # # # # # # # #                       * Network B *
*           *                        # Stateless Firewall  #                       *           *
* * * * * * *                        # # # # # # # # # # # #                       * * * * * * * 
                                         Source IP 10.10.10.10
                                      Destination IP 172.16.230.187
                                          Port 443

=================================================================================================================================
We've got network A. We've got network B. We've got a computer that maybe needs to access a resource that's on network B
now we're not really looking at a packet by packet basis. But it is aware of this state of a connection,
Well, remember the TCP 3-way handshake, right? What happens when we need to establish oriented service, right? Well, we use Transmission Control Protocol. And the first thing that happens is the source computer will send the destination computer a SYN packet

1. 





Content and URL filtering

NAT Gateway

Hardware vs. Software

Network-based

Host-based

Virtual

Appliance
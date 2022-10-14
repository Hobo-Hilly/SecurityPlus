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

=====================================================================================================================================

Stateful
# How does it work?
So what a stateful packet inspection firewall is doing, it's a little bit smarter, and can actually keep track of the connection states

EX: 

* * * * * * *                                                                      * * * * * * *
* Network A *                        # # # # # # # # # # # #                       * Network B *
*  COM-5    *                        # Stateful  Firewall  #                       *   SRVR-3  *
* * * * * * *                        # # # # # # # # # # # #                       * * * * * * * 
   1. - - - - - - > Source computer sends SYN packet
         2. < - - - - - - - Destination Computer sends a SYN-ACK packet.       
              3. - - - - - - - - - > Source computer sends a ACK packet 
                                          

=================================================================================================================================
We've got network A. We've got network B. We've got a computer that maybe needs to access a resource that's on network B
now we're not really looking at a packet by packet basis. But it is aware of this state of a connection,
Well, remember the TCP 3-way handshake, right? What happens when we need to establish oriented service, right? Well, we use Transmission Control Protocol. And the first thing that happens is the source computer will send the destination computer a SYN packet

1. And the first thing that happens is the source computer will send the destination computer a SYN packet. Now that SYN packet, synchronization packet is then going to be put into a database and the firewall keeps track of that. 

2. Then, that destination of that communication is going to send back what's known as a SYN-ACK packet.

3. The third part of that 3-way handshake is going to be the source computer that started the conversation, basically sending an acknowledgment packet,

4. And that connection is monitored, and then hopefully established.

FYI: SYN flood attacks. SYN flood attacks are what happens, right? Well, the source computer in network A would send a synchronization request to the computer in network B. And then network B, that destination computer sends back a SYN-ACK. And say okay, I acknowledge you have a synchronization request. But the computer in network A, right, maliciously says you know what? I'm not gonna complete that connection. What I'm gonna do is I'm gonna send you another SYN packet, all right? And guess what? That comes back through to network B, and it goes to the destination computer. The destination computer says okay, well, I've got one connection on hold here in memory. I'll go ahead and send another SYN-ACK packet back to network A to the source, the desktop or the source computer. And this process keeps happening until all of the memory within the computer and network B is completely utilized


Content and URL filtering
# How does it work?
EX:
- So we have our firewall here, and we've got a couple of networks. We've got our private internal network, and we've got the public Internet. 
- And communications are gonna go outbound. Now, whether that connection is allowed or not is really gonna be based on well, what website are you visiting. And what the firewall is gonna do is it's gonna check its database. And it's either gonna allow or deny access to this website, based on a couple of things.
- For instance, if it happens to be text strings, images, embedded objects in images, right? That is content filtering,

- Now, if it's holding URLs, Uniform Resource Locator, just a think about web addresses, right? And it blocks it based on the URLs, hence that is URL filtering. It has a URL database. And these are the approved websites that you can go to, or the websites you cannot go to


* * * * * * * * * * * * *                                                       * * * * * * * * * * * *
*    Internet           *    OBT       Content Filtering          OB Traffic    *  Internal Network   *
*                       *  < - - -  # # # # # # # # # # # #    < - - - - - - -  *   COM-12            *
*   http://www.???.???  *           #  Content Filtering  #                     * * * * * * * * * * * *
*                       *           #  Firewall           #
*                       * = = = = > # # # # # # # # # # # #  = = = = = = = = = = > 
*                       *      return traffic (left to right)                 
* * * * * * * * * * * * *                               
                                                       - - - - - - - - - -
                                                       - Firewall Rules  -   
                                                       - Database        -
                                                       - - - - - - - - - -



NAT Gateway ( Network Address Translation Gateway) 
# How does it work?
Remember what network address translation allows you to do. It allows you to basically have a private IP address. And if you remember TCP/IP, I cannot route or communicate across the public Internet with a private IP address. So what happens? A little packet crafting, or manipulation goes on. 

EX:
Outbound Trip!!!
- So again, we have a private network, and we've got the Internet, all right? And when communications go out, essentially what that router, in this case, we're talking about firewalls does, is it looks at the source IP address. And what it'll do, is it'll remove the source IP address, store it in a database. And it'll replace it with the public IP address as the source address, and then forward that traffic on to whatever its destination is.

Return Trip!!!
- So now what I'm gonna do is I'm gonna remove the public IP address, and I'm gonna replace it with the private IP address, and then finally deliver that to the endpoints. So that's essentially what a NAT gateway is

EX: 


* * * * * * *                                                                      * * * * * * *
* PUBLIC    *                        # # # # # # # # # # # #                       * Private   *
* NETWORK   *                        #  Firewall           #                       *           *
* google    *                        # Dst:IP   Payload:   #                       *           *
* Yahoo     *                        # Src: IP             #                       *           *
* Youtube   *                        # UDP/TCP             #                       * Network   *
* * * * * * *                        # # # # # # # # # # # #                       * COM-12    *
                                                                                   * SRVR-2    *
                                                                                   * * * * * * * 

=====================================================================================================================================

- What type of firewall should I go with? Because it's not just a hardware appliance that you slap in a rack. It could be a virtual appliance. And maybe even it's a software appliance running on a different host. What's gonna be the right solution for me?

- So let's go ahead and set you up again here with kinda close to the same scenario, all right? When we talk about a hardware based firewall, all right? I want you to think about all the communications that are coming into your network On-prem, right? That firewall inspects, and either allows, permits, or denies traffic to every single computer within your network, all right, going to any computer within your network. Now, you also have, on your host machines,

- you also have firewalls, right? Remember we talked about the network adapters, right? And what they do, is they screen the communication, not like the hardware based firewall does. This is a software based firewall, like the Windows firewall that runs inside of the operating system. And it is protecting,information, allowing, again, permitting or denying traffic on the host itself. 

Hardware vs. Software


- - - - - - - - - -
- Public Internet -
- Clear Web       -
- - - - - - - - - -
                    -
                     -
                      -       # # # # # # #
                       - - - -# Firewall  # - - - - - - - - -
                       - - - -# # # # # # #                  -
              - - - - -                                        - 
- - - - - - - - - - - - - - -                                 - - - - - - - - - - - - - -
-  Subnet A                 -                                 - Subnet B                -
- Firewall                  -                                 - Firewall                - 
- (Network Adapter/NIC)     -                                 - (Network Adapter/NIC)   -
-   COM-5                   -                                 -  COM-8                  -
- - - - - - - - - - - - - - -                                 - - - - - - - - - - - - - -


# Hardware: That's your network based firewall. That's also an appliance based firewall. It's something tangibly physically we can put in the rack, and we can connect to it

# Software: software based firewall's called a host based firewall. Again, just screening traffic coming in and out of the host that it's running on. That is your software based firewall.

- we have these virtualized software type firewalls in the cloud? Well, what are they doing? They're controlling the communication in and out of your cloud based resources. And that essentially is where you see your virtualized based firewall

Network-based

Host-based

Virtual

Appliance
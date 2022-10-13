# FYI: Understand, the tunneling by itself doesn't really protect your information, right? We don't just bring up a tunneling, we use a tunnel protocol to create that logical connection, but that tunnel is brought up and then we encrypt the information. Information that's leaving the branch office, heading to the headquarters or vice versa is then encrypted and it's the routers that actually have to do this. 



Network Security and VPN's
Virtual Private Networks: Used to make secure connections over insecure networks

What are VPNs?
- Virtual Private Networks: Some kind of logically made private network.
- Secure communications over insecure networks

# How does it work?
- how do we allow our employees access, right, across these public networks with maintaining a level of confidentiality? Well, that's where the VPN comes in. It protects that privacy, and when I say privacy,I mean confidentiality of your data, and that's important to understand. We wanna keep those unauthorized users that are connected to public networks out of our communications.

EX: 

                                                                                            #
                                                                                            #    HEADQUARTERS
                                                                                            # SRVR-9  
                                                                                            # SRVR-1        VoIP-12
                                                                                            #     SRVR-5
                                                                                   - - - - - - - -          COM-3 COM-12
                                                                                   - Edge Router -        COM-9 VoIP-17
                                                                                   - - - - - - - -  
                                                                        ==================> # # # # # # # # # # # # # # # # # # # 
                                                                       = 
                                                                     =   
                                         - - - - - - - - - -        =
                                       -                     -     =  
                                     -   PUBLIC Network        - ==    
                      - - - - - -> -       Internet              -     
                    -             -                                 -      
                  -               -                                  -
                -                 -                                  -
              -               - > - - - - - - - - - - - - - - - - -  -
            -                -                ^
* * * * * * *               -                 |
*   HOTEL   *              -                  |
*  Network  *             -                   |
*           *            -                    |   
*           *           |                     |
*           *           |                     |
*           *           |                     |
*           *           |                     |
*           *           |                     |
                        |                     |
                        |                     |
            - - - - - - - - -                 |
            - COFFEE SHOP   -                 |
            -   Network     -                 | 
            -               -                 |    
            -               -       # # # # # # # # # # # 
                                    #  REMOTE OFFICE    #
                                    #    Network        #
                                    #   SRVR-1 /COM-10  #
                                    #   SRVR-2 /COM-7   #
                                    #                   #
=====================================================================================================================================
# Summary
So that's really essentially what a VPN is. Just think of it as a way that we can create a secure connection, maintain that confidentiality and privacy, if you will, of the communications over a public network


VPN Types

Remote access
# How does it work?

EX: 

                                                                                            #
                                                                                            #    HEADQUARTERS
                                                                                            # SRVR-9  
                                                                                            # SRVR-1        VoIP-12
                                                                                            #     SRVR-5
                                                                                   - - - - - - - -          COM-3 COM-12
                                                                                   - Edge Router -        COM-9 VoIP-17
                                                                                   - - - - - - - -  
                                                                        ==================> # # # # # # # # # # # # # # # # # # # 
                                                                       = 
                                                                     =   
                                         - - - - - - - - - -        =
                                       -                     -     =  
                                     -   PUBLIC Network        - ==    
                      - - - - - -> -       Internet              -     
                    -             -                                 -      
                  -               -                                  -
                -                 -                                  -
              -               - > - - - - - - - - - - - - - - - - -  -
            -                -                ^
* * * * * * *               -                 |
*   HOTEL   *              -                  |
*  Network  *             -                   |
*           *            -                    |   
*           *           |                     |
*           *           |                     |
*           *           |                     |
*           *           |                     |
*           *           |                     |
                        |                     |
                        |                     |
            - - - - - - - - -                 |
            - COFFEE SHOP   -                 |
            -   Network     -                 | 
            -               -                 |    
            -               -        # # # # # # # # # # # 
+ + + + + + + + + + + + + + +        #  EMPLOYEE HOME    #
+  (VPN Client)             +        #    Network        #
+  (Employee logging in)    +        #                   #
+ + + + + + + + + + + + + + +        #                   #
                                     #                   #
====================================================================================================================================
KEY

HOTEL Network = Hypothetical Network Representing the
COFFEE SHOP = Hypothetical Network Representing the
EMPLOYEE HOME Network = Hypothetical Network Representing the
PUBLIC Network Internet = Hypothetical Network Representing the Public everyday clear web
HEADQUARTERS = Hypothetical Network Representing a work network environment
(VPN Client)/(Employee logging in) = Represents a work employee/end user logging in using a VPN Client over ANY 3 of the networks


FYI: We can have multiple remote access VPNs

# Summary
So we want to make sure that we secure these communications and a remote access VPN really is a type of VPN that allows a single client to make connections. So what do we do? We bring up this tunnel, right, and the tunnel is that logical aspect of it, right, that allows us to secure the communications across this public network. 

A lot of employees at your company that maybe they are connecting back into company resources. And the way they do that is with a VPN client typically running on the host machine, some kind of software that allows you to enter the configuration parameters

Or even easier, right, admins like this cuz we like to control this, we don't want our users to enter this information. We can create things like profiles, that when the client comes online, it's basically checks, and I say online, when you bring up the VPN, it checks a configuration file and automatically configures the VPN according to the parameters that need to be set. And then we can tunnel that information over the public network.

# FYI: Understand, the tunneling by itself doesn't really protect your information, right? We don't just bring up a tunneling, we use a tunnel protocol to create that logical connection, but that tunnel is brought up and then we encrypt the information. Information that's leaving the branch office, heading to the headquarters or vice versa is then encrypted and it's the routers that actually have to do this. 

Site-to-site

FYI: One of the deviations between a remote access VPN is a site-to-site VPN, all right? You might also hear it called router-to-router and you're gonna see why they call that, and most commonly, it's called a site-to-site VPN.

# How does it work?
 EX:

So let's go ahead and set up our same scenario, right? We've got our headquarters, we've got our public network, but what changes a little bit is now we've got multiple branch locations, multiple remote locations, all right? And what we do is these routers actually bring up the tunnels and connect routed-to-router, if you will. So a little bit different on this one, right? Because now the routers are controlling the communication between the different sites, right? And we bring up the tunnel over the public infrastructure and it allows us to communicate between branch office and headquarters and vice versa.

EX: 

                                                                                            #
                                                                                            #    HEADQUARTERS
                                                                                            # SRVR-9  
                                                                                            # SRVR-1        VoIP-12
                                                                                            #     SRVR-5
                                                                                   - - - - - - - -          COM-3 COM-12
                                                                                   - Edge Router -        COM-9 VoIP-17
                                                                                   - - - - - - - -  
                                                                        ==================> # # # # # # # # # # # # # # # # # # # 
                                                                       = 
                                                                     =   
                                         - - - - - - - - - -        =
                                       -                     -     =  
                                     -   PUBLIC Network        - ==    
                      = = = = = => -       Internet              -     
                    =             -                                 -      
                  =               -                                  -
                =                 -                                  -
              =                   - - - - - - - - - - - - - - - - -  -
            =                                 ^^
* * * * * * * * * * *                         ||
*   BRANCH OFFICE   *                         ||
* Network 1         *                         ||
*                   *                         ||   
* SRVR-7            *                         ||
*       SRVR-54     *                         ||
* COM- 18           *                         ||
*       COM-65      *                         ||
*                   *                         ||
                                              ||
                                              ||
                                              ||
                                              ||
                                              ||
                                              ||   
                                    # # # # # # # # # # # 
                                    #  BRANCH OFFICE    #
                                    #    Network  2     #               
                                    #   SRVR-1 /COM-10  #
                                    #   SRVR-2 /COM-7   #
                                    #                   #
=====================================================================================================================================
KEY

BRANCH OFFICE Network 1 = Hypothetical Network Representing the Branch Office of a company
BRANCH OFFICE Network 2 = Hypothetical Network Representing the Second Branch Office of the same company 
PUBLIC Network Internet = Hypothetical Network Representing the Public everyday clear web
HEADQUARTERS = Hypothetical Network Representing a work network environment
' =========> ' = Represents communication through a VPN Tunnel from branch office 1
' =========> ' = Represents communication through a VPN Tunnel from The Public Internet to the Headquarters of CO. 
   '||'   =  Represents communication through an encrypted VPN Tunnel  from branch office 2

# FYI: Understand, the tunneling by itself doesn't really protect your information, right? We don't just bring up a tunneling, we use a tunnel protocol to create that logical connection, but that tunnel is brought up and then we encrypt the information. Information that's leaving the branch office, heading to the headquarters or vice versa is then encrypted and it's the routers that actually have to do this. 


# Constraints?

So one of the limitations to this can be is the fact that how many of those simultaneous connections can your router participate in, right? They used to have, and they're still out there, I say used to have but they're still out there, for instance, Cisco has their VPN concentrators. If you ever hear that term, that's a term that literally has an aggregation board, a lot of processors. And what it can do is it can handle the encryption and decryption, so basically allowing you to scale up a little bit more.



Always-on


# Full Tunnel vs. Split Tunnel
Full-tunnel is everything's going through the tunnel. And we can say, nope, sorry, you can't connect to anything else.
Split-tunnel, allows corporate resources to maintain their encryption and protection, and everything else goes out to the public network.


Split tunnel


Full tunnel

- A full tunnel. When you bring up that VPN tunnel, every access request, every resource request goes through that tunnel
                                                         
                                                         -                       -
                     |HOTEL|                             -    not-work.com       -                   |HEADQUARTERS|
                --->  |Network|                          -                       -                  |Internal Network/Resources|
                                                         -                       -                    |srvr-1  srvr-3|
                                                         -   |PUBLIC Network|    -                   |com-2  com-9 VoIP-2|
                                                         -    |(Internet)|       -
                      |COFFEE SHOP|           #ROUTER#   -                       -  #ROUTER#     
(VPN Client) --------> |Network|                         -                       -
(End User)                                               - - - - - - - - - - - - -     

                        |HOME|
                  --->  |Network|
========================================================================================================================================
KEY
not-work.com = any website that is NOT work related. (Has nothing to do with accessing resources in the HEADQUARTERS)



In the diagram above ...
Think about if you need to make a connection to something like, not-work.com. Which has nothing to do with accessing the resources within HEADQUARTERS.
So, it wouldn't make sense to allow the communication to go all the way through the tunnel to the gateway router, right? And then back out, if you will, to whatever that public resource is.
So what we do is instead of allowing that, we create a split-tunnel, two tunnels
There's really just that one tunnel. But now what we're doing is you are scrutinizing with in the one tunnel
# How does it work?
EX:
I'm throwing out a resource here, right? It is a secure FTP server within the headquarters. Well, I want that information going over the tunnel, but if it's not-work.tv, I wanna let, just go ahead and go out there, right? We don't need to encrypt that information. We don't need to keep that information secure


# NOT in the slide

 Other thing I also wanna mention, cuz it's not in the diagram, if we have a VPN site-to-site communication, we can do the same thing. We can say, okay, if you're gonna go connect from the branch office back into the headquarters, well, we need you to go through the gateway or the site-to-site, the router. 
 
 But when you're just doing normal communications, I don't want everything going all the way. Let's say we've got a remote office in California and our headquarters is in Florida. I don't want it to have to go over slow WAN links, be encrypted, decrypted, and go all the way into the headquarters to come back out to the Internet, right? So you can also implement a split-tunnel into site-to-site method as well.


VPN Tunneling Protocols
- Creates tunneled communication
- DOES NOT secure communication
- MUST be coupled with and ENCRYPTION protocol

FYI: They really only call out one protocol, and that's L2TP

VPN Tunneling Protocols and Encryption

PPTP (Point to Point Tunneling Protocol) PORT# 1723
- Widely supported
- Very old
- Weak
Encryption standard: Microsoft Point-to-Point Encryption (WEAK sauce)


L2TP (Layer Two Tunneling Protocol)
- Widely supported
- Strong security
- Its has Complex Firewall blocking
- Because it uses MULTIPLE ports you could have some issues
Encryption standard: IPSec AES Advanced Encryption Standard / Certificates (STRONG like Bull)

SSTP (Secure Socket Transport Protocol)
- Allows Firewall traversal
- Only available for windows
- Not widely adopted
- Could have proxy issues
Encryption standard: SSL Secure Socket Layer 3.0 (WEAK sauce)

EX: Think about secure socket when you connect to something HTTPS, right? That's gonna be over Port 443. So this allows you the firewall traversal
 
IKEv2 (Internet Key Exchange Version 2)
- Has Mobility support
- So Microsoft has their always-on tight VPN communication, the VPN triggering. So think about a mobile device that hops between wireless networks, right? IKE version 2 is really one that it supports that. In fact, you might even call it or hear it called by it's an abbreviated name instead of mobility IKE or mobile IKE, they call it MobIKE
- LIMITED support
- You could expierence Firewall issues with it blocking this form of communication
Encryption standard: AES Advanced Encryption Standard / Certificates (STRONG like Bull)

FYI: SSL 3.0 and anything below that too is pretty much being just phased out and has been phased out in favor of things like TLS, Transport Layer Security, where you get that certificate based on mutual authentication.



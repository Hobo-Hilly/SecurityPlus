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



Site-to-site

Always-on

Split tunnel

Full tunnel

VPN Tunneling Protocols

VPN Tunneling Protocols and Encryption

PPTP

L2TP

SSTP

IKEv2

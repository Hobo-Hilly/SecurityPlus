This is all about network Segmentation and how it relates to security

################### NOTE !!!!!!!!!!!!!!!!!! 
We are referencing the OSI model from a BOTTOM to TOP approach. This is the opposite way it was taught to us. Just a heads up.


Network segmentation (two slides)
# Why do we do this?
- Performance
EX: If we have 50 computers and 2 different deparments. Instead of having all 50 computers competing for resources on one network. We can segment the network using different subnets.

So 25 computers use 10.0.5.X

25 Computers use 10.0.6.X

Instead of 50 Computers using 10.0.X.X

- Security 
EX:
when you have every device in the network listening to every other device in the network, you have a potential for information to get transmitted between these devices that you don't necessarily want to be transmitted to everybody.

=============================== Visual Example ======================================================================
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-                                                                                                                     -
-                                               NETWORK                                                               -  
-                                                                                                                     -  
-     * * * * * * * * * * * * * * * * * *                           * * * * * * * * * * * * * * * * * *               -
-     *  SRVR1          SRVR2           *                           * SRVR4      SRVR5      SRVR6     *               -
-     *                                 *                           *                                 *               -
-     *                                 *  - - - - >  XXX <- - - -  *                                 *               -
      *   Segment # 1                   *                           *    Segment # 2                  *               -
-     * COM1   COM2    COM3  COM4       *                           * COM5 COM6 COM7 COM8 COM9 COM10  *               -
-     * * * * * * * * * * * * * * * * * *                           * * * * * * * * * * * * * * * * * *               -
-                                                                                                                     -
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
KEY
XXX = Cross communication chatter is elemenated 
SRVX = Servers
COMX = Host Computers

# Summary
This is how a network that is segmented into two seperate networks would look.
We do this so that all of the COMS with in each Network segment can have a clear communincation path to the resources they need access to.
but this helps to really just streamline the performance of your networks. Isolate those communications with only devices that have a common need to communicate and isolate that in a way
So not every device will hear every other device on the network and again, bringing down those things like broadcast domains and really just isolating that communication to the series of computers that you need.

# But basically what we're saying is by and large, if your traffic doesn't need to go over there and be looked at keep it out of that system. 
FYI: HUBS are nothing more than a multiport repeater. A communication comes in one port automatically gets sent out all other ports. They don't inspect traffic or everything

# How does it work?
 And as you connect more devices and more hubs, you can have one device send out a broadcast communication that was really only intended for just a subset of the computers within that network, but everybody hears it, right? And that can cause those performance issues that ultimately can run contrary to the availability side of the CIA triad.



Network Segmentation using the data link layer

And in comparison to the OSI model, one of the ways that we do this is, through at the data link layers, through what are known as VLANs, Virtual Local Area Networks. 


Virtual local area network (VLAN)

# How does it work?
- When a switch needs to figure out, where to send communication, it's only aware of the devices that are directly connected to its ports

- Think of a VLAN as a way to divide a switches ports up into multiple switches.
- This is segmentation using layer 2 on the OSI model Data Link Layer

LAYER 2 (Data Link Layer) VLANS 
=============================== Visual Example Subnetting with VLANS ==================================================
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-                                            * * * * * * * * * * *                                                    -
-                                            *     NETWORK       *                                                    -  
-                                            * * * * * * * * * * *                                                    -  
-     * * * * * * * * * * * * * * * * * *                           * * * * * * * * * * * * * * * * * *               -
-     *  SRVR1          SRVR2           *                           * SRVR4      SRVR5      SRVR6     *               -
-     *                                 *                           *                                 *               -
-     *                                 *  - - - - >  XXX <- - - -  *                                 *               -
      *   VLAN 10                       *                           *    VLAN  20                     *               -
-     * COM1   COM2    COM3  COM4       *                           * COM5 COM6 COM7 COM8 COM9 COM10  *               -
-     * * * * * * * * * * * * * * * * * *                           * * * * * * * * * * * * * * * * * *               -
-                                                                                                                     -
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
KEY
VLAN = Virtual Local Area Network
XXX = Cross communication chatter is elemenated 
SRVX = Servers
COMX = Host Computers


LAYER 3 (Network Layer) Subnets
======================================== Visual Examlpe of Segmentation at Layer 3 =======================================
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-                                            * * * * * * * * * * *                                                    -
-                                            *     NETWORK       *                               -                                            *     ROUTER        *                                                    -  
-                                            * * * * * * * * * * *                                                    -  
-     * * * * * * * * * * * * * * * * * *                           * * * * * * * * * * * * * * * * * *               -
-     *  SRVR1          SRVR2           *                           * SRVR4      SRVR5      SRVR6     *               -
-     *                                 *                           *                                 *               -
-     *                                 *  - - - - >  XXX <- - - -  *                                 *               -
      *   10.0.0.0/24                   *                           *    10.0.1.0/24                  *               -
-     * COM1   COM2    COM3  COM4       *                           * COM5 COM6 COM7 COM8 COM9 COM10  *               -
-     * * * * * * * * * * * * * * * * * *                           * * * * * * * * * * * * * * * * * *               -
-                                                                                                                     -
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
KEY
ROUTER = Edge router 
10.0.0.0/24 = Original Internal Subnet
10.0.1.0/24 = SECONDARY subnet  
XXX = Cross communication chatter is elemenated 
SRVX = Servers
COMX = Host Computers

- So this diagram allows us to implement ACL's Access Control Lists

# How does it work?
Access Control Lists. Which really just kind of either allow or deny the traffic even further controlling the communication that happens between Virtual Local Area Networks by adding the routing layer. We can say, all right, well if you're supposed to communicate across the VLAN, well, let me go ahead and send that information into the router here and the router look at its ACL and say, No, I've got a rule right here that says deny that communication.

EX: 
So if I have something like maybe, let's say for instance, I have a web server and a database server and I don't want any other computer talking to that device in my network, well, we could put them into that VLAN. And if we need, let's say outside e-commerce to come in and talk to that we can let that through with those ACLs.

DMZ (Demilitarized zone)

# How does it work?

=============================== Visual Example ======================================================================
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-                                                                                                                     -
-                                               NETWORK                                                               -  
-                                                                                                                     -  
-     * * * * * * * * * * * * * * * * * *                           * * * * * * * * * * * * * * * * * *               -
-     *         PUBLIC NETWORK          *                           * SRVR4      ECOM SRVR7     SRVR6 *               -
-     *          Internet               *                           *                                 *               -
-     *                                 *   ---------------->       *                                 *               -
      *    USER1                        *     Direct connection     *   Private Network               *               -
-     *                                 *                           * COM5          COM6              *               -
-     * * * * * * * * * * * * * * * * * *                           * * * * * * * * * * * * * * * * * *               -
-                                                                                                                     -
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
KEY
USER1 = User out on the public internet
Private Network = Internal network 
ECOM SRVR7 = Server hosting E-commerce web site

The diagram above is meant to show a DIRECT incoming connection to a Private Network from the Public Internet
If you were hosting a website you would have a webserver up. e-commerce it the example here.
We need people to connect to our private network to access our web server hosting the e-commerce web site. But we do not want them to have a direct connection into the network. This is where the DMZ comes into play.

- Below we create a perimeter Network which is the DMZ
- Most of the time it will appear between TWO firewalls
- A lot of times, this isn't two interfaces on the same firewall.

=============================== Visual Example ======================================================================
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-                                                                                                                                     -
-                                                                                                                                     -
-                                                                                                                                     -  
-     * * * * * * * * * * * * * * * * * *                                             * * * * * * * * * * * * * * * * * *             -
-     *         PUBLIC NETWORK          *                                             * SRVR4      ECOM SRVR7     SRVR6 *             -
-     *          Internet          - - -*- - -                                    -  -*- - -                            *             -
-     *                            -  edge   -                                    - edge   -      Private Network       *             -
      *    USER1                   - Router  -                                    - Router -                            *             -
-     *                            - - -*- - -                                    - - *- - -   COM5   COM6              *             -
-     * * * * * * * * * * * * * * * * * *                                             * * * * * * * * * * * * * * * * * *             -
-                                                                                                                                     -
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
KEY
USER1 = User out on the public internet
Private Network = Internal network 
ECOM SRVR7 = Server hosting E-commerce web site
edge Router = Perimeter network device

# How does it work?

- And what happens is, we take that resource that we want them to have access to, and we allow public access, if you will, to that one resource.


=============================== Visual Example ======================================================================
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-                                                                                                                                     -
-                                                                                                                                     -
-                                                                                                                                     -  
-   * * * * * * * * * * * * * * * *                                                      * * * * * * * * * * * * * * * * * *          -
-  *          PUBLIC NETWORK      *                                                      * SRVR4                     SRVR6 *          -
-  *       Internet               *      - - - - - -                      - - - - - -    *                                 *          -
-  *                              *      -  edge   -     ECOM SRVR7       - edge    -    * Private Network                 *          -
-  * USER1                        *----> - Router  ---->   SUCCESS!!!     - Router  -    *                                 *          - -                                 *      - - - - - -                      - - - - - -    *                                 *          -
-  *                              *                                                      *   COM5   COM6                   *          -
-  * * * * * * * * * * * * * * * *                                                       * * * * * * * * * * * * * * * * * *          -
-                                                                                                                                     -
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
KEY
PUBLIC NETWORK = Public Internet
USER1 = User out on the public internet
Private Network = Internal network 
ECOM SRVR7 = Server hosting E-commerce web site
edge Router = Perimeter network device
SUCCESS = we are able to connect to resource through the permiter network device

- An example is a web server. Now, the person that's on or entity, USER1, that's on the public network, they can communicate through the forward-facing the outbound public network. This is the forward-facing interface on the firewall. And they can connect to the web server.



- But what they can't do, is cross through that boundary in to the private network. And this is one other place where ACOs come into play too. Because we might put a rule on the internal facing side of that firewall and say, you know what? We want one device, one connection from the DMZ into our network. That might be something like the web server communicating with a backend database server


=============================== Visual Example ======================================================================
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-                                                                                                                                     -
-                                                                                                                                     -
-                                                                                                                                     -  
-   * * * * * * * * * * * * * * * *                                                      * * * * * * * * * * * * * * * * * *          -
-  *          PUBLIC NETWORK      *                                                      * SRVR4                     SRVR6 *          -
-  *       Internet               *      - - - - - -                      - - - - - -    *                                 *          -
-  *                              *      -  edge   -     ECOM SRVR7       - edge    -    * Private Network                 *          -
-  * USER1                        *----> - Router  ---->      --->  ----> - Router  - XXX--->FAIL !!                       *          - -                                 *      - - - - - -                      - - - - - -    *                                 *          -
-  *                              *                                                      *   COM5   COM6                   *          -
-  * * * * * * * * * * * * * * * *                                                       * * * * * * * * * * * * * * * * * *          -
-                                                                                                                                     -
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


# Summary

Now, these are called a couple of different names, all right? And it really depends on what you're reading, Perimeter Network, Screen Subnet, I've heard them called, it all boils down to this DMZ. It's a perimeter network outside of your internal private network and forms kind of like a boundary between public and private access, 



VLAN's
The inside of the private network, typically, when we're creating these VLANs.
We've got this artificial boundary, right? This boundary of our network. We've got all of these devices

We gather some information that they shouldn't have access to. So, what we do, is we take our switch, a managed switch, if you will, and we create these, again, logical boundaries in between the computers, the devices within our networks, and these become what are known as VLANs.

So, we can put a grouping of computers that are connected to the switch and VLAN 10, one in VLAN 20, and one in VLAN 30, if you will, VLAN 40.



# How does it work?
These computers that are within the VLANs, have the ability to communicate amongst themselves. When they send information in the switch, the switch looks at a VLAN tag and says, hey, all right, I see this is information that is bound for VLAN 10. I'll allow that information to be there


                                    # # # # # # # # # # # # # # # # # # # # # # # 
                                    #      Managed         Switch               #
                                    # # # # # # # # # # # # # # # # # # # # # # #


 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *   - - - - - - - - - - -           - - - - - - - - - - - - - - - -        - - - - - - - - - - - - - -  -    - - - - - - - -      *
 *   - SRVR-15 /  SRVR-2 -           - SRVR-47 / SRVR-12 / SRVR-7  -        -  HTTPS-SRVR1 / MySQL-SRVR1 -    -  PBX-SRVR1  -      *
 *   -                   -           -                             -        - - - - - - - - - - - - - -  -    -             -      *
 *   - COM-11 / COM-2    -           -  COM-16 / COM-29            -              VLAN 30                     -  VoIP-Phone#-      *
 *   - COM-14 / COM-4    -           -  COM-19 / COM-25            -                                          -  VoIP-Phone#-      *
 *   - - - - - - - - - - -           - - - - - - - - - - - - - - - -                                          - - - - - - - -      *
 *        VLAN  10                             VLAN 20                                                           VLAN 40           *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
VLAN #10 = Accounting

VLAN #20 = Developers

VLAN #30 = General Resources

VLAN #40 = Company Internal Phone Networking System

Intranets
Extranets
East-west traffic and Zero Trust
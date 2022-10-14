

Proxies
# How does it work?
- It's about controlling requests to resources. When we look at proxies, think of a proxy as a person in the middle

- Now a forward proxy, I want you to think of it this way, we have an internal network, and we have client requests. 
- Not FTP || SSH ! That's not what we're talking about, what we're talking about is a request to access a web page. 
- The proxy actually stands in the middle of our client requests
- And what we do is we configure our web browsers to point to a certain internal server, that's performing the proxy service for us. 

- Two different types of Proxies
- With the forward proxy we can scrutinize and control what access to different websites our internal users have out there across the internet
1. Think about it in our network outbound traffic being forward, accessing resources out on the internal or the external network, which is really internet based resources. That's the forward proxy.

2. Now it's not impossible, but let's say the PROXY obfuscates the internal IP addresses on the internal network. So the outbound computer that is making the request that's all the public internet sees proxies work the same way. It's going to generate a new request and it's going to send it out bound to some kind of internet based website.
3. Okay, when I say request, hey, let me view this web page. That request comes back to the proxy, the proxy caches it. Now, caching on a proxy is really no different than any other cache that we talked about, it speeds up performance.
4. And if a client request comes in for the same resource, we can look locally, and we can improve the performance.

# History
Now, in an earlier days, this is one of the ways we would do things like DNS filtering, right? We would do URL filtering, right? We can do all of that today, a lot of times we have that in a unified threat type of device, right? We're doing unified threat management, we have a firewall that does all of that stuff, the next gen firewalls that go all the way up to the application stack very, very sophisticated devices.

    Forward
EX:
- - - - - - - - - - - - - - - - - - - - - - - -                              - - - - - - - - - - - 
-        Internal Network                     -                              | Internet Resource  |                       
-  |COM-1|                          * * * * * -              New Request     |                    |          
-         - - - - - - - - - - ->    *       * -# # # # # ==================> |                    |
-        Client Requests            * SRVR-1* -#ROUTER #                     |                    |
-     |COM-2| - - - - - - - - - ->  *       * -# # # # # <=================   - - - - - - - - - - -  
-                    - - - - - - >  * * * * * -                              
-                   -                         -
-  |COM-3|- - - - -                           -
- - - - - - - - - - - - - - - - - - - - - - - -

FYI: NAT (Network Address Translation)
# How does it work?
Well, at a high level, it allows us use internal IP addresses that are non routable across the public Internet. It manipulates and changes that internal IP address to the public facing IP address that is routable



    Reverse

- The reverse proxy works a little bit different. It's still the same concept that it's standing in and between, I should say, in line of a communication between a request for a resource and access and delivery of that resource, but it goes a different direction.

# How does it work?

EX:
If we look at the reverse proxy, now we've got requests outside of our network, right not generated internally from our network. So we've got our internet facing traffic, we got our internal network. 
But remember we also put screen subnets or DMZs as they are commonly known, right between two firewalls. And we have a resource that allows for public access from the internet.

1. So our internal resources, there is going to be a request made from the outside to some kind of internal resources within our network. We put out reverse proxy in the DMZ, and what that reverse proxy does is it asks our internal resources on behalf of the outside resource request, hey, can I have that request

                                                                            ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
                                                                            ^  Outside Resource Requests    ^
- - - - - - - - - - - -                     DMZ                             ^                               ^
-  SRVR-1  < -------- -                  ___________                        ^ AKA The INTERNET              ^
-                     - <============= < | Reverse |  <===================  ^  USER-1                       ^     
-  SRVR-3  < -------  -  * * * * * * *   | Proxy   |   * * * * * * *        ^        USER-3                 ^    
-                     -  * Firewall  *   | Server  |   * Firewall  *        ^              USER-7           ^    
-  SRVR-5  < -------  -  * * * * * * *   |_________|   * * * * * * *        ^                               ^
-                     -                                                     ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ 
-  Internal Network   -                         # REQUEST IS MOVING FROM RIGHT TO LEFT
- - - - - - - - - - - -

2. Say we've got an e-commerce server, right? We want people to have public facing access to it, but we don't want them to have access to a request through an API on the back end, if you will, that maybe is tagging a database and returning some results.

3. The reverse proxy looks into our network, let's say in this example queries the database for whatever the results are maybe in a web form, and then returns that information outbound to the reverse proxy that then delivers that information, if you will to the person, the entity that made the outbound request.

# Summary 
So remember the direction of the communication, if we're looking internally on our network, and we're asking for resources out of our network, that's the forward proxy.



Jump servers
Load Balancing
# What does it do?
We have a workload that we need to make sure gets evenly distributed across a common pool of resources.
This happens a lot in the clouds behind the scenes and you're not even aware of it right? When we access some kind of infrastructure with inside of the cloud networks, the cloud providers network, a lot of times you're gonna see load balancing 
And that's gonna spread those resource requests across multiple components, a lot of times in things like server clusters. 


EX:                     10.10.10.100 
                    Virtual IP Address      * * * * * * * * *
 (CLIENT*)  - - - - - - - - - - - - - - ->  * Load Balancer *                           1 == Loadbalancer  
(End User*)                                 * * * * * * * * * 
(Host*)                - - - - - - - - - - -                 - - - - - - - - - - - -
                       - Network Interface -                 -   Network Interface -    2 == NIC's
                       -      Card         -                 -       Card          -
                       - - - - - - - - - - -                 - - - - - - - - - - - - 
                          192.168.123.34                          172.16.100.10      
                                  |                                     |          
                                  |                                     |
                                  |                                     |               
                                  \/                                    \/



                # # # # # #    # # # # # #      # # # # # # #   # # # # # # #  
                # HTTPS   #    # MySQL   #      # PostgreSQL#   # Kerberos  #           4 == Servers / 1 Cluster
                # Server  #    # Server  #      # Server    #   # Server    #               AKA: Resource pool
                # # # # # #    # # # # # #      # # # # # # #   # # # # # # #

======================================================================================================================================

1. We got our client, all right, and our client comes in and what it's going to do is it's going to ask for some kind of resource.
2. the virtual IP address is one that stays the same and is common, regardless of what the physical IP addresses are on the network adapters
    It kind of makes that abstraction if you will. There are things like the common address redundancy protocol, HSRP Which is Hot Standby Routing Protocol is that HSRP, excuse me that's the Cisco proprietary versus, CARP(Common Address Redundancy Protocol) if you will which is the industry wide standard.
- So it always presents to the person, the single IP address.
- Why would we want that? 
EX: Well, let's say that we mapped it to Network Interface Card One and it's IP address, and that card goes offline, that IP Address is no longer good. But if we can kind of abstract through a virtual IP address that applies to two network adapters, then what happens, if one or the other one fail, well, the IP address is still the same and we could fail over to the other network adapter behind the scenes.

And the IP addresses don't change, we don't have to do a massive shift of infrastructure or reassigning of IP addresses in order to maintain access to these resources

FYI: So load balancing, on our load balancer here, we have two network adapters. Understand this is just for theory purposes. You could have more, you're typically going to have at least two network adapters you could have more, as well.
'Resource Pool' is a group of more than 1 server

# Use Case
Just more than one server in this case, that maybe it's a web farm, that's serving up websites. Maybe we're at Black Friday or Cyber Monday, we need to scale up 
But we want to make sure that we always have access to our resources


Configurations

Active/active
- Active active means both network adapters are receiving requests. And though the algorithm is built in the load balancer, what it's going to do is it's going to distribute that workload across multiple resources.

- Performance
    Now that's for performance because if one of our network adapters fails, well guess what, we've lost one of our network adapters and there is really no fault tolerance here.

# The diagram below is ACTIVE/ACTIVE mode. The load balancer, what it's going to do is it's going to distribute that workload across multiple resources. In this case, we're using web servers as an example, evenly based on some criteria. This is for performance


EX:                     10.10.10.100 
                    Virtual IP Address      * * * * * * * * *
 (CLIENT*)  - - - - - - - - - - - - - - ->  * Load Balancer *                           1 == Loadbalancer  
(End User*)                                 * * * * * * * * * 
(Host*)                - - - - - - - - - - -                 - - - - - - - - - - - -
                       - Network Interface -                 -   Network Interface -    2 == NIC's
             ACTIVE    -      Card         -                 -       Card          -   ACTIVE
                       - - - - - - - - - - -                 - - - - - - - - - - - - 
                          192.168.123.34                          172.16.100.10      
                                  |                                     |          
                                  |                                     |
                                  |                                     |               
                                  \/                                    \/



                # # # # # #    # # # # # #      # # # # # # #   # # # # # # #  
                # HTTPS   #    # MySQL   #      # PostgreSQL#   # Kerberos  #           4 == Servers / 1 Cluster
                # Server  #    # Server  #      # Server    #   # Server    #               AKA: Resource pool
                # # # # # #    # # # # # #      # # # # # # #   # # # # # # #

======================================================================================================================================







Active/passive
- Now active passive is one of those configurations where one is on ready. It's serving customers, right? No different, all right, but it's doing all of the legwork

-  let's say that network adapter goes offline? Well through the algorithms and the response that is programmed in the load balancer, the other network adapter, in this case NIC, Network Interface Card two switches from offline to active to online, if you will. And it takes over where the failed NIC left off

EX:
# The diagram below is ACTIVE/PASSIVE mode. The active card does EVERYTHING. The Second NIC sits offline. Should NIC 1 fail. NIC 2 will switch online and pick up where the NIC 1 left off. It's done for fault tolerance right? So that directly affects availability as well.


EX:                     10.10.10.100 
                    Virtual IP Address      * * * * * * * * *
 (CLIENT*)  - - - - - - - - - - - - - - ->  * Load Balancer *                           1 == Loadbalancer  
(End User*)                                 * * * * * * * * * 
(Host*)                - - - - - - - - - - -                 - - - - - - - - - - - -
                       - Network Interface -                 -   Network Interface -    2 == NIC's
               ACTIVE  -      Card         -                 -       Card          -  PASSIVE
                       - - - - - - - - - - -                 - - - - - - - - - - - - 
                          192.168.123.34                          172.16.100.10      
                         |         |     |                                          
                         |        |       |                                
                         |        |        |                                               
                         |       \/        |                               
                         \/                |             
                                           \/ 

                # # # # # #    # # # # # #      # # # # # # #   # # # # # # #  
                # HTTPS   #    # MySQL   #      # PostgreSQL#   # Kerberos  #           4 == Servers / 1 Cluster
                # Server  #    # Server  #      # Server    #   # Server    #               AKA: Resource pool
                # # # # # #    # # # # # #      # # # # # # #   # # # # # # #

======================================================================================================================================






Scheduling Techniques

Round Robin
- We have NIC 1 goes to server 1, server 4, server 3, and then server 2 This is called Round Robin. Each card works together and services requests at random. Like a Round Robin


- Now with each one of these scheduling techniques, they have a way that you can build in additional parameters, right? The technology's got really, really smart to where administrators can get very granular and they can define not just the sequence but add additional parameters. And that's what's going to be known as weighted (Whatever the Technique is) in this case ROUND ROBIN

Weighted Round Robin

Least Connection
- Least connection mode gives the NIC the ability to see Hey, these 3 servers are very connection heavy right now. Load balancing can say hey, let me look at our devices. Let's look at our components that are pooled together and you know what? I noticed that one right there isn't really busy.
- These other 3 they're really pulling their weight, but this one over here, it's kinda silent, it's snoozy. Not really getting a lot of requests, right now. So what this is called, is a least connection type of scheduling. 
- It says, hey, look at the pool of resources that we have and find the one that isn't really being overburdened. And let's go ahead and redirect or schedule traffic to that location. Now imagine this, you add additional parameters, parameters to it, you make it a lot more granular, and you now have something notice weighted least connection. 




Weighted Least Connection

Persistence



Proxies
# How does it work?
- It's about controlling requests to resources. When we look at proxies, think of a proxy as a person in the middle

- Now a forward proxy, I want you to think of it this way, we have an internal network, and we have client requests. 
- Not FTP || SSH ! That's not what we're talking about, what we're talking about is a request to access a web page. 
- The proxy actually stands in the middle of our client requests
- And what we do is we configure our web browsers to point to a certain internal server, that's performing the proxy service for us. 

- Two different types of Proxies
- With the forward proxy we can scrutinize and control what access to different websites our internal users have out there across the internet
- Think about it in our network outbound traffic being forward, accessing resources out on the internal or the external network, which is really internet based resources. That's the forward proxy.

- Now it's not impossible, but let's say the PROXY obfuscates the internal IP addresses on the internal network. So the outbound computer that is making the request that's all the public internet sees proxies work the same way. It's going to generate a new request and it's going to send it out bound to some kind of internet based website.
- Okay, when I say request, hey, let me view this web page. That request comes back to the proxy, the proxy caches it. Now, caching on a proxy is really no different than any other cache that we talked about, it speeds up performance.
- And if a client request comes in for the same resource, we can look locally, and we can improve the performance.

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


Jump servers
Load Balancing

Virtual IP

Active/active

Active/passive

Scheduling

Round Robin
Weighted Round Robin
Least Connection
Weighted Least Connection
Persistence
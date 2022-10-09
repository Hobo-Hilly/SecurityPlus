
More authentication methods

RADIUS(Remote Authentication Dial-in User Service)
- Open Standards
- Uses UDP PORTS
Newer Ports
Authentication Requests on port 1812 
Accounting is done on port 1813

Older Ports 
1645
1646

- Creates a Centralized AAA method
- Allows us to incorporate AAA(Triple A)
    Authentication
    Authorization
    Accounting

Components

- Access Client


- RADIUS Clients
    Dial-up server/VPN Server/ 802.1X compliant AP

- RADIUS Server

# How does it work?

The Access Client sends a authorization request to on of the 3 RADIUS Cliens
The Client creates a RADIUS message and sends it over to the RADIUS Server
The Server will send back a challange 


TACACS(Terminal Access Controller Access Control System)
- Cisco Proprietary software
- Sperates the AAA roles
- RADIUS does AAA all on one server. TACACS allows you to break up the AAA and send parts to another server. making it more expensive to implement but tachnically stronger
- TACACS+ uses TCP encryption

# Summary
(RADIUS) UDP is a connectionless protocol. It doesn't verify at best, you get a checksum that says, yeah, that's bad, throw it up.

(TACACS)TCP on the hand, is a stateful connection oriented protocol, which we're gonna make sure, that we have established a session, the packets are tracks sequence broke down, and then the session is terminated. And if something's wrong, we call back to the other side and we say, hey, something's broke, fix it

I want you to know that RADIUS does use encryption, but the only thing that it encrypts is the password, all right? In TACACS+, the entire process, not just the password, but when we set up the stateful or connection oriented communication, entire process is encrypted.

TACACS+

RADIUS versus TACACS+, RADIUS is it, that's all you can use, TACACS+ allows you to the ability if you wanted to do multiprotocol support.
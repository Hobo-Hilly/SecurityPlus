
More authentication methods!!

RADIUS(Remote Authentication Dial-in User Service)
# What is RADIUS?
RADIUS (Remote Authentication Dial-In User Service) is a client-server protocol and software that enables remote access servers to communicate with a central server to authenticate dial-in users and authorize their access to the requested system or service.

# How does RADIUS work?

RADIUS(Remote Authentication Dial-in User Service)
- Open Standards ( it's very mature, it's been around for a long time, so everybody's using it because it's an open standard. You don't have to pay proprietary royalties to somebody to implement it)
- This is an industry standard.
- Uses UDP PORTS

- There's older ports for more legacy, remote or RADIUS Servers **

    Newer Ports
1812 is used for Authentication Requests 
1813 is used for Accounting Requests

    Older Ports 
1645 was/is used for Authentication Requests
1646 was/is used for Accounting Requests

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


   Access Client                       RADIUS Clients                         RADIUS Server

(Access Client)> - - - - - - - - ->  (802.1X Compliant AP)> - - - - - - - - - -> (RADIUS Server)
(ANY Wireless Device)  < - - - - - - -  <  ||(OR)   < - - - - - - - - < (Remote Authentication Dial-In Service)
                                       (VPN  Server)
                                            ||(OR)
                                      (Dial-up Server)

# Do we still use dial-up?
 Yes. In disasters, where your ethernet, your Sonic ATM based networks all fail, guess what, chances are you still got phone lines. So they would bring in banks of modems, to establish connection to critical communication infrastructure, to keep it up and running. So, yes it is used,


# How does it work?
1. What happens here is, when we make a authentication/Access request. 
2. The Request is received by a "RADIUS Client"
3. The "RADIUS Client" then composes a RADIUS message and sends that off to the RADIUS Server.

NOTE: The RADIUS Client is handling (Autentication Authorization Accounting) all rolled into one server
4. The RADIUS Server sends back a RADIUS challange and one of two things happens...

# Whats a RADIUS challange?
It's just as simple as, hey, I'm a RADIUS Server, I'm gonna generate this message that tells you in the radius language, prove you are who you say you are.

5. That goes back to the RADIUS Clients and back to the Access Client. 

A. You're Allowed
    - If you meet the radius challenge, that means you type the right username and password in, you get led into the network, right? And again your privileges or permissions are gonna be determined based on who you are, which role is in the company,

B. You're NOT Allowed
    - If you do not meet the RADIUS challange, you're not gonna gain access. 
    - You'll either be re-challenge or the connection will be completely dropped. It really just depends on what the network connection request policies are on the RADIUS Server. 


# Short story
1. The Access Client sends a authorization request to one of the 3 RADIUS Clients you may be using.
2. The Client creates a RADIUS message and sends it over to the RADIUS Server
3. The Server will send back a challange 

-------------------------------------------------------------------------------------------------------
TACACS(Terminal Access Controller Access Control System)
- Cisco Proprietary software
- Sperates the AAA roles

- RADIUS does AAA all on one server. TACACS allows you to break up the AAA and send parts to another server. making it more expensive to implement but tachnically stronger

- TACACS+ uses TCP encryption

# Summary
(RADIUS) UDP is a connectionless protocol. It doesn't verify at best, you get a checksum that says, yeah, that's bad, throw it up.

(TACACS)TCP on the other hand, is a stateful connection oriented protocol, which we're gonna make sure, that we have established a session, the packets are tracked in sequence, broke down, and then the session is terminated. And if something's wrong, we call back to the other side and we say, hey, something's broke, fix it

RADIUS does use encryption, but the ONLY THING that it ENCRYPTS is the PASSWORD! 

TACACS+, the entire process, not just the password, but when we set up the stateful or connection oriented communication, entire process is encrypted.

TACACS+

RADIUS Vs. TACACS+, RADIUS is it, that's all you can use 

TACACS+ allows you to the ability if you wanted to do multiprotocol support.
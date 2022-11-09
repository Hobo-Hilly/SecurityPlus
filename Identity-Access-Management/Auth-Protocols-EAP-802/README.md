FYI: There are over 15 different types of EAP methods.

EAP (Extensible Authentication Protocol)
# What is it?
EAP is actually a framework.

- Framework for authentication
- Used in wireless networks
- Think of this as a container that can transport authentication technologies
- It DOES NOT do the authentication itself
- This expands on PPP ( Point to point protocol)

EAP Types AKA: EAP Methods (There are loads of these. Here are the ones for exam)


NOTE: This was developed in response to the question, 
# How do we provide a strong level of authentication inside of wireless networks? And leave room for growth.

1. EAP-FAST (Extensible Authentication Protocol - Flexible Authentication Secure Tunnel)
- It's a protocol that was developed by Cisco and it's used in wireless networks and point to point communications

2. EAP-TLS (Extensible Authentication Protocol - Transport Layer Security)
- This can do Certificate Based Authentication
              Smart Card Authentication
              Token Based Authtentication
NOTE: "one of the most commonly used EAP(Extensible Authentication Protocol) methods in existence today" -Wes Bryant


3. EAP-TTLS (Extensible Authentication Protocol - Tunneled Transport Layer Security)
- It is an extension of EAP TLS. It was invented for creating a secure tunnel. 
- And then once that secure tunnel is established. 
- You then send encrypted authentication mechanism itself between the TWO endpoints

# Additional Protocols not called out but uncle googs found it for us...
- LEAP (Lightweight Extensible Authentication Protocol)
    Lightweight Extensible Authentication Protocol is a proprietary wireless LAN authentication method developed by Cisco Systems

PEAP (Protected Extensible Authentication Protocol)
- PEAP is an 802.1X authentication method that uses server-side public key certificate to establish a secure    tunnel in which the client authenticates with server. 
- The PEAP authentication creates an encrypted SSL/TLS tunnel between client and authentication server

----------------------------------------------------------------------------------------------------------

EXAM ALERT!!
FYI: This is NOT to be confused with 802.11X. Which is the wireless LAN implementation standards by the IEE.

802.1X
It's primarily used in wireless networks, but it can be in wired networks too
it really boils down to port based authentication

- Port based authentication
- Components used in process
    Supplicant (Wireless Client) 
    - Any wireless device
    
    Authenticator (802.1X Compliant Access Point) || WLAN Controller ( The wireless Lan Controller coordinates a large number of access points)
    - And what happens is, it'll actually lock that port down and then the 802.1X device will turn around, and it'll talk to the authentication server. So you don't even make your way into our network until we've talked to the authentication server
    
    Authentication Server(RADIUS Server)
    -  a RADIUS server will send a challenge back to the supplicant, or in this case, the wireless client. 
    - Then the wireless client responds back to the challenge. How do they do that? I'm gonna type your username and password, right. And then that goes back through the authenticator
    - The authenticator is the gatekeeper

# Summary  
Know what 802.1X is. It is a port based authentication down at the physical level, we can close the electrical current off to the port while we go talk to the person that we need to talk to. If that person says who are you and you pass that test port opens up, you gain connectivity to the wireless network. 

EX:


   SUPPLICANT                            AUTHENTICATOR                         AUTHENTICATION SERVER

(Wireless Client)- - - - - - - - ->  (802.1X Compliant AP)                        (RADIUS Server)
(ANY Wireless Device)                        ||(OR)                      (Remote Authentication Dial-In Service)
                                       (WLAN Controller)
                                       (WLC Wireless LAN Controller)

# What is a WLC?
    A wireless LAN controller is used in combination with the Lightweight Access Point Protocol to manage light-weight access points in large quantities by the network administrator or network operations center. The wireless LAN controller is part of the Data Plane within the Cisco Wireless Model.
# Application
When you have 100's maybe 1,000's of AP(Access Points) to manage. You need some type of centralized administration. And WLC offeres that.


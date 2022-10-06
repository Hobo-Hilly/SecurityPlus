


* IPSec Intro
- IPSec is short for Internet Protocol Security 
- It's a group of technologies. It's a group of protocols all working together to secure your information as it goes over public networks - Now we do encrypt communications using HTTPS BUT that is for specifically web communications

* IPSec Implementations
- Virtual Pricate Networks (VPNs)
                                                    * * * * * * * * * * * * * * * * * 
                                                    *                               *
                                                    *                               *
                                                    *                               *                                
* * * * * * * * *                                   *           PUBLIC              *                               * * * * * * * * *
*  Main         *          * * * * * *              *           INTERNET            *           * * * * *           * Partner       *
*               * - - - - -*  Edge   * - - - - - -  *                               *- - - - - -* Edge  *- - - - - -*               *
*  Network      *          *  Router *              *                               *           * Router*           * Network       *
* * * * * * * * *          * * * * * *              *                               *           * * * * *           * * * * * * * * * 
                                                    *                               *
                                                    * * * * * * * * * * * * * * * * * 




- Branch Office Connectivity
EX: So imagine you have a main office, you have a public network, (which we usually call pretty much the Internet).That branch office. We wanna make secure connections to the resources from the branch office into the main office across that public network
To do this we can use IPsec

- Partner Extranet 

EX: We can also do this in things like for instance partner Extranets. So imagine that Dan has a company that supplies maybe components of things that my company builds and we wanna do some kind of communication so that I can expedite buying those parts from his company. Well, we might do something where we have some kind of partner extranet. The diagram above reads the same its just being used for a different purpose

Now these are typically what are known as site to site. Router to router, gateway to Gateway VPNs. And we don't necessarily have to use IPSec, but it is common to use IPSec in these type of VPN communications

EX: How about a situation where you have one user that needs to make a connection across the public network into a remote access server and then gain access to the corporate resources or the resources within the corporate network.

- We would use a remote access VPN says well


Now the difference between those two types of VPNs. Site to Site means that the routers, the gateways are establishing a tunnel for encrypted communication here with remote access VPN.

You'll notice that we do not have two routers here, right? It's not site to site. What we have is client software typically running on the operating system of the client. That's gonna connect, and they're gonna connect into a gateway, so you might hear it called client Gateway, or even just a remote access. 

- But notice the difference here. Multiple connections can be used in these site to site type VPNs. 

- A single connection from remote access VPN into the corporate network

* IP Components - SAs

- Security Associations are going to establish a trust relationship between two endpoints 



* IP Sec Components - Phase 1 SA **\(two slides\)**
- There is NO Sensitive information going anywhere right meow. 
- This phase is simply a negotiation the defines...
    1. What the key exchange method is going to be (Which diffie hellman method are you going to use)
    2. Authentication Method two options (PSK Pre Shared Key aka Password || Certificates )
    - Passphrases aren't quite as secure as a certificate, so if you're going to go through the process of setting up an IP SEK VPN, chances are going to be using a certificate, but understand that you could use a pre shared key as well
    - Remember the Diffie Hellman key exchange? The higher the group number, the more the stronger it is
    3. Encryption (AES, 3DES, DES)
    4. Session Duration
    - part of the session duration is defined before we start communicating and when that session is done Ipsec will tear the tunnel down
    EX:  If I capture information and I try to replay it to Dan when he's had an IPsec communication, let's say between him and an end point. Problem is. That session is tore down. That's not going to be trusted, so we also do session duration. That is the phase One security Association

                                 At this point it is just defining traffic management to set up 


* IP Sec Components - Phase 2 SA **\(two slides\)**

- IKE Phase 2 aka Quick Mode
- quick Mode Security Association and now here is where we're getting into data exchange now
- We will be setting up two ONE WAY tunnels. One from each end point to the other. Both sending one way encrypted data

1. Negotiation ( )
2. IP Sec Protocol (We're going to define what is the IPsec protocol we're going to use, which means do we need the authentication and integrity without encryption? Or do we need authentication integrity, with encryption)
3. Then once that's done, we're going to define what the encapsulation method is
4. And then authentication, this time is going to be MD5 or SHA
5. Session Duration( How long should I wait? We're going to define that before we actually set these up, so that once that data communication is done, that security association is tore down.)
6. Right here's an optional DH exchange Diffie Hellman exchange
- This is for if you wanted to implement perfect forward secrecy: And what that means is that it's going to rotate. Through keys for each communication that goes through that tunnel



* IP Sec Protocols 
AH
- Authentication Header
- Provides Authentication and Integrity 
- Does not offer encryption 
- Uses IP Protocol 51

ESP (Encapsulated Security Payload)
This is what is actually going to encrypt that information as it makes its way again across that IPsec tunnel
- Encapsulating Security Payload
- Offers Authentication/ Integrity and Encryption
- Uses IPprotocol 50

IPSec Encapsulation

Transport Mode vs Tunnel Mode

***  With out Ipsec

IP Header   |    TCP/UDP   |  Payload


*** ESP Transport Mode 

Original Header | ESP |  TCP/UDP |  Original Payload | ESP


*** ESP Tunnel Mode

New Header | ESP |  Original Header  |TCP/UDP |  Original Payload | ESP







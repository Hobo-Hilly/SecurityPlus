User Logon

Authorized user resource access

Attacker - sniffing

The replay attack
# What is it?
- When it comes to a replay attack. What are we talking about? Well, we're talking about the retransmission of data, that's a replay attack. 
- The concept is, let's say, we've got a user, right, a user is gonna log in maybe to some kind of server, maybe a login server, right? Now, the login successful, well, imagine this, imagine after that login happens, right, now, the user can access the resource. That's the normal procedure.

# How does it work?
EX:

- Now, let's pull our attacker in here, when we look at our attacker. We've got a user, a user going to log into a server.

- When the user logs in. Here's where are bad actor, our threat actor comes in. 

- So now, what happens when the login goes across the network, notice what's gonna happen. Our attacker is out here on the network doing a little packet sniffing and, yes, the login is going to be successful. 

- But now, we've got somebody in the middle..., that attacker captures that information? The user is accessing the resource just like we think they should. However, after the accessing of the resource, the users loging or the captured login is then replayed against the resource server. Which then by retransmiting that resource request to the resource server. The attacker potentially has access to the resources, bypassing the login all together. 

- So this is kind of what an example of a replay attack, capturing that information, being in between the communications, right, storing that information, if you will. And then passing that information off back to the resource server.

- once I've got the authenticated information that you need, I no longer need to bother with the login server anymore. The resources just go, you got the right thing. 

- You get your TGT, your ticket granting tickets, and the server sends you that back. And then you hand that ticket granting ticket back to the resource server. 

- Well, we just went ahead and we scrape some of that and now, we'll just pass that off to the resource server. 

We got the good stuff and then we essentially get access, so that really is what a replay attack essentially is. Now, keep in mind, the complexities behind it, there are various types of replay attacks. But this essentially, is the gist of a replay attack. 

Demo Wireshark TCP sequencing
# What is it?

- Sniffing type, how do we get that information? >> All right, well, so something like Wireshark, right? So a packet or protocol analyzer, if we're out there on the network and we set it into what's known as promiscuous mode where, see, network adapters they really need to communicate between or only communicate with packets that are addressed to them, right? 
- If I send a packet of information to, Dan right, his network adapter is going to recognize that address and it's gonna answer the information. All the other computers on the network, since it's not addressed to them, they're not even gonna bother with it. It's probably not even go to them, but an attacker puts their network adapter into promiscuous mode. 

- And what that says is I don't care about the addressing information. I wanna see Everything that's going across your network to everybody, and that's one of the reasons things like broadcast communications in IPV 4 can be something that can really. When it comes down to it, can be exploited. 

- Because if everybody is receiving the communication and part of that everybody is the attacker on your network and they've got this protocol analyzer packet sniffer. They can capture that information, stored in what's known as like a pcap file, turn around and use that information later, and end up using it to attack your systems.
''

Demo connecting to FTP server and capturing FTP login

# PASS THE HASH BELOW

# How does it work?
 insights on how that information is then passed from the attacker, out to the resources that is trying to get to

 An example of a specific type of replay attack which is called pass the hash.
 
 - Our user is going to perform some kind of log in to a login server. (It's important understand that we typically don't send any kind of clear text password across the network) 
 
 - Usually what your login server is doing, is really checking the local hash that they've got stored on their database. Well, if the attacker can actually get that hashed password, all right? Then what they can do is they can replay it later. 
 - So after they collect that hash value and then later at another time they can take that hash value and replay that against the login server. 
 
 - Retransmitting that hash, and remember since this login server isn't storing the username, isn't always in storing the actual words or the characters, just that hash. Is gonna look and say, okay, somebody just passed me this hash value. I'm gonna look at my database and hey, look it matches, they think it's the authorized user. 
 
 - The authentication system is none the wiser, and now they end up getting access to whatever it is, privileges, authorization that the authorized user has access to. So that's kind of an example of a specific form of replay attack.


                                            

                                          * * * * * * * * * * * *
                                          *                     *
                                          *                     *
                                          *                     *
                                          *  Login Server       *
HACKER ----Retransmits password Hash-2->  *                     *
                                          *                     *
                                          *                     * 
                                          *                     *
                                          * * * * * * * * * * * * 

Pass the hash - user logon

Pass the hash - attacker, sniffing, collects hash

Pass the hash - replays the captured hash.


# Long Example
- what is meant about time stamping. If we dig into, and again, I'm just using Wireshark doing a packet capture.

- This is how the attacker of essentially would capture that information by the way. If we're going in between a login server and that attackers on that network, they can use these protocol analyzers to see that information captured. And potentially use it later against whatever their target is, but you'll see inside of TCP/IP. 

- Notice that there's a sequencing number right here, and you'll see that number that sequencing number let's us know that this is a current active session. 

- And we need to know that transmission control protocol, what it does to ensure reliable delivery, is it breaks down all the packets in sequences, numbers Well, and then sends them to the other side to be rebuilt. 

- If you drill into the packet in wireshark you can see the Time stamps. So it tells you time since first frame and since previous frame. So, we're seeing the difference in the timing here, right? That's how it's supposed to work. 

- And that's one of the things that can help, not just transmission control protocol, but things like for instance, IPSEQ, which puts its own timestamps on the information, that if I capture that information later and the recipient of that information, let's say the server looks at it, it says, well, wait, a second West. I'm looking at the time stamp in this information. And that time Stamp was for, well not right now,... It was for earlier and what it's gonna do is, it's essentially just gonna discard the packets. 

- So, that packet if you will. And that's kind of the way these protocols will help you specifically like IPSEQ to prevent things like replay attacks.

-  And I notice that these are in fractions of a second. >> Yes. >> So, if you see even a few seconds difference between. It's Probably an indication that something weird is going on behind the scenes. 

- You can see when packets are unaccepted too. Right? So, notice that it's telling me wait a second. No. I received something out of order. I'm gonna request a retransmission of that packet because whatever happened, whether it's the sequence number or it was a little bit off in time, yeah, let's just discard that we're not gonna accept that. 

- But an attacker if they can manipulate this kind of communication, then that's where they can potentially get in. They can capture that information and replay it later.

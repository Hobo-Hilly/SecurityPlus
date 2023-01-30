What is a DoS attack?
''
it's an interruption of more than just one thing.
    - Service
    - Application
    - System
    - Facilities

# Summary 
 'Dos DDoS, these can be any kind of interruption, again of a service, system or application'

# Ex: Facilities, right? You might say, wait a second. How do we have a denial of service of facilities? We pulled the power to your facility, then you don't have access.

# So, these can be any kind of interruption, again of a service, system or application. And I put facilities in there because, one of the things that I didn't think about early on... 
# Take a big data center, they got these huge exhaust systems. One blanket thrown over the exhaust system, and all that heat is self contained and now it brings all those systems offline


FYI: "distributed denial of service attack, cuz I was just looking at an article, right here. It says, that DDoS, in general small businesses lose between $8,000 to $74,000, for every hour of downtime." 
''

DoS
''
The user is gonna make an authentication request, login request to an authentication server. I use that example. It`s a domain controller, right? And then our attacker sends a whole bunch of bogus login request against that server.
And that server is just so busy trying to answer all of these, that the authorized user tries to log in and it cannot provide the service, to the authorized user, the login service. 
So, that user doesn't have access to pretty much anything in the domain, if it's an Active Directory domain

''

DDoS
''
the distributed denial of service attack. It's when the attack target has so much bandwidth or resources that a single attack against it by a single system, even if it's a pretty beefy system, won't bring it offline. 
So they group hundreds of thousands of computers together out of this botnet and simultaneously attack a single target.
''
DDoS Types
FYI: You could have hybrids of these. You could have when they combine, both are reflected, amplified.

- Reflected

''
You would need a botnet also that sends multiple service requests to the time server with a spoofed IP address of the target, and all of those service requests get sent back to the target. 
That's why they call it reflected. Again, it's using a spoofed source IP address and that IP address appears as the target who actually asked for the request

''
- Amplified
''
amplified distributed denial of service attack. And this is one where it does the spoofing, as well, but this time when the service request is made, there's an increased request for the size of the payload saying, hey, don't just give me a single small few kilobytes, few megabytes back. 
I'm gonna say, I want you to give me hundreds of megabytes back. I want you to increase the size of your reply and the spoofed IP addresses the target.

''
- Coordinated
''
The coordinated attack is definitely just a distributed denial of service attack. Instead of a single attacker, we have multiple attackers coordinating their efforts to bring that target offline. For instance, our bogus login request, not just a single attacker doing a C2 type operation where they're controlling all of those individual computers. 
You could have more than one, actually each one controlling a botnet. And that's what I mean by this, this is more for abstract purposes, but it's more than one attacker helping to coordinate the distributed denial of service attack

''
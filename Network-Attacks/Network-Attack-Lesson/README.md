DNS Process
# What does it do?
DNS (Domain Name Service) DNS service in the background is doing what's known as name resolution.

# How does it work?
- It takes user friendly names that we call FQDN, fully qualified domain names. Which is a combination of a host name or computer name, and a domain name and it maps it to an IP address. And when that IP address is returned back to us, we can make the connection to the web server.


# Step 1
- The first part of the process is you look locally and you have what's known as a DNS cache. 
NOTE: (Caching techniques are really just to speed up the process of an answer coming back from whatever service is being used EX: When we talk about CPUs. We keep certain instructions in those (CPU's cache) caches because they're commonly used, it can speed up the CPUs computational process)

# Step 2
- But if that information isn't there, we need to ask a question of a server out there on the Internet that is going to give us that answer.
And that's a DNS server, now I will tell you a lot of times our DNS servers gonna be something like our (Internet Service Provider i.e. Xfinity, Century Link, TDS) ISP's DNS server.

- You could have an internal corporate based DNS server, and if you were asking for a resource within your network. Then it's going to be located in what's known as a DNS zone file. 

- EX: Now let's say that this DNS server is our internal DNS server, or your ISP's DNS server. Chances are they don't own Google, so they're not gonna find it in the zone file where all of those mappings.
NOTE: They call him a records and quad A records mapping names to IPV 4 addresses. If it's an A record IPV 6, two names, IPV 6 addresses quad A records)

- What we have to do now is we have to make a determination. Well the DNS server also has a cache. And it's gonna look to its cache and it's gonna say hey, do I have an answer already for you based on this question that you're asking me?

NOTE (Typically your ISP's DNS servers and other DNS servers that your corporation maybe forwards these questions to, probably has a large cached pool of answers they've already given or gone out and gotten returned right. That will speed up the process, but for our demonstration purposes, let's go a little bit more in depth. Let's say that DNS server checks the cache and it doesn't find it there.) 

- It's gonna go out to the roots and the root is the top part of the domain. When we talk about these names we resolve them right to left. It's backwards than the way we read here in the United States. It resolves from right to left, and there actually is in www.google.com, there is a dot behind there. It's an implied dot and a lot of times your browsers will fill it in, and we don't actually put it, but that dot represents the highest part of the DNS hierarchy, called the root.

- Now the root isn't going to have any answer for this DNS server directly related to, where is Google's dot web server, but what it is gonna have, is something that it is in control over and that is the top level domain servers are called TLD's. 

- In this case the query, has a .com at the next space from the right to the left, so it's gonna say go talk to the .com server, that's who you want.

-  Com server is gonna say you know what, I don't really know who www.google is, but I am familiar with Google themselves. I am in charge of the google.com domain name space, so here's the IP address of the Google server. 

- Now when it gets to the Google server, Google is gonna say yeah, Yeah, yeah, I know this www you speak of. It's gonna hand that information back and it's gonna go down and it's gonna cache it in the DNS cache on that DNS server. 

- Now the next time that happens now that we have that answer in the cache, it will deliver that answer back to the user who's asking that question. Now from here on out if that same question is asked, this DNS server is just gonns say all right, yeah here's your answer and I don't have to go talk to root, com and Google, I can answer that automatically for you.




Dan tee up a demo of DNS Name Resolution

DNS Poisoning
# What is it?

- imagine in for a moment here that the attacker can not necessarily doesn't have to intercept a response, but can actually send their own answers back to the DNS server that map to a malicious website. 

- The attacker stores their own malicious IP address in the DNS cache And that is what's known as DNS poisoning, because now we have misinformation. Bad/malicious information. And that poisoned cache the next time a person needs to resolve that name(google.com/youtube.com/etc), could ask that question of that DNS server, and the DNS server could respond back and say, here's how you get to www.google.com. 

- Well, and unfortunately because of the poison cache that's gonna redirect a person to a malicious website, or really for that matter to any IP, that's in that record that the hacker has used to attack the DNS server. So this essentially is what DNS poisoning is, in the long run it is a manipulation, and a poisoning of the cache itself, so you might hear it called DNS cache poisoning.


DNS Hijacking
# What is it?

 - Now another type of DNS attack is DNS hijacking. So now what we're doing we're not gonna be asking a question of a legitimate DNS server, now to us it's gonna appear legitimate. Now if we look, the same question needs to be asked. 
 
 - But now our attacker has somehow manipulated the settings in the processes, let's say, the TCP/IP properties of the network adapter and hence manipulated what the preferred DNS server is. 
 
 - Say the attacker, changes some of the Google servers public DNS servers (used at itpro.tv) 8.8.8.8, 8.8.4.4. And changes that manipulates it and now We've got an adjustment of the properties of the network adapter. 
 
 - Now when we ask that question, where is www.google.com properties of the network adapter inspected and it says, I'm gonna go ahead and ask the malicious DNS server that has been stood up by this attacker and now this attacker if they want they can redirect you anywhere they want.

 # Key Differences

 - DNS poisoning could be client side can also be server side. 
 
 - DNS hijacking is where the server itself is completely malicious and there's been a manipulation on the client side redirecting them to a bogus DNS server. 
''

Domain Hijacking
# What is it?
- Well, think of the name space. So for instance, here www.itpro.tv, itpro.tv is a domain name space. The portion of that domain name.

- Remember, FQDN, computer name, host name appropriately in a domain name, well that domain space, we have millions of companies across the world that own and register their domains with these public DNS registers
# How does it work?
EX:
- Our hacker does what's known as a DNS look up and find IT pro TV's domain name and all the information. 

- Now this attacker sends a phishing email to an sys admin and gains the admin credentials. 

- So now with the username, they pivot. They go to the register who IT pro TV has their domain registered with and say hey, I need you to do a domain transfer. I've got this registrar and I wanna move our domain to another register or even trickier than that says I just want to have redundancy.

- So once the hacker manipulates the actual registrar into transferring that namespace back to the attack. And since they have gained credentials from Spear Phishing the admin. The registrar will just go okay and we can do that.
- Victims would be none the wiser. And that's because ITpro.tv has digitally signed certificates for their domains. But this isn't changing the certificates. The certificates are still valid. We changed ownership of the entire domain, right? 

(That's like, say, my cars got a car alarm. Well, that's okay, but your car was stolen. Still got the same car alarm on it, but nobody, the person that's supposed to be driving is no longer driving. 

>> And plus if we're going along with the analogy, the person who stole your car stole your keys. 
>> That's right, they've the key for the Kingdom. 
>> They have the alarm fob, the car as far as it's concerned you are the correct driver. 
>> That's right so that in a nutshell are three of the most prevalent type DNS based attacks that you need to be aware of for this exam)


Demo WHOIS protections on ITPro.TV or Facebook.com

# Another client side attack vector
 our DNS server consoled pulled up our DNS server console that's pulled up right here. You can see that this is what's known as a zone file. Notice my computer here. This is actually the IP address to the computer we were just looking at. Now you can also see the IP address right here. 
 
- This is the IP address to the domain controller that's also running DNS as well. It's gotten integrated DNS zone. Now if somebody could come in here, create a new name and we call that name. Let's say Server 01. And we put a bogus IP address in, and I add the host. 
 
- Notice that it says the add the host record was added successfully. Now this if this was a malicious entry when I ask for SRV 01, my DNS server would say sure I got it right here. Here's that information back to you. That right there would be how the poison attack would work. 
 
- One last thing I want to show you. Anothher kind of DNS name resolution based thing that might happen to you. The host file and the host file is down in Windows System 32 drivers ETC. And this host file contains static mappings of ip addreses to servers you need to connect to on the Internet.If an attacker can manipulate the host file,  The machine wont even ask the DNS server 'cause the host file is still checked. Today, however, I will tell you for protections in web browsers. 

- A lot of times your web browsers they ignore this because of that very fact. So I also want you to know that there's some static mapping that could potentially happen on your computer that could also be some type of attack vector for these attackers and thread actors all right. 









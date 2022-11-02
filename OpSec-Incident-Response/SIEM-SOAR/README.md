
# What is the need for SIEM?

EX:
If you think about Syslog, we're aggregating Syslog information system log information to a centralized location, but then we still gotta make some sense out of it. So we can do that, we can aggregate it. But that's just a single platform. 


Immense amount of event-related data
Firewalls, IDS, IPS solutions
Log, aggregate, normalize, review

We need a strategic and methodic way to capture this information

Security Information and Event Management (SIEM)
- The components inside of a SIEM, it is a combination of security, information management as well as security event management.

Security Information Management

# What does it do?
EX:
We've got a lot of components within our networks, which equals a lot of data inputs across the network.
These can be things like firewalls, servers, anti malware software, a Syslog Server. Maybe you've got multiple Syslog servers and they're geographically dispersed. We want to collect ALL of that information  

- The SIM, allows us to log, store, aggregate, and collect that information. 
**NOTE: The complexities behind one of these systems goes a lot farther than this, but these are the basic concepts of what that security information management involves. 
Examples of objects found w/n a network
-Devices and Software
-Sensors
-Software Agent
-Physical or Virtual
-Cloud and on-premise
============================================
Security Event Management

-Real-time analysis
-Visualization
-Uses anomaly-based threat detection
-Threat intelligence feeds

# How does it work?
It can offer monitoring of events such as but not limited to,
-Risky logins
    John logs in on a local domain in Florida and then logs in again 20 minutes later somewhere in the south of Spain. That is not possible...
-We're gonna see anomalous activity
-Intelligence Fusion (advanced Threat hunting)
-Exchange of intelligence infomation
-User and Entity behavior analysis
- And this is essentially the anomaly based kind of detection that we're talking about.
Sentiment analysis
Opinion mining
Are comments good/bad/neutral?
Leverages Natural Language Processing

# Summary 
EX:
There's also things like sentiment analysis. It's also called opinion mining. If you haven't heard of this, you've actually seen this before. 
So let's say you send out a tweet. It hits the Twitter feed and a whole bunch of people like it. Well, people are making the opinion that they like what you're using, you're doing.

Now, imagine a way to be able to scrutinize things like email traffic and say, hey, can we detect a potential insider threat?
Can we detect something that's maybe good, bad, negative information within an email and maybe flag that as some kind of disgruntled employee? Before something negative happens, before we have some kind of data leak

So all of this information that we find, essentially allows us to say, hey, I can see this, I can see that it's happening, we need to do something about it. So that's essentially the security event management. These two basically put together, make a full blown comprehensive and very complex system that you can use to secure your networks. 

========================================================================================================
INTRO:
The ability to aggregate all this information, put it in one spot, and now we can centrally manage that. Look at the charts and the lovely dashboards that you get with these things, that makes it so much easier for us to identify threats, and events that are occurring, and then take action upon those things. Then you mentioned that SOAR was the next generation of this thing.

# To SIEM, or not to SIEM. SIEM Vs. SOAR

The SIEM is a very manual type process. Yes, we're monitoring everything. But then we monitor it, we find these activities and then we gotta kind of act upon it. But somebody's gotta be in front of that system or usually a team of people in front of that system to basically start to respond to incidents that we detect

Security Orchestration, Automation, and Response (SOAR)
- Well, basically what a SOAR system does is it integrates with the SIEM, and it provides an automated response
- We can use a combination of playbooks and run books that help us to automate that response process, And it streamlines our response process.
# How do they work? 
- These are typically used in conjunction with a SEIM. Bringing that SIEM to the next level, so you don't have to rely on just the manual process, especially when you have tens of thousands of events that could happen. You can add one of those running playbooks to it, you can automate the process and then you get that faster streamline response. 

Security orchestration, automation, and response (SOAR)

Learn it, use it, love it

Resources:
 https://github.com/Security-Onion-Solutions/securityonion/blob/master/VERIFY_ISO.md



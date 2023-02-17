

Today we're gonna be talking about the incident response process. let's start with defining the incident response process.

# What qualifies as an incident?
Generically, it's just a violation of some kinda security policy or procedure
- an event is raised to indicate a happening on the network or in Entity.
- an incident indicates the persistence of an event, and can be called, amended and closed by more than one type of event.

Security Event Vs. Security Incident
- Think of an event as, hey, I typed in my password, and it was wrong and it generated an error, and I tried again it was right, it was fine.

- An incident would be, somebody has typed in my password or tried to multiple times. They've tried different passwords, and they've brute forced their way into the system. That's a security incident. 

- Event: An event indicates a particular state of an object at the time the event was raised. An event describes a concern or anomaly at a specific moment in time (at the time the event was raised), along with the type of concern/anomaly, identity of the component, severity and further details. It does not tell you if the concern/anomaly is still present or not.

- Incident: An incident indicates an ongoing condition on your network with its associated events providing the state updates. Incidents contain the same information as an event but also indicate the current state of the concern. Incidents are opened, closed and reopened by events. When you view the details of an incident, you can see the sequence of events that caused it to be opened, closed and reopened.

# Why would we even use an incident response process?
''

''


Incident Response Process
STEPS:
- Preparation
- Indentification
- Containment
- Eradication
- Recovery
- Lessons learned

1. Indentification
* Analysis of events/ event logs 
* Components for Identification
    Monitoring
    Detecting SIEM (Security information and event management)
    Alerting IOCs (Indicators of Compromise)
    Logging    (That's one of the reasons we log events, your operating systems, your network devices. SIEM, we know, collects all of it and things like syslog, if you will. We're monitoring everything that happens, in order to, maybe to detect if something is actually happening.)

# Summary
That's the identification process and some of the components that you can see inside of them.

2. Containment (A type of initial response phase)
    Interaction with affected systems
    System shutdown (A graceful/cordinated shutdown)
    System isolation
    EX:
    Somebody connecting to your network without a firewall turned on could trigger that this is some kind of security incident. There are technologies that allow you to do (NAC) network access control, where the device connects to your network. It sends out an attestation report, your computer or whatever the server is that's providing that service looks at it, screens that against the policy. And says, no, you don't have your firewall on, we're gonna put you off on a remediation network. So it might be something like that where it's system isolation.

- This is the containment phase of the incident response process. 

NOTE: And remember, on a larger scale, you don't wanna one off each of your systems. You wanna have potentially, some kind of automated response mechanism to make sure that we can streamline whatever our approach is to incident handling.

4. Eradication
    Deep scan
    Quarantine
    Removal
- Wipe and Load
- Verification of eradication ( We have to determine that we're not infected on other systems before we even go into the next phase. So it's important that we ensure the eradication of whatever the security incident is.)

NOTE: I cannot stress this point enough; if you don't verify that things are eradicated, you turn your systems back on and they're still affected. Things could go sideways again quickly. Maybe there's some persistence there. Well, you're gonna end up having to stop and start over again.

If you're talking about something like a malware, right? Malware got infected on the machine, we removed the malware, great. How did the malware get there in the first place, right? That's gonna be a part of that recovery is going, hey, let's close that hole so that the malware can't get back on the system.


5. Recovery
    Verification of eradication (If required)
    Rebuild from backups
    reintroduce systems
    Restore normal operations

- Returning things back to normal, right? That is the basis for what that recovery process is. Is restoring, essentially, your normal day to day operation

- Now we gotta kinda get together and have a heart to heart, right? A hard conversation about, how the heck did this even happen? What did we learn from this? And how can we stop in the future?

6. Lessons Learned/ After Action Review(Military)/ Post Mortum
- What went right?
- What went well?
- What went wrong?
- What was affected?
- How was the attack accomplished?
- Improvements

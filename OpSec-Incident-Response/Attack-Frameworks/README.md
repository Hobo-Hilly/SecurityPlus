filename:comptia-secplussy0601-9-11-1-attack-frameworks
Showname: Security+ (SY0-601)
Topic: Operational Security and Incident Response
Episode: Incident Response Plans

Summarize the importance of policies, processes, and procedures for incident response.

Description: In this episode, the viewer will identify key component of attack frameworks used to identify adversaries, tactics and techniques used by threat actors against victims used by cybersecurity analysts such as MITRE ATT&CK and the Diamond Model of Intrusion Analysis. The viewer will also identify the cyber kill chain that represents the steps an attacker uses to exploit a victim.

Attack frameworks
Attack frameworks - MITRE ATT&CK
Attack frameworks - The Diamond Model of Intrusion Analysis
Attack frameworks - The Diamond Model of Intrusion Analysis
Meta-features
Confidence value
Cyber Kill Chain

===========  Below are my take on the notes for this episode     ===========

Attack framework

What it does is it describes incidences in common language. Something that we can all understand right? It doesn't matter what the audience is, and what is it there to understand?
- Adversaires
- Techniques
- Tactics
- Detection Mechanisms

Who are we trying to, you know, protect against, if you will? What are the techniques that they use? What are the tactics, if you will? And then finally, what are the detection methods that we use in order to discover these. So, really, the terms are really the same, but it's how in depth are we talking about techniques again, we're talking about going into depth, tactics a little bit more high level.

EX:
And so if I were to say SQL injection that would be a tactic where a technique would be. So they went through the web application found a vulnerable area here and was able to insert X, Y and Z and that resulted in a SQL injection attack which gave them access too, you get the idea, right? It's getting way more in depth, getting down to the details of what occurred, not just the idea of what was going on.

NOTE: May also be reffered to as (TTP) Tatics Techniques and Procedure


MITRE (dversarial tactics, techniques and common knowledge)
Go straight to mitre and hit that ATTC at the attack framework. what is mitre? It is adversarial tactics, techniques and common knowledge. And what are these comprised? Really, they're comprised of things like identification numbers, right, we need to know what those tactics and techniques are, and we need a very simplified, fast way to identify them. So they have numbers, if you will.

They also describe where the data source is coming from. You have to have one of these in the public knowledge. Right? Well, where does that knowledge come from? So they'll have data sources so you can trace it back as well. You know, you don't think that well, mitre is just out there making stuff up. They're just coming up with stuff out of the blue. Now they're not they're going to give you data sources, so you can track that back as well.

 It also shows you things like creation dates and modification dates. Maybe you have an older type of tactic or if you will, or an older technique, and it's been expounded upon, right? And we talked about things like zero days, and there could be slight variations when something just discovered, right? They're gonna maybe modify it a little bit so that maybe it goes under the radar. Well, we're gonna have, we're gonna need to have updates to that too. So mitre attack, you can go out to mitre, actually it's attack.mitre.org. But you can go out to mitres website and you can get a lot of great information and kind of see the overview of some of the components when it comes to mitre attack in general.


Uses things like 
- Identification Numbers
- Tatics
- Data Sources
- Creation/modification date


The Diamond Model of Intrusion Analysis
It is basically a scientific way. Right to document and reproduce overall analyses.

And it's comprised of a few things. One of the things is what's known as the core features. And the core features really break down to these categories.
- Adversary
- Victim
- Infrastructure
- Capabilities 

And it's comprised of a few things. One of the things is what's known as the core features. And the core features really break down to these categories. We have the adversary, right. But then the adversary we also have what the adversary attacks a victim, all right. But what do they do? Right? They have capabilities right, there they, you know, how capable are they to perform that attack? Right so we have cape, well, I said, I guess I should have said first but infrastructure is what they, how are they going to not just perform the tech. What are they gonna use to perform the tech, all right? Are they gonna go over the network? Are they going through a DNZ? What kind of system are they essentially gonna use. So you have infrastructure on one side as well as the capabilities. And at the end of the day It forms a diamond, right? And that's really the diamond model of intrusion analysis at a high level overview

                   Adversary  
                       -- 
                     -     -
                   -         -
                 -             -
Infrastructure -                - Capabilities
                -              -
                  -          -
                    -      -
                       -- 
                    Victim    

Summary of the Diamond
"for every intrusion event, all right there exists an adversary that's taking some kind of step against the victim using their capabilities. Performing an attack, over infrastructure. That produces some kind of result or outcome."


Meta-Features

Things like Meta-features, right? This is under if you will core features. And these are things like for instance timestamps right? Start and Stop timestamps, if you will, what phase the results. Direction, how do the relationships line up if you will. Between like adversary and victim capabilities and infrastructure, as well as resources too

Confidence Value

confidence value. And that really just comes down to, what is the level of quality of the report at the end of the day using this model? And what confidence to we have, what level of confidence if you will, do we have in the accuracy of the report using this model?


NOTE: I really like and I would encourage you all to look at more than anything like Dan said that golden standard is the mitre attack, because it really gives you a good information and just a good platform to kind of stand on when you need to understand a little bit more about the attack framework. 

Just got to understand that the diamond model, the truth and analysis has meant to help us threat model. Are organizations figure out who our adversaries are, what their capabilities are, what kind of infrastructure they might have at their disposal. And of course, >> Us, [LAUGH] what do we offer them up as far as insecurities goes that they might exploit?


Cyber Kill Chain (Lockheed Martin)
To help threat model is Lockheed Martin right they came out with the good old fashioned cyber Kill Chain

And when we talk about the cyber Kill Chain, we talked about a few different phases and really kind of putting on that mindset of the attacker. How does the attacker work their way? Where do they start and how does it end, right?

1. Recon
In the very first phase of the cyber kill chain is gonna be reconnaissance.We're gonna do our research, right? We are gonna do things like target selection. We are gonna do things like vulnerability identification. 

2. weaponisation
And this is where you actually create whatever the exploit is once those vulnerabilities have been identified.Creating the tools if you will exploit those vulnerabilities.

3. Delivery
Then we have what's known as delivery right now. This is where the weapon itself is gonna be delivered to whoever the target is right now. That could be things like phishing emails, right? It could be email attachments right? The little thumb drive, if you will, that's been scattered out across the parking lot.

4. exploitation
once the delivery has happened, that's where the exploitation comes in. Because now the exploitation is where. The malware or the tool that uses triggered and it performs the actual exploited self.

5. Installation
And then we have the installation. Now when we talk about the installation, installation is the remote access tool or the back door if you will, to get into the system to get to the next level

6. Command and Control(C2) 
Just think about this this is where the intruder or the attacker has now established persistence. 

7. Actions on Objectives
All right, leading finally to the actions on the objective and just think about accidents on objective is, what was the goal? All right from beginning to end, what was the attackers goal at the your accident actions on objective. 


RESOURCE:

WALMART ATTACK

Now the other thing I want to kind of bring up as well that I'll leave in the document or in our show notes you can find this as well, really great document that I found. It's by the United States Senate Committee on Commerce, Science and Transportation. This was actually a report that was given to the stakeholders and I believe it's Rockefeller here. That you'll see that walks you through the kill chain analysis of the target data breach that happened back in 2013. And it's really interesting. If you want to kind of go through how a company. Would use that cyber Kill Chain to kind of, you know, just map out what was going on. It tells you the things that they are aware of. There's some things that are still in the gray area that they assume and they They make mention of it. Well, while the tactic that was actually used here isn't well known, it's or isn't known, it's assumed that it was this. 
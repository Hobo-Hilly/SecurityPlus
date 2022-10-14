

NIDS (Network Intrusion Detection System)
- A network intrusion detection system is a passive device scanning, Monitoring, and Alerting



# How does it work?
With a net or a network intrusion detection system, this is really a passive device and it does a few things. It does monitoring. But it doesn't only do monitoring, right. It's also going to detect and alert if you will us to any kind of intrusion that might go on to our systems and when we say Essentially to alert us It can send us a text message SMS, email.

You're gonna see that this functionality built into firewalls today. In todays environments they're doing a lot of things all the way up and down the OSI model. While a lot of times that's gonna be a functionality of a device in your network that you're probably already using, namely the firewall.


EX:
                                                        * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
                                                        *   Internal Network  / Private Network   / Protected Network
                                                        *    
- - - - - - - - - - - -                                 *                                |srvr-1|     |com-2|   |srvr-5|
-                     -     # # # # # #                 *     #SWITCH-2#       |com-4|    |VoIP-4|   |srvr-3| |VoIP-1|  |srvr-9| 
- Public Internet     -     # Router  #                 *                                   |com-9|     |com-10|       |VoIP-9|
-  Clear Web          -     # # # # # #                 *
- YouTube Google      -                                 *
- - - - - - - - - - - -                                 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 


FYI: he Router is running the NIDS
=========================================================================================================================================
Passive device
- So, when we talk about an intrusion detection system, it's a passive device. It sits out on our network and its really scanning traffic coming in to our network. But it's not going through that device. 
- The next one though, intrusion prevention system This is an inline device.



- This is an inline device probably more than often than not today, built into the functionality of your firewall where it can do the same thing. It's scanning those packets like Dan said, seeing what's coming on but then when it notifies or notices out of that monitoring phase that there's some kind of intrusion attempt Detects it and alerts us, but then it stops it

NIPS
# How does it work?
- Intrusion prevention system is an inline device.

Inline device
EX:
                                                        * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
                                                        *   Internal Network  / Private Network   / Protected Network
                                                        *    
- - - - - - - - - - - -                                 *                                |srvr-1|     |com-2|   |srvr-5|
-                     -     # # # # # # # # #           *     #SWITCH-2#       |com-4|    |VoIP-4|   |srvr-3| |VoIP-1|  |srvr-9| 
- Public Internet     -     # Inline Device #           *
-                     -     #               #           *                                   |com-9|     |com-10|       |VoIP-9|
-  Clear Web          -     # # # # # # # # #           *
- YouTube Google      -                                 *
- - - - - - - - - - - -                                 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 


FYI:The 'Inline Device' is running the NIPS
=========================================================================================================================================
- This is an inline device. So same setup we have here, but the difference is it's sitting on the edge of our network. And that's why I said a lot of times this is built into the functionality of a firewall.

# Whats the Difference betweeen NIDS vs NIPS?
- the biggest thing here is that it can actually implement some kind of countermeasure, right? To stop the attack in its process. So basically, that's really the difference between the two. 


Detection Methods

Signature-based: Database of known hashes/signatures

Heuristic-based: Set of specific patterns
    - With the heuristics, behavior and anomaly You could get a set of those false positives and again, that's falsely identifying something that is not is really benign or you could get those false negatives where it is an attack, right? And it's essentially identifying it as authorized traffic. So the anomaly base definitely goes through a little bit of that learning period.

Behavior-based: Set of actions that match a threat's behavior

Anomaly-based; Requires a baseline establishment,detects behavior against a baseline

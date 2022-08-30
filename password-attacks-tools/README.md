# Talking all about password attack TOOLS today.

Online Attacks
# What are they?
''
Online attacks are typically an attack that is gonna be against some kind of remote login interface.

if an attacker can perform an online attack against that remote RDP session, or the RDP connection in general, then they can gain access

SSH is also a remote login that can be attacked

BlueKeep and DejaBlue are two attacked the RDP protocol.

CONS:
- Online login attempts are usually limited to a certain amount of tries until a lock out threshold.
    Which could take a certain amount of time to reset or could require a sys admin to hope into the system and reset the users account
- Limited Bandwidth. If you are hammering the machine with a online login form you are going to make a ton of noise and you could accidentally Dos login server if the server being attacked has a small/limited amount of bandwidth to work with.
- Wildly Detectable  

''

Online attacks cover all REMOTE LOGINS 


Offline Attacks
# What are they?
''
This is where you attack the password directly. To be clear, this is NOT the same thing as aquiring the passwords to crack. This assumes you have a list of hashes stored on a local disk/drive and you intend to run a tool(or use manual enumeration/ use a self composed tool) against the hashes(passwords) to see if you can get them to crack.

Obtaining the Passwords is a horse of a different color... For the scope of this episode.

CONS:
- You are limited by the computational power of your machine

PRO:
- They are impossible to detect. As the passwords are on the attackers local machine/device so since the victim is (should not be) not monitoring the attackers computer offline attacks are impossible to dectect.


- They would have to detect you getting the passwords off the machine/device or exfiltrating data after you logged in with the cracked password(s). 

''

Tools

hashcat
''
GPU intensive password Cracker
Offline

''

Hydra
''
Online Password Attack System 

''

John the Ripper
''
CPU intensive
Offlines Password Attack System

''

PACK
''
what it does is it just kind of analyzes the way people create passwords. This is meant to aid in password cracking it DOES NOT crack passwords.

''

CeWL
''
Word list generator. This will crawl a website and help create a dictionary wordlist to use against the websites login form(s).

''


Statsprocessor
''
This is a wordlist generator out of HashCat.

''


Burp Suite
''
Dictionary style Brute forcing. 
There is a tremendous amount you can do with the Burpsuite Proxy but we only want it for it's Dictionary/Brute Force Style of online password attacks.
Intruder is also tool that will allow you to manipulate the an API request to your liking and send it through to the server.
This is an online password cracking proxy.
You can create custome wordlists or usr common ones you download.
''




  Dan Explanation
  ''
 basically does a dictionary brute force type of password cracking. Against web applications, so it's a web application proxy. Any requests that are being sent to and from a web application can be intercepted and looked at and modified through burp suite. The word suite let's you know that it has more than one type of functionality and there's something called the intruder. And the intruder will let you set fields and say hey, this word right here. Let me highlight that. Make that a field and there I want you to iterate through this list. So, maybe if you see something like password equals. And you typed in the word password and sent that as a request. You would then be able to stop that, intercept it, say highlight the where you put that word password point it to your dictionary file. And say rifle through that and see if you can get any kind of weird output from it. May be that'll let me know that I was successfully able to get past the authentication so. >> A lot of functionality.
  
  ''
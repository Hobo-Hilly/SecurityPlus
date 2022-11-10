
Windows Active Directory
DEFAULT PORT 88
Kerberos
- Developed by MIT
- Open-source
- Time-Sensitive authentication (If the clock on your computer is not the same as the clock on the server you will not be able to log in)
# DAN EX1:
I can tell you that time sensitivity aspect of it can wreak some havoc with you every now and then back when I worked in as a support technician, every now and again someone will call up and say I can't log in. 
And we'd be like, okay, the password is right. We never reset it. And then we would ask the caller  "what does the clock say? What does the clock say on your end? " 
And 9/10 times the clock would be skewed by X amount of time. And as long as it was out of that range, it would not allow them to login or authenticate or do anything because of that time sensitivity.


# WES EX2:
I've seen that same thing happened to Dan where you go to log into a Windows machine in a Windows domain, again, it's the default for Active Directory, which is your windows domain controller, where you would go to login, you would enter your username and password and you would get this little text box come across a screen that says your computer's lost trust with a domain. 

# What does "your computer's lost trust with the domain." mean? 
It means exactly what Dan said, the computer's time synchronisation is off with a component inside of active directory. And what happens is because this is time sensitive, right, all right, which means timestamps. 

What ends up happening is that difference if you will, basically says, Hey, I don't know who you are but I see what the time is and I see what you're presenting me. There's a problem here and actually kicks the whole entire computer off the domain. 

And then you have to rejoin the domain, it syncs back up with the domain controller. So it is definitely something to be aware of. 

# Where would we see this implemented?
- Default for MS Active Directory
- Windows 2000 is when Active Directory first came out.

Kerberos Components
- Authentication Server (AS)

- Key Distrobution Center (KDC)

- Ticket-Granting ticket (TGT)
    This is what the computer is going to store on my our behalf

- Ticket-granting service (TGS)

FYI: In non-Windows implementations, you might see that these roles might be performed by more than one, let's say device, like a server on your network; in a Windows domain it's all one individual machine. || It could be multiple machines for multiple domain controllers, but all of that functionality is stored inside of that domain controller.

Kerberos Process
1. Authentication Request sent from client computer/device to Kerberos Server
2. If authentication verified. Server will send an encrypted TGT (The TGT is stored on the computer and it is also TIME STAMPED)
3.  The Client will send a TGT to the TGS with name of Resource being requested 
Now, once the TGT is stored, any time we go to access a resource, all right, the ticket granting ticket is gonna be sent back to the ticket granting service, all right. Again, the component is built into the domain controller
4. Session key is sent back from Kerberos server to Client (ticket)
The Ticket is stored and then sent over to the resource server

# How does it work?
Set Up:
Today, in the context that we're talking about right here, in this specific example. The server in THIS EXAMPLE will be THE Active Directory Domain Controller that's performing all of those functions.
    It is the Authentication Server. 
You log in to your credentials to Active Directory as a database that stores your usernames and passwords. 
    It says yes, I know who you are. It gives you the TGT. So it's ALSO a KDC (Key Distribution Center).

TIME
NOTE: The default time skew allowed by a Windows Kerberos Authentication Server is 300 seconds/ 5 minutes

# Can you show me how it looks?
KEY
$USER.Machine = Client/Host machine
$KERBEROS.Srv = Main Kerberos Server AND Active Directory
$RESOURCE.Srv = Resource Server (Maybe an SMB Share on the Network)

EX:

CLIENT/Host Machine                                      KERBEROS Server
                        1.Authentication Request        
$USER.Machine > - - - - - - - - - - - - - - - - - - - - - - > $KERBEROS.Srv 

                        2.Authentication Validated & Verified
                        3. Encrypted TGT granted
                        4. TGT is stored on $USER
$USER.Machine < - - - - - - - - - - - - - - - - - - - - - - < $KERBEROS.Srv

Now when we want to access a resource we move to step 5.

                        5.TGT sent to TGS with name of resource attached
                        TGT-Ticket Granting Ticket \ TGS-Ticket Granting Service

Now Kerberos.Srv is going to inspect the TIME STAMP on the TGT. This while process is based on TIME!
NOTE: If for whatever purpose, you've stored that TGT, and then your computer time skews, that TGT is gonna be discarded. And again, you're gonna have that problem. 
 
$USER.Machine > - - - - - - - - - - - - - - - - - - - - - - > $KERBEROS.Srv


The TGT doesn't just grant you access to the resource. 
                        6. $Kerberos.Srv Issues a Session Ticket 
                        7. The Session Ticket is then stored on the local machine
$USER.Machine < - - - - - - - - - - - - - - - - - - - - - - < $KERBEROS.Srv


                        8. Session Ticket is then sent to the resource server
$USER.Machine > - - - - - - - - - - - - - - - - - - - - - - > $RESOURCE.Srv
                        *. There's already that trust there between the resource servere and the Kerberos server. So when the session ticket is received, you just gain access to the resource no questions asked. 
                This is why kerberoasting is so popular. If you can craft your self a "Golden Ticket" you have what some would refer to as "keys to the kingdom."                         







NOTE: Replay attacks are a lot tougher when you only have a five minute window to work with.

EXAMPLE
Set Up:
But let's say Dan is actually the attacker, he gets out there and let's say he grabs my TGT off of the network, okay. Later on, he decides, haha, Wes isn't in the office anymore but I got his ticket and he decides to pass it back to the Kerberos server, in this case, the domain controller for our conversation purposes here. 

And the KERBEROS SERVER looks at the ticket, the authentication server in this case and says, "oh man, I see that's a TGT, AND it was from me, but that was issued four hours ago. & Kerberos Throws it out." So replay attack are A LOT harder.

# What happens if I fail authentication?

If you fail authentication the system will fail closed. i.e. you would need to have a sysadmin or someone with high privileges take a look at this and physically fix the issue BEFORE you are ever allowed into the network.



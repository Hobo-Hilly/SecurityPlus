
Windows Active Directory
DEFAULT PORT 88
Kerberos
- Developed by MIT
- Open-source
- Time-Sensitive authentication (If the clock on your computer is not the same as the clock on the server you will not be able to log in)
- Default for MS Active Directory

FYI: In non-Windows implementations, you might see that these roles might be performed by more than one, let's say device, like a server on your network, in a Windows domain it's all one individual machine.

Kerberos Components
- Authentication Server
- Key Distrobution Center
- Ticket-Granting ticket (TGT)
- Ticket-granting service


Kerberos Process
1. Authentication Request sent from client computer/device to Kerberos Server
2. If authentication verified Server will send an encrypted TGT (The TGT is stored on the computer and it is also TIME STAMPED)
3.  The Client will send a TGT to the TGS with name of Resource being requested 
Now, once the TGT is stored, any time we go to access a resource, all right, the ticket granting ticket is gonna be sent back to the ticket granting service, all right. Again, the component is built into the domain controller
4. Session key is sent back from Kerberos server to Client (ticket)
The Ticket is stored and then sent over to the resource server
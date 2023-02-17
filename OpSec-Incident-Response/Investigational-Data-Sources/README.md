
SIEM dashboards (Security Incedent Event Management Systems)
EXPLANATION:

So SIEMs are really where, you know, a good place to start when it comes to where are some of them data Sources? >> Yeah. If you are implementing a SIEM solution in your environment. 
Wes is absolutely right. It's going to be pulling all that information from all those different endpoints and saying, "Hey, I think this is something we've gotten alerts that are set up and generated to do x, y or z IDS and IPS alerts can go in there as well. But as you can see that can still be a bit of a daunting task, because there are a lot of log files that could be involved."

You see, what this highlighting here for us in the studio on our network 3.1 million events. This is still a lot of data to process which is where these next frameworks come into play. 

Netflow - Cisco Propriatary

IPfix - IETF protocol (RFC 7011/5101 )
- It serves for a means of transmitting your traffic flow information over the network.

Protocol analyzers
- If we want to get an idea of how the information is passing through the various systems on our networks. Things like are we making API calls with applications back to databases? What is going on within our network? And the reason I say this is because You can also use things like bandwidth monitors as well.


tcpdump
Wireshark
Log files (Windows)

So from a 2019 Domain controller/Windows 10 machine
1. Right click on the start menu
2. Event Viewer
3. Select Windows Logs
    - Application (click on the application logs. It generates the information in the number of events,)

There is a Filter on the right side of the Event Viewer
4. Select 'Filter Current Log'
5. Event Level 
     Select Critical/ Warning/ Error then ok

STATUS: I wanna isolate down maybe at the certain time something happened. And then once I know that, I can filter it for a time and I can see the informational event that generated the error or generated the warning or generated the critical type event. 
    - Security
    - Setup
    - System
    - Forwarded Events

# If we want to audit our security logs
1. Select security logs from the windows logs drop down menu. Dble click
STATUS:
We can audit successful log ons here.
For instance, you can see the Credential Manager where the passwords are. What is managing those way those passwords that we log on,

- We have those system logs and security logs in Windows for authentication. 

# What if we want to look at DNS/ Active Directory Web server/ Directory Services
1. Expand Applications and Services Log
2. select your desired resource to audit

Security (Authentication)
Dump files (Local machine Preview)

Microsoft WinDbg Preview is a tool from the store you can get to help you scrutinize dump files.
# SPECIAL NOTE!!!
The program will not allow you to open the Original file. Make a copy of the data and store it in downloads or Desktop. You need to do this so that you can get around the permissions issue you are going to have if you dont copy the file into an insecure place.

Log files (Linux)

Network logs
 journalctl -u NetworkManager
 journalctl -u NetworkManager | grep dns
- System Logs
journalctl | grep systemd
journalctl | grep systemd | tail -n 50
- Authentication
    less auth.log.1
    grep session auth.log.1
Centralized Logging is the reality
syslog/rsyslog/syslog-ng
nxlog
Metadata Email, files, mobile
Open gmail click email in question, look for the ellipses at the right of email > Show original

I was/am trying different note taking styles. So my bad if you get sea sick here.

Network reconnaissance and discovery

Network Administration
    TOOL                                                PURPOSE
1. Ping                                     Test End-to-End Communication

2. tracert/traceroute                       Route Disovery(This will allow you to see all the hops and all the connectivity devices that a packet passes through on its path to its destination.)

3. pathping                                    End-to-End communication, route Discovery
                                                (It gives you a lot more information like round trip time in between each connectivity device. What is the latency, any delays and packets dropped.)

4. route                                        Discover and manipulate host routing table (In Windows, for instance, if I wanna view the routing table, I can do a route space, print and it'll show me the IPv4 and the IPv6 routing table)

5. ipconfig/ifconfig/ip                         IP address discovery, network interface configuration
                                                            (If you need to discover what the IP address is, you can use ipconfig. You can also use things like ifconfig if you're inside of a Linux distribution. It's interface configuration for Linux IP configuration.)

6. arp                                              Display and modify Address Resolution Protocol cache
                                                
                                                (if you need to display or modify the ARP resolution protocol cache or ARP cache within your systems, arp is the command that you can use it. For instance, if you need to view the whole entire ARP table inside of your machines, you can do an arp -a, and that says show me everything.)

7. nslookup/dig                             Display and query DNS information
                                            (name server lookup or the domain Internet groper, as it's called, inside of your Linux distribution)

8. netstat(network statistics)           Display active TCP connection,ports and IP adresses 

$ netstat -a      # show all TCP connections




Network discovery, vulnerabilites, enumeration

nmap (Network Mapper)
- Port scanning, hosts/services/OS enumeration
- port scanning vulnerabilities
- hosts, services, operating systems

hping
- Packet analyzer
- Packer assembler

scanless
- Port scanner anonymizer
The Harvester
- Catalogs e-mail addresses and subdomains

sn1per
- Automated scanner, open ports, subdomain hijacking, DNS info

DNSEnum
- Enumerate DNS information

Nessus
- Vulnerability scanner

Cuckoo
- Sandbox for malware analysis

netcat
 - Remote shell
 - Banner grabbing
 - Transfer files
 - port scanning

curl
 - Web page grabing
 - use curl to fetch a file of upload a file

the harvester (OSINT)
 - Python Script written by Christian Martorella
 - Used to catalog e-mail addresses and subdomains of a target
 - Must keep it up to date

sn1per
 - Automated scanner for collecting data
 - Pentesting and exploration
 - basic recon, open ports, sub-domain hijacking
 - DNS and subdomain info

Dnsenum
 - DNS record enumeration
Nessus
 - Vulnerability scanner
Cuckoo
- Sandbox for malware analysis


# Summary

ipconfig:

- ifconfig tells you information about the network interfaces, you can see things like your MAC addresses, the MTU, as well as, IP address, a lot of good information. You can see the link local here, IPv6 address. 


EX: This is an example the instructor gave in class on how this fits into the grand scheme of things. At least if your pentesting. Or doing network admin stuff; 

- Moving into ideas like DNS, I wanna look at what machines are alive, what do I even have going on? I can use ping and sweep through the network, find live hosts. Then I'm gonna jump into something like nmap here to get a more of the, okay, now I know what hosts are alive. 

- I could have used nmap to do that, as well, that's what Wes has said. Now, I wanna learn more about these machines. Okay, I've got a group of Windows machines, I've got a group of Linux machines, a couple of Mac boxes, it looks like maybe I have some printers. 

- And I'm gonna start to understand the topology of the network itself. Okay, what services are running on these Windows machines? Cool, I can use nmap to do that. 

- As I start to figure out that information and basically start to silo all these machines into hidey holes to say, okay, I might go after this. This is definitely some low hanging fruit there. I know there is a vulnerability with this version of that FTP server that they're using. 

- Cool, I'm gonna start there, that's gonna be my first stop. That's what nmap is helping us do. If we're trying to secure that network, I go, I know there's a vulnerability with that FTP server. I need to do something about that. And I discovered that with something as simple as an nmap scan

# This is an example of the instructor walking through a simple nmap scan. 

PORT          STATE      SERVICE                 VERSION
53/tcp        open       domain                 Simple DNS Plus
80/tcp        open       http                   Microsoft IIS  httpd 10.0
  http-methods:
  potentially risky methods: TRACE
  _http-server-header ...
  _http-title: IIs Windows Server
88/tcp        open      kerberos-sec            Microsoft Windows Kerberos
135/tcp       open      msrpc                   Microsoft Windows RPC              
139/tcp       open      netbios-ssn             Microsoft Windows netbios-ssn
389/tcp       open      ldap                    Microsoft Windows Active Directory LDAP
445/tcp       open      microsoft-ds?
464/tcp       open      kpasswd5?
593/tcp       open      ncacn_http             Microsoft Windows RPC over HTTP 1.0
636/tcp       open      ssl/ldap               Microsoft Windows Active Directory LDAP






STATUS: You can see that Port 53 is open. Now, I don't need the service to tell me that it's a domain server, right? I can see Port 80. So, it's running IIS, in this case, it's running a web server. We can see Port 88, that's kerberos. So, now at this point, what I've determined is that this is an active directory machine. 

And the reason I've done that is because Port 88 kerberos, that is the authentication protocol by default for an active directory domain. And the fact that it's running DNS, tells me that it is a domain controller cuz it's got an integrated or active directory DNS zone. So that it can handle name resolution, basically, like looking locally.

We can see the LDAP. That should be a telltale sign that it's running that LDAP database. Being a domain server.



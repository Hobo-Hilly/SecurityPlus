I was/am trying different note taking styles. So I my bad if you get sea sick here.

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


NOTE: tcpdump is cute but I pretty much only use Wireshark. Tshak if I am feeling fancy lol



# How to capture traffic.

When we talk about packet capture, we talk about literally taking a management station, whatever that might be. Could be a full blown workstation, could be a laptop, like Dan and I have here. And then what we do is we connect it to our network, our organization's network. 

And we basically start to capture the traffic that is moving from point A to point B. And then we use that traffic that we've captured, and we kinda scrutinize it a little bit. And we scrutinize it to find out do we have that sensitive information that Dan mentioned really traversing the network?


# How does it work?

1. Determine the machine that you will work from
I am using my laptop
2. Identify the interface used to capture files
3. What NIC are you going to use?
    eth0
    eth1
    wlan0


# how to figure out your network interface cards available to use
1. ifconfig        

2. Start the packet capture
3. sudo tcpdump -i eth1
4. Make FTP connection (simulate plain-text protocol)
5. ftp 10.10.128.4
5. msfadmin/P@
6. Generate FTP-Data
6. ls
6. cd ../../
6. ls
6. Saving the capture to a file
7. sudo tcpdump -i eth1 > test-cap.txt # Writing info to a file 
8. Generate FTP-Data
9. ls
9. cd ../../
9. ls
10. get tradesecrets

NOTE:grep is a powerful command helping us manipulate data. Does not work in windows

11. Stop capture and view file output
12. cat -n test-cap.txt
13. grep ftp-data test-cap.txt
14. grep ftp-data test-cap.txt |head -n 5     # First 5 entrys in the file
15. grep ftp-data test-cap.txt |tail -n 5     # Last 5 files in the file

16. Create a script to review capture file
17. vi capsearch.sh

18. grep ftp-data test-cap.txt |tail -n 5
Make script executable

19. sudo chmod +x capsearch.sh
Make capture file exportable

20. sudo tcpdump -i eth1 -w test-cap.pcap           # Writing the packet capture to a test.pcap file
Generate FTP Data

21. ls

21. cd ../../

21. ls
get tradesecrets

Stop capture and open PCAP file in Wireshark

22. CRTL+C
23. sudo wireshark

24. Replaying packets to the network

# how does this work?
lock this down and make this a secure FTP server, not the clear plain text one. >> Yeah, because this stuff crossing the wire, us being able to see that, well, think about if we were an attacker and they were able to see this information. Opens up to what we call replay type of attacks. This could be just reusing this password and username. Maybe it's a session token, you grab that out of the air and now you're using that. Pass the has kind of attacks as well.

25. $ sudo tcpreplay -i eth1 test-cap.pcap           # Test file from earlier example










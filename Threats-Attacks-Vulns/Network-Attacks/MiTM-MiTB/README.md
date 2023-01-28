MiTM ( Man in the Middle)
''
Is when an individual(bad actor), gets in the middle and basically can redirect this communication anyway essentially they want it. They're sniffing the traffic then they're eavesdropping. 
However, if they're capturing that traffic, remember they can store it for use at a later time, essentially replay that information back to the server, gaining access to some kind of resource.

''

MiTB ( Man in the Browser)
''
- yeah, the user can log in. But if the attacker out there can get some kind of malicious payload after the user's logged in, and then maybe send some kind of crafted HTML request against that web application. Then they could potentially exploit the trust that the authenticated user has with the web application sitting in between that browser and gaining information.

- Again, maybe downloading a session cookie. Remember, session cookies can, if they're coded not right, they can contain more information potentially than they should, and that could lead to vulnerabilities in the web browser as well. And that can lead to some kind of avenue of attack. If they can exploit that trust, they could potentially make these malicious HTTP request perform functions on behalf of the user or the victim in this? And the victim might be unaware that this is even happening.

''

Demo


Use Kali's nmap to identify open ports

Launch Wireshark to capture FTP login info

Connect to 192.168.0.131 (msf) with FTP

Authenticate and run the dir command and cd ../../../

Stop Wirehark and view FTP stream, identify clear text

Start Wireshark

Connect with SSH

Stop Wireshark and view encrypted information


# Summary 
''
so when it comes to man in the middle attacks,  protect yourself by using secure protocols to help bring risk down to an acceptable level
''
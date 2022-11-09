# Today is ALL Wi-Fi 

Cryptographic protocols

1. WEP (Wired Equivilent Privacy) B-day 1999
- Super Weak Sauce
- Uses static Pre Shared Key (PSK)
- Weak Keys at 64-bit 128-bit
- RC4 Stream Cipher
- CRC Checksum (24 bit)
    32 bit checksum deduct that from your key, and that's what you're left with when it comes to the strength of the actual keys, so the keys are relatively weak.

    24 bit checksum so the keys are relatively weak.

    And the problem with the checksum is all it would do is tell you that a packet or frame that came across the wireless communication, it has maintained its integrity. But here's the problem with that. 
    
    It's susceptible to replay attacks because you could modify the CRC to basically say whatever you want and then the endpoint doesn't really know and is none the wiser. This has been modified, so again, just keep that in mind, Wired Equivalent Privacy is not something you should be using on your networks

2. WPA ( WiFi Protected Access)
- This is very weak and should NOT be used
- Uses a Termporal Key Ingrity Protocol
    (Per-packet encryption)
- RC4 Stream Cipher
- MIC (Message Integrity Check)
- 48 bit checksum



3. WPA2 (WiFi Protected Access 2) AKA 802.11i this is the IEEE Standard
        https://standards.ieee.org/ieee/802.11i/3127/
- A lot stronger. Because it uses something known as CCMP and it does away with TKIP, the Temporal Key Integrity protocol.
- Uses CCMP
    Counter Mode Cipher Block Chaining Message Authentication Code Protocol
- Uses AES (Advanced Encryption Standard)
- 128-bit /AES-256 it DoD "Top Secret" standards
- This is the LEAST amount of security you should be using
- Disguards TKIP (Temporal Key Integrity Protocol)
# What is TKIP?
TKIP (Temporal Key Integrity Protocol) is an encryption protocol included as part of the IEEE 802.11i standard for wireless LANs (WLANs)
# Summary 
Now this uses a 128-bit encryption key, and I want you to be aware of that as well. So WPA2, I will tell you, today really should be the least of your security, all right? And it's long been the standard that we use to secure our wireless networks when it comes to the cryptographic protocol choices that you make


4. WPA3( WiFi Protected Access Version 3)

- The strongest on the market
- AES(Advanced Encryption Standard) 128-bit CCMP is the weakest form in this standard
- What it does in Personal mode is it uses AES 128 bit encryption with CCMP
- In the Enterprise Mode, it uses what's the equivalent of 192 bit encryption key and behind the scenes, I   believe it's an AES-256 that it's using with a Galois Counter Mode. 

(In cryptography, Galois/Counter Mode is a mode of operation for symmetric-key cryptographic block ciphers which is widely adopted for its performance.) 

- Uses SAE (Simultaneous Authentication of Equals)

Authentication Protocols

EAP/PEAP (Extensible Authentication Protocol)
- It's a framework that we talked about for moving or transporting authentication mechanisms.

- PEAP (Protected Extensible Authentication Protocol) 

PEAP relies on certificates, and you have to have a certificate on the client, you have to have a certificate on the connecting device that you're connecting to. And what it does is it's Protected EAP, is what it stands for. And it establishes an encrypted tunnel before the communication even happens, so that's what PEAP is.


- And then we have a series of other ones EAP fast we've talked about, and the EAP TLS, as well as EAP TTLS. And again, we definitely touched pretty good on these inside of our cryptographic protocols when we talked about that in the cryptography section. But know those protocols specifically, they do sit right here and I want you to be aware of that and I want you to associate those with wireless communication.

EAP-FAST

EAP-TLS

EAP-TTLS


Authentication Methods

Pre-shared Key (PSK)
- One of the easiest methods of authentication that we have is what's known as a pre shared key
- essentially like a password, that's essentially what it is. They call it a passphrase, but all it means is that it is a pre shared value that you have to have on both ends in order to join the network.
- "it is a pre shared value that you have to have on both ends in order to join the network"

Open

Enterprise level Mode 802.1X
- some of these components before we talked about 802.1x. Enterprise level Mode is where you bring in, again, a lot more infrastructure and your coupling, kind of a layered defense system with an 802.1x compliant access point or a wireless LAN controller and a RADIUS Server. And that's where the Enterprise Mode comes in because again, it's gonna be a higher level of security but it's also gonna require a lot more infrastructure, hence the name Enterprise Mode.

EX:


Wireless Client - - - - - > (802.1X compliant AP/WLC || WLAN Controller)- - - - - - - >(RADIUS Server)

RADIUS (Remote Access Dial-in User Service)

FYI: If you put it in WPA2 Enterprise, then you also have to point to point your clients to the RADIUS Server where they're gonna do radius based authentication.


# How does it work?

understand that what's happening is when the wireless client joins the network, the access point acts like the authenticator and it kind of closes the port down. It says, hold on a second, lemme go talk to somebody in the back room here for you, make sure you're supposed to be here. That back room if you will, be in where this doesn't have to really be the back room, but that's the RADIUS Server, RADIUS Server sends some challenges through back to the client. If you're accepted, authenticate, the port opens up and now you can join the wireless network

WPS ( Wifi Protected Setup)                                 

- You see this is an eight digit PIN. And basically, what you'll do is you'll have to be in the physical location of the device. Because you'll push a button on the router on the wireless access point and then you're gonna put the device PIN in here. And basically what it's done, supposed to do is, it's supposed to be pushed button security.

Open Authentication
- No authentication at all. Ask to join and your in


Captive Portals
- Captive portal just know what that means. It means that you're gonna have to before you can actually join the wireless network, it's more like a due diligence thing, cuz it just means that you're gonna put in your user name and your password, and an access code. 
EX:
I know that in hotels that I've been in it's been like your room number, if you will, and then they put a essentially an acceptable use policy. They call it terms and conditions. But a lot of times, it's an acceptable use policy of what you can and can't are not supposed to do on their wireless network and then they can hold you liable for it. 

- It means I lock you down, you go to the captive portal. You put in a username and password, your access code. Agree to the terms and conditions. If you've put everything in right, you click Connect and it allows you to connect to the wireless network.

Installation Considerations

Channel Overlay
- Channel Overlap is in reference to congestion

Congestion

FYI: All right In the 2.4 gigahertz network, you have essentially 13 channels. You have 11 that are used here in the United States. The 12th channel can be used in things like the European contraries and the only one that uses the entire 2.4 gigahertz spectrum 13 channels is Japan. However in those 11 channels, there are three that do not overlap, and that's 1, 6 and 11.


WAP Placement
- These should be strategically placed. A lot of times they will be in the roof of office buildings so that they are not physically accessable with out a ladder.

Heatmaps and Site Surveys

-  heat map is just a way that you can tell how the strength of your network in gain or decibels. And it just shows you what the coverage is of your access points. Especially if you have like a distributed or one of these mesh based networks where you have multiple access points, working in concert with each other. 

FYI: A wireless LAN controller, first of all, they can be hundreds of thousands of dollars. So chances are you're gonna have one of these if you do in some kind of data center, but make sure that they're secure. Because if somebody has physical access to your network, they can pretty much do what they want.

Controller and AP Placement

Reminder: The MAC address is the service set identifier. (SSID)

MAC Filtering

# How does it work?
EX:
One of the first things I would do is disable this, as well as there's also MAC filtering here too. MAC filtering does exactly what it sounds like. You can either do it by an allow or deny list. Whitelist or blacklist says these are the MAC addresses that I allow on this network. This is not a way to secure your wireless network because MAC addresses can be spoofed very, very easily. 

It's the operating system that's telling the wireless access point, yeah, this is your MAC address. Well, if I can get a piece of software that says no operating system, this is my MAC address, right? We can go out there and we can now set a wireless analyzer in what's known as promiscuous mode. 

So it will Look at all of the wireless packets coming off of a network and we can just find a legitimate MAC address for your network. And we could spoof it and make our way onto the network.

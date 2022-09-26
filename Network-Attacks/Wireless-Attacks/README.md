Rogue access point

''
- A rogue access point could be a malicious attack or unintentional EX: A student had no malicious intent in their heart. All they were wanting to do is, hey, "How do I configure a wireless access point?", But when the access point came online it caused a denial of service. 
- Somebody could just putting a wireless access point in the proximity of your wireless network, for the intent to cause some kind of denial of service attack. 
''

Evil Twin
''

# EX:
Lets say i'm trying to connect to a wifi network, and I can see the SSID is pointing to, let's say, a Belkin, which is not what we're using, we can tell something's wrong, but your average end user doesn't know that. And when this happens now they're connecting to what's known as an evil twin.

- So with an Evil Twin attack best case scenario, you only have a denial of service attack. Worst case scenario like they are redirecting you to a malicious website. 
- Even worse, they're sending you to to a captive portal on the access point that's actually scraping your username and credentials and just giving it right back to the attacker.


# Summary
An Evil twin is a Rogue access point 
This is not a very sophisticated attack. You just go to Best Buy or newegg, and buy an access point, 
connect it, and name those SSIDs the same as something else and hope somebody connects to it and starts surfing to your probably
malicious sites or whatever.
And when this happens now they're connecting to what's known as an Evil Twin

''
Disassociation
''
- A disassociation attack,is kind of a denial of service, but it can be used for other things as well. 
- Could be the first step in an evil twin attack

# EX: 
A disassociation attack can be used for things like denial of service, it could be one of the first steps in forcing people off of the legitimate network and connecting over to this evil twin.

''

Initialization vector (IV)
''
# Ex
- If we are passing encrypted data over a network and we use an encryption key, It's going to produce this encrypted output the same encrypted output everyutime. 

- Now imagine the same exact encryption key. The same exact data, we run it through that encryption key. And we have noticed that we have two encrypted outputs that are identical all right. 

- Now if somebody is trying to make their way into your network or reverse engineer that key. Perception similarities are not something that the good actors want. 

- Now, the bad actors absolutely love it because when they can identify these similarities, then they can try to reverse engineer the cryptographic process that is made these encrypted outputs. 

- We need to some kind of way to ensure that every piece of data, even if it's the same identical information encrypted with the same key, always have unique outputs. 

- So what do we do, we add a little bit of extra information along with our secret keys, and that's what's known as an initialization vector. It's a little bit of padding really, it's really sometimes called a nuance

- Because the attacker doesn't really know what that encrypted output is and can't really use that as an attack vector. What they do is they decide, let's attack the initialization vector because it's a limited amount of space.

- When I have a key that is 256 bits long, the amount of possibilities is just astronomically large. But when I've got a bit space of about 24 bits now we reduce it down from billions and billions of combinations down to about 16,777,216 possibilities

- So it's a one time padding. And it's supposed to pseudo randomize. And now the attacker doesn't see similarities


# Summary
An initialization vector attack is random information, that's put in front of your data so that when you encrypt that data.(that's the same data with the same key). You always have unique outputs. And that's what they're exploiting is that small initialization vector.

If there is an attack that can be mounted against an IV that's 24 bit space by the time it takes to play a song the attacker could be potentially in your network(s)

Initialization, vector attack, this was common and things like web that had a 24 bit initialization vector, and they would just attack that to try to brute force the password, make their way on your computers

WPA came out in an increase that level two, I believe 48 bits. And they did a little bit, different stuff on the back end as well. But it increased the bit length. So it made it a little bit harder to do an initialization vector attack doesn't mean it can't be brute forced it can,
''
Radio frequency identifier (RFID)

- Transponder:That's a tag a label or a card or a A chip typically that's on the card, not necessarily the card itself'

- "Wireless" and "Wi-Fi" are NOT synonymous. This is radiated, unbounded communications. We're not talking specific Wi Fi protocols. Although like we have been when you talk about initialization vectors you typically are. But now we're talking other things like radio frequency identifier RFID. and this is typically a tangible item which has what's known as a transponder.

- "Reader" And there's usually some kind of middleware, in between that allows the, cards to be read and that information to be checked against the database

- Now. You have things like short range attack short range RFID. So for instance 15 centimeters mid range about five meters long range you have around around 500 meters

- And what this tries to do is it tries to sit and do things like reverse engineering. 

- There is a main goal a lot of times reverse engineering, We can do things like power analysis because an authentication versus, an authentication generate different power levels. 

- Do things like just eavesdropping in between the transponder and the reader. 

- Ultimately though, your goal is going to be to clone those cards. We wanna spoof those cards. So that authentication mechanism will allow us to pretend like We're an authorized user.

''
Near-field communication (NFC)
- NFC but you've probably seen it in the wild if you've ever used things like mobile device payments
- You can use it for electronic identification things like a ticketing systems, and public transportation based systems. Peer-to-peer data transfers, device pairing, and customer loyalty programs.
- RFID attack vectors  Eavesdropping, Data modification or Theft, and a relay attack.

Jamming

Bluesnarfing

Bluejacking
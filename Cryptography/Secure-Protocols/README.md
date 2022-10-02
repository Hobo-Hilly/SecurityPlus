# Encryption ctnd 


TLS Transport Layer Security (Insecure Protcol. All of em..)

# The TLS handshake Break Down

- The client has given a random value to the endpoint/server 

- The server has said, all right, This is the algorithm or the cipher suites that we're gonna use. 

- And the server is gonna say here, client, here are the encryptions I support. And this is sent with a random value.

- That random value is going to be sent over to the server.

- Now the server is going to say the same thing. Hello.

- Now the server sends a random string of bets and here's the chosen cipher suite. And here's the certificate. Aand we're gonna send that back over to the client

- digital certificate is then going to be used

- That server is going to pass that certificate off. And that certificate is going to be like any other certificate that is presented as an identity or authentication 

-  Now the client is going to validate with the certificate of authority that issued the certificate. And this server tells the cliet in the validation process that the certificate you sent us is valid and it should be trusted, and it hasn't been revoked.

- Once that happens, the cliet now haa a valid certificate. And the server's public key

- And then the client is going to create a secret. The secret is going to be encrypted with the server's public key.

- Once that happens, we're going to take that encrypted secret and we're going to send it back to the server.(the first server we initially talked to)

- A symmetric key encryption. A public key encrypted the secret. Only the server's private key can decrypt the secret.

- Now what we have is known as a  'premaster secret'. That's what was encrypted(the secret the client sent to 1st server)

- We have two publicly exchanged random values. Between the two of those, they create what's known as a master key

- There are two session keys. There's an HMAC session key, which verifies the validity of the encrypted session key.

- What's happening here in the key exchange notice that we are sharing something publicly 

- If Dan was over here, and he was trying to capture that information, he could see the public information. But what he wouldn't see is the encrypted secret that was sent over the wire.

- Then with the two random values that were exchanged, generate a master key. With the same exact master key on each end that would be used to generate session keys. After that, to further encrypt the communications that we now send. Now that we have this secure channel, this secure communication


SSH (Secure Shell) port 22

- Secure Shell is something that uses RSA encryption keys 

# Summary

'when you connect via SSH Session, you will see that there's going to be a fingerprint that's going to be given back to you. Saying, Hey, do you want to trust this? And if you trust it, it gets stored into a location of known, trusted hosts. And then the next time. we don't have to worry wbout exchanging that key because I already have it locally

- Secure Shell (SSH) allows us to create this tunneled environment

-  The tunneled communication allows that information passing through it to be encrypted.

- secure shell is primarily used as a remote connection method in order to do configurations on remote network devices/servers

LDAP (Lightweight directory access protocol) port 389(insecure port)  (encrypted port 636)

- SSL is broken. We should all be using TLS 1.3. This is for secure communications in between LDAP based servers. It secures the communication just like we say Same thing with SSH 

- Same thing with SSH but the method/ type of protocol that we're using is different but the concept is the same. 


FTP / SFTP / FTPS
insecure / secure/ Insecure 

- FTPS. This was a technology that people use for about five minutes. And that was an FTP server with an SSL certificate attached to it much like our web servers would have had SSL certificates attached to them as well.

- This is essentially an SSH session started between, the client and the SFTP server that encrypts the session.This means we now have an encrypted tunnel between our FTP server and our FTP client.

HTTPS

HTTPS, this is like SSL in the original days, and it was how we secure our web traffic

- It's it's vulnerable to attacks, and it has been for a long time, that went through 1.0, 2.0 and 3.0. 3.1 is technically TLS 1.0. Please don't let that confuse you. It just means at a certain point, they said, SSL bad now we're gonna move on into TLS

- TLS (Transport Layer Security) allows us to connect to a server and we have a secure encrypted communication


- Even though you'll see HTTPS in the browser. Underneath the hood if you were to pull out the security information, you would see a TLS cipher suite exchange

- HTTPS port 443


SRTP (secure Real time transport protocol)

- Used for voice over IP VoIP PBX. It's what routes the calls where they need to go, and it usually does these. A SIP message communications. 

- But then the devices the end points between them. They're going to use the secure Real time transport protocol

Email Protocols

- POP3 Post Office protocol version 3 is port 110 and is unencrypted.
 
- SMTP simple Mail transfer protocol is port 125 and unencrypted.
 
- IMAP internet message access or mail access protocol is on port 143 and is unencrypted.

S/MIME 

- S/MIME is a way you can use digital certificates to encrypt the emails in the messages. You send between email systems 
- And what you're doing is you're digitally signing and encrypting the emails.
- Uses public key Cryptography

POP3 ( Secure version of POP Post Office Protocol)

- Secuere inbound email

- Uses SSL port 465

- Usees TLS on Port 587



IMAPS (Internet Message Access Protocol Secure)

- Secure outbound email

- Port 993

DNS (Domain Name Sevice)

 FYI: DNS cache poisoning. If I can get a malicious entry into the DNS database, and then (Victim/Victims computer) asks the poisned DNS server where a (random website) is, and he basically looks at the TCP IP properties of his network adapter and uses the DNS server. (Victims Machine)is gonna pull that record back. And if that record is malicious, then it's going to send him and redirect where ever the attacker wants.


DNSSEC
# Sumary

- Imagine being able to say Where is www.itProTV and when you get a response back, it's signed by a digital signature. And you can 
  validate that that did come from the DNS server that it was supposed to that in a high level overview is what DNSSE



SNMP(Simple Mail Transfer Protocol)

-  SNMP collects information, reports, information on manage devices across the network

- Does things like network monitoring and configuration

- Components include:  these three components right here manage devices would be like for instance a router. The agent would be the The software that's running on the router that talks back to the management station. 

SNMP, SNMP V2, and SNMP V3. There is a version C of SNMP version 2 and it is the one pretty much you shouldn't go Back any farther than that,

SNMPv1 

- poor security 

- community string ids and pws

SNMPv2

- poor security 

- community string ids and pws


SNMPv3

- Enhanced security

- Adds encryption

- adds authentication

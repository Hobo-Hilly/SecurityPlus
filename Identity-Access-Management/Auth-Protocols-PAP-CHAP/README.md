

PAP (Password Authentication Protocol)

- Authentication protocols can be used not to just authenticate a human,the user, but it can also be used to authenticate what they called an NPs, a nonperson entity. For instance, maybe two routers are communicating, and they need to authenticate between the two routers. So there's not a human interaction.

# How does it work?
- When that authentication request comes in from the user, there's a challenge going to be made. 

- Well in this one it says, prove you are who you say you are. Well, what does Bob do, Bob sends his password across the wire. And he's either authenticated, which means it's an authentication acknowledgement, or something else that might happen is an authentication negative acknowledgement

- Password Authentication Protocol, its sole purpose was to allow you to authenticate. It did nothing to protect that password. It is known as a clear text authentication protocol

- THIS PROTOCOL IS INSECURE

FYI: Well, when this first came out, we were using PAP with something called the Point to Point Protocol,(PPP) In those early days, they were really going over point to point serial line interfaces, which means there wasn't really any sniffing the wire. To get into the network, you literally had to do a wiretap

FYI: We have ACK and NACK, if you hear, ACK is an acknowledgment, we talked about the TCP three-way handshake, right? We have the SYN, SYN-ACK, right? That's a synchronization acknowledgment. So you'll see this ACK and NACK a lot, right?

CHAP ( Challange Hanshake Authentication Protocol)
- So CHAP, really today is gonna be used, if at all, in a non Windows environment because Microsoft came out, like they did with a lot of products, they made their own flavor, if you will, of CHAP, that's Microsoft's CHAP implementation

EX: User sends Authentication Request to server - - - - - - - > > >     $SERVER1
    
    The $SERVER1 sends a challange back to user - - - - - - -  > >  (A challange is just a random string of bits)

    The User is going to encrypt the challange he received with his Password and send it back over to the authenticating device
        ( this is ALL done when you type in your pasword and hit enter...)   - - - - - - - -  > > > 
    
    Once the $SERVER1 receieves the encrypted challange back. It will reach into its database and try to decrypt the challange with the correct password(What ever password it has stored in it's database). If the the challange can be decrypted by $SERVER1 you are granted access.

    However if you were to type in the wrong password, when the $SERVER1 tries to decrypt it with the password it has in it's database it will not decrypt. Which means no soup for you! 
# Whats different?

So with this process, the authentication handshake is encrypted between the two endpoints. So since it never hits the wire it cannot be sinffed like PAP can.


CHAP versions


MS-CHAP(Microsoft CHAP implementation)


MS-CHAPv2
- So today's standard Authentication, especially in Windows environments is MS-CHAPv2
- Brings in mutual authentication. Menas both endpoints can authenticate
- Allows for alot stronger cryptographic keys
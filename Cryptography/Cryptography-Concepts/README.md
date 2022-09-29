
 Cryptography 


# what is cryptography? 
''

- And cryptography really is the science, keeping information secret

''
# Why do we use it?
''
- So we want to establish communications, right? Between two peers. Now, these peers could be users trying to communicate. These could be some of your connectivity devices.
-  Just two pairs, two independent systems within a network that want to establish secure communications

- We're keeping information secure. Butthe information can be in the form of a communication. It could be a form of data So cryptography can be seen as all inclusive.

- One of the main reasons we use cryptography, for secure end to end communications between two authorized parties. As well as keep unauthorized parties from being able to access the communication and read the contents there in.

- So it doesn't matter if it is communications or data, we don't want them to be have access to that communication. 

- We don't want them to have access to information that we're transferring over the wire. 

''


# Data in Transit
-  data transfer over the wire, that's what's known as data in transit.


# Data at Rest
- If it's stored on a hard drive/USB/SSD or in a storage container, it's data at rest

- We don't want people to have access to that information too. So cryptography comes to the rescue.

# Data in Use

-  If I'm utilizing an application that's consuming or pulling in information, that's data in use.


# Summary
We also wanna keep that information at the communications level all basically, irreversible to where some unautherized party can't gain access to it.

Confidentiality
''
- Confidentiality is what we've talked about with those authorised users. We wanna make sure the authorised user is the only one that has access to the information in the communications.

- Encryption is like a subset of cryptography. The terms are NOT synonymous

- Cryptography as the conceptual idea and encryption is one of the ways apply it

- Steganography is not an encryption but it does hide data ( stick a pin in this were coming back)

''

Integrity
''
- Cryptography also helps us with out integrity. And that's handled through hashing,

- Using the hash value of an item will ensure that the information stays in the form that it was or the state that it was when it left my computer or maybe even a voice over IP communication

''

Availability

''
- Availability is making sure that the authorized users have access to the data that they need access to

- We do that with things like redundancy and fault tolerance
''

Non-repudiation
''

- Non-repudiation, is a digital signature, An Electronic piece of code or cryptography that we can apply as an electronic signature.
- This signature can attach a specific account/user/person to a piece of information and send it over to the endpoint. And that endpoint can verify that the information maintained its integrity through cryptography

''

Light weight Cryptography
''
- lightweight cryptography is used for devices that traditionally have low power, and what they call constrained devices. Devices that don't have a lot of processing power.

- Elliptic curve cryptography is the practical application of a lightweight cryptography. 
It means is through that algorithm we can produce very strong encryption that doesn't take a lot of processing power in order to perform it and reverse it

Constrained Devices
- There's a lot of hybridized environments today with IOT

# Summary 
 with these devices now connected to or routable networks, we need a way the device itself can perform some encryption. The practical application of that is going to be like on smartphones really is going to be things like elliptical curve cryptography,
''
 
 
Ciphers
''
- There are two different protocols that are used on these low power devices. They're more out there. But these are two that I want you to be aware of for the exam, one that's called PRESENT and one named TWINE

'' 

Quantum
''
- There are two different things that they call out quantum communications and quantum computing

- At this point, what we're talking about is more theoretical

- Encryption concerns

- Post-Quantum

''

Blockchain
''
- Blockchain is basically a distributed public ledger 

- Not owned by any one bank

- It's public record keeping, that can be verified. They do that through something known as a block

- A block is a set of information. It's transactional information that is stored in blocks

- That at the transaction information can be publicly verified

- Every transaction can be verified in every time a block is added. It starts to form what's known as the blockchain

# Summary
 Because what happens is this is sent to these transactions is verified by this peer to peer network of computers. And the blocks also have timestamps on them. Now, once it is verified then what happens is a hashing algorithm is applied to it. That can be then verified by other computers in the future those blocks with that hashing algorithm are then added two additional blocks. Every time a block is added. It starts to form what's known as the blockchain. 
 
 It's a very good way to publicly verify transactions in which the data that's stored in, cannot be reversed, and can then be verified as the other chain build 



''

















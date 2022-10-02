# This is an episode on Cryptography and Stego



# Encryption

- encryption itself doesn't hide the fact that data is there

- encryption is how we basically achieve confidentiality

- We know the in formations there but the thing we don't know is what is in the information

- Encryption is where we take our data and make it incomprehensable. The information is there on the wire we can see it. But its encrypted before it goes it and basically looks like a bunch of gobbledygook

- we encrypt the communication typically over network communications and data at rest, and that's usually stored within your hard drives or your storage systems

# Summary

-  We're using ciphers to basically jumble the information up. We create that ciphertext so that we can apply it to in rest in motion or in use data

- You have stream ciphers, and you have block ciphers

- A stream cipher takes the information, and encrypts it byte by byte

- So the information is encrypted character by character and that's what a stream cipher is


# Block ciphers

- Block ciphers take groupings of your information and encrypt that grouping of information in 64 byte chunks

- ECB is one of the oldest, and it's one of the weakest block ciphers there is

- Next one is a cipher block chaining. You might hear called CBC.

# Summary 
CBC actually takes the encrypted block and feeds that into the next block and then feeds it in to the next bloack and you get this chain right. An error in one block will be an error all the way down the chain. 

- The Cipher feedback and output feedback, really allow a block cipher to function a little bit like a stream cipher

- The last one is one of the strongest ones, The encryption methods above are all pre AES. In AES we use CTR mode. That's counter mode. And again it's the more common one in one of the strongest of the modes of operation out of all the ones that are attached to the different block cipher. 

# Stegnography aka 'stego'

- Stenography doesn't encrypt the message, at all, but it hides the fact that the data is even there

- It hides the information in plain site. So the info is not encrypted. if you ran a stego tool against it you would see the image. Unless it's password protected. 

# Summary

- Think about things like losfull compression. We can compress certain information, and leave out certain bits. Because when we rebuild that information, the bits that are removed, we can't really perceive they're there. 

- Well, imagine not dropping those bits. Imagine taking a program that could take those bits that you would know, "hey, we could probably leave those off, and you'd be unaware". But now we use them as containers to store information within our messages, and we send that information over to another user








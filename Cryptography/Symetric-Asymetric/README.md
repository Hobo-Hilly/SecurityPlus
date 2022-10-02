# Symetric vs Asymetric

Symetric Cryptography

- One key to encrypts plain text and the exact same key decrypts the text

- This is a single key system and it is faster than Asymetric encryption

- So if an attacker gets his hands on one key he can access ALL the information

Types of Symetric Key Encryptions

AES (Advance Encryption Standard)

- Considered the strongest encryption available today

- Used for US Gov Top Secret documents

- it has different Bit varieties 128 192 and 256

DES/3DES(Data Encryption Standard)

- DES is a weak block cipher that uses 56 bit encryption. It is a single key system 

- DES(2.0 ish) has a 112 bit key encryption option. This method uses a 2 key set up

- 3DES(AKA Triple DES) Offers a 168 bit encrypption option on a three key system

EX: We take the information and encrypt it. Then We take the reuslt and encrypt that. Then we take the result of that and encrypt it for a 3rd and final time

- You might hear DES(Single Key) it called a 64 bit key. That's not really true. It's 56 bits because there's 8 bits of parity for checking
FYI: When you're using things like IPsec communication that bundles in a bunch of protocols that wrap around all of this. 3DES isn't bad.


Blowfish
- 64 bit weak block cipher


Rivest Cipher (This is the 'R' in 'RSA' A symetric encryption)

- RC4 - A weak stream cipher that should never be used

- RC5/RC6 - are block ciphers

- WEP on a wireless network makes use of these protocols

- WPA; the stream Cipher underneath that it uses for encryption is, RC4


Asymetric Key encryption ( aka key pair encryption/ public key encryption)

- One key two encrypt and One Key to decrypt

- Private key is the key that decrypts

- Public key is meant to give out to people we want to communicate with. So they can encrypt with the public key and when we get the information and decrypt with our private key.

- SO we can use either key to encrypt or decrypt, but only in that specific set of that key pair

- So if I've encrypted with my private key, only my public key will decrypt it if I've encrypted it with the public key then only my private key will decrypt it That's how that's meant to work. 

FYI: We can actually encrypt things with our private key, and you can decrypt them with the public key

- A lot of times because this computationally requires more resources, what you'll see is when we need to do this key exchange across the wire, we will just Use public key cryptology to transmit a symmetric key, then we can do both decryption and encryption with a very fast key.



RC(Rivest Cipher)
- reverse cipher or RC. That's our Rivest, Shamir and Adleman RSA they were the ones that in the 70s. Diffie Hellman technically did it in 1976. RSA did it in 1977


Diffie Hellman 
- Diffie Hellman is an old standard and we use it for key exchange today on the wire and there are many variants

DSA (Digital Signature Algorythem)
- DSA the digital signature algorithm and this is endorsed by NIST for their digital signature standard


EIGamal
- used in things like gnu private Privacy Guard or maybe you've heard of the PGP. This forms the basis for PGP.




Digital signature
-  So a hashing algorithm is used to generate a hash value and then we take the private key and encrypt that value. That becomes what's known as a digital signature

- so if this is sent over to this (person you want to communicate with)gentleman He should only be able to decrypt that document if the matching private key signed it. 

- Meaning, the public key can actually remove the encryption and it reveals the hash value. So that's a digital signature



Cipher suite

EX: TLS_DHE_RSA_WITH_AES_256_GCM_SHA384

# Summary

You have your Transport Layer Security, 

you have your key exchange algorithm. 

You have your authentication or digital signature algorithm in this case is going to encrypt The symmetric key, again symmetric key for 

bulk encryption. And then this is just the mode of operation. It's a counter mode form of what we've talked about. 

And then finally, we need to do the message authentication. And this is the algorithm that's gonna use SHA384

FYI: This is one of your cipher suites. And this is how they break down and a lot of times you're gonna support multitude of these cipher suites.


Perfect forward secrecy:

- Perfect forward secrecy is this concept that every single data packet that gets communicated within a session, the key changes. 

# ideaoligy
So the the thought process is if the hacker grabs one key and decrypt set communication, sir, you're living in the past man we've already moved on and we've got new encryption keys











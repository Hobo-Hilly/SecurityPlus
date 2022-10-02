# Hashing Notes

# What is it?
- Hashing, what it does is it takes variable linked data. You'll see data of any size runs it through this operation, and it produces a fixed length hash output. Sometimes you'll hear that fixed length output called one way encryption

- The function produces a fixed length hash. Sometimes you'll even hear this fixed length called a fingerprint 

- Know that the hashing function takes data of any size and produces a fixed length value, and that's where our integrity comes in

# Summary

 So we can use these hashing functions or algorithms to get that fixed length string.  That's what verifies that integrity. As long as that message hasn't changed, it's always going to be the same no matter who runs.

- If they run that algorithm across that message and it doesn't match and it hasn't maintain its integrity.

# Hashes we have today

MD5
- First one is MD5. It's been around for a very long time it produces 128 bit output. It is one of the weakest on the market today and it's prone to what are known as collisions.

FYI: Hashing collisions, that's the fact that we can feed input in, produce a fixed link value. And I can put completely separate input, into the algorithm and the outputs match. Even though they are two different values, those are called hashing collisions,

SHA1

- So the successor has been around for a long time. It was known as the Secure Hashing algorithm. 

- It's bit length increases a little bit to 160 bits

- It has been known for awhile to be susceptible to collision attacks as well, so it is actually kind of going by the wayside

SHA2

- SHA2 has variable length output. It has 224, 256, 384 and then Sha 512.

- It is the strongest encryption that is out there.  ( 10/01/2022)

RIPEMD

-  RIPEMD was designed as a replacement MD5 when they knew that it was weak

- And it has some variants as well 128, 160, 320

HMAC

- HMAC kind of fits in place with hashing algorithms, but this is also used when you use things like cipher suites. 

- Basically, in a cipher suite, you choose 
    how we're going to exchange the key, 
    how you're going to perform the encryption, 
    and then how you're going to verify the message.

- HMAC is a hashed message authentication code.

- HMAC So what that means is we take actually the private key and signed the hash with the private key. 
    we send it over to the recipient, so they can basically reverse engineer that encryption with a public key and they could verify the integrity of the message

- This is a Key message authentication code. That's what the (HMAC) hash message authentication code is

- So this is not really a hashing algorithm. It's called CRC 32. It's just a check some quick, dirty, easy way, very low processing overhead. Verify things like frames that are going across LAN's maintain their integrity as well. 

# Hashing use cases
    File Integrity
    Passwords
    Code signing

SALT
- Salting takes and adds a little information to your password and then hashes the whole thing 

- What we're going to add a little padding, 

- A little random information that's going to be added to that password. And we're going to perform that hashing algorithm to it as well.

- The salt is added on BEFORE the encryption takes place. This is an extra layer of security

FYI: Should the hash ever become public, it defeat the purpose of using the salt
     Stronger hashing functions, what they do is because of the bit link being larger, they produce larger fixed links, which makes it harder to reverse engineer

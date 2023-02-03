# Additional Authentication Methods

Tokens

# What is it?
- Tokens are essentially an electronic component, that authenticates identities
- It can electronically store information. It doesn't have to. 
- It may be with or with out a password 

Token Types
- Connected
Requires a physical connection to the system 
EX: Yubikey, FIDO (Fast Id Online), Smart Card


- Disconnected
No physical connection required
EX: Authenticator Apps, RSA(Fob), Secure ID,


- Contactless (NFC Near Field Communication)
No physical connection
EX: Apple Pay, Google Pay, Apple Pay 
its a contactless token. There is also the speed pass. The speed pass has a database that 
is being maintained somewhere else other than where you are physically located.


OTPs
HMAC based One Time Password

Hashed Message Authentication Code One Time Password
HTOP
# How does it work?

- There are two components Secret Key and a counter. They are combined and then ran through the HMAC hashing process.
- The result (usually looking like 2467456) is the One Time Password
- The Secret Key is a Random Number
- Counters NEVER expire. They Only expire once you use them
- Secret Key(AKA Seed)      +        Counter   = $Result

FYI: There is a problem with them. Cuz they only expire on use. If i can gain access to a system that Dan's using that has the pregenerated HMAC-based OTP's then i can use them. They're very susceptible to replay attacks


$Result    +     HMAC(hashing process)   =    2468731(The digits that make up a One Time Password)



TOTP

- This is a time based method
- Used the Secret Key(Random Number)    +     TIMER(This is in place of the counter)  =  $Result2

$Result2   +   HMAC(Hashing Process)     =     Timed Based One Time Authentication (Code)

- A token does not have to contain a password 

An RSA secure id is a Token that contains a One Time Password 

Discussion points

Delivery Mechanisms
Authentication applications
SMS or phone call
Push notifications
Smart card authentication
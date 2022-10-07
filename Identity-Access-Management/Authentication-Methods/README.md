# Why would we use this? 

- Lets say we need a centralized model to manage all of the users and multiple networks. That's where our Directory Service comes in, and that's the why. 

- Directory Services are a way that you can store all the objects within your networks and you can centrally manage them

- You can put Users, Groups, Computers, Printers, Shared volumes/folders, Services

- Active Directory, you're going to have maybe hundreds of these servers, but the database that they contain, there's one database where all of these objects are located, and that's one of the benefits of having a Directory Service at your disposal.

Authentication methods



Directory services(three slides)
- Defined by X.500 standard
- this is a standardized Method of centrally managing all the objects within your network.
- Objects are represented by a DN

EX: This is an example of a distinguished name that's within a directory services database

CN=sshd,OU=SecPlusUsers,DC=secplus,DC=local

CN: Common name

OU: OrganizationalUnitName

DC: DomainComponent

DC: DomainComponent

This is how that Distinguished Name breaks down. You have a common name, an organizational unit name and then two domain components



Federation(three slides)
# How does it work?
- I log into a web application, right? When the user logs in, they're gonna go through the service provider.The service provider is going to use an identity provider. That identity provider and I'll talk about what some of these other options are here. The SAML, OpenID, and OAuth, right? All right, they're gonna reach to somebody who has a database of identities. 

- That's an identity provider. You've probably seen these companies before. All right, Google has a massive, massive identity database out there. And guess what? You can contract for a service to use their identities to log into your web application. That is a form of a federation, all right? Facebook, hundreds of millions of users, right? They have a massive pool of identities. You can connect through contract, right? This is definitely a service that they're gonna provide and you can connect to things like the Security Assertion Mark-up Language, or OpenID and OAuth. These are ways that you can securely connect to identity provider and provide that authentication


- Again service provider, I'm logging into a web application there providing that service. The service provider then uses an identity providers, such as the public ones that we've seen here, all right? You connect from the service provider to the identity provider with these technology, Security Assertion Mark-up Language, OpenID, and OAuth And then, they validate that, that person is who they say they are. But they're the identity provider and they're the ones that are going to help with the authentication on the back end. A lot of times handled all through your web APIs

Security Assertion Markup Language SAML



SSO Single SignOn

EX: An example is when we log into gmail, we can turn around and go to any other portion of the G suite, whether it's google docs, and some of the other options that they have and we don't have to reenter our credentials. That's essentially what Single sign-on is.


Attestation

when this computer boots up, what it does is it takes that configuration state. And it's gonna wrap that up into a file and it says, here's how I'm configured right now, and it takes that message and it sends it out to an attestation server. The attestation server says, all right. I see the configuration, let's say Dan's the security administrator.

 Dan says, I want this security baseline. All of the client computers on my network have to boot up and be configured like this, that's the policy. The attestation server looks at the configuration state and says, what's the security policy here? And let's do a comparison Don's policy says, it should be configured this way, client computers saying this is what I have, if they are in agreement and guess what? You gain access to the resources, inside of the corporate network, all right. However, if that same process happens and what is expected or required by the policy is not what we see inside the configuration state, you're not going to get access into the network.

 - You may be kicked down to a remediation network which will auto config your computer to the appropriate settings and send you back to the main network and you have full access.

 - You could get locked out 

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
its a contactless token


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
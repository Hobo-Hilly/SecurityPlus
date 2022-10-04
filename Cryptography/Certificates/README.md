# Recap And I've been, if you remember, in our last episode, we set up a PKI(Public Key Infrastructure).
- We stood up the root CA. 
- We stood up the subordinate CA and 
- Then we issued a certificate at the end. 

"when we were talking about PKI wlike what we set up in the last episode. Was that internal public key infrastructure? Something that we would have inside of our organization versus an external. 

 Well remember this is kind of how that hierarchy looks. 

1. You've got a root CA, that's the top part of the hierarchy and 

2. Then you have the intermediate CA, sometimes called subordinate CA, 'cause its subordinate to the root. In this hierarchical trust model. 

2. (A) The root CA it issues itself. What's known as a self signed certificate.

 FYI: What does self signed certificate mean? That means I sign my own certificate.


# Summary

" external Public Key Infrastructure  somebody like Digicert or something like Verisign. These are the companies out there that sign these certificates too. To ID an entity or entities so that we can validate and confirm they are who they say they are. 

- It establishes the first part of that chain of trust. It issues the certificate, to the intermediate

- And when you validate these certificates, you go through what is known as 'certificate chain validation'

What does 'certificate chain validation mean'? 

It just means you presented me with a certificate. I'm going to go up the tree up the ladder and I'm going to say. 

1. - Subordinate CA let me see your certificate. All right. It's valid 
2. - root certificate authority. Let me see your certificate. Okay. It's valid. 
3.  Now I trust the certificate. Let's move on with our encrypted communication.

* Root and Sub CA Certs

+ Self-signed

* Machine Certifcate

- machine certificates, can be servers

- When you go to a web server, think about how you do HTTPS communications. It's using that certificate to encrypt the communications or at least start that encryption process, things like remote access servers. These are just examples of various servers that you could use machine certificates for.

- You could use is for a proxy server. A proxy server is a cite that sits in between you and a web request. We need to verify that the proxy wasn't just stood up by somebody randomly. Certificates for the win

+ Servers

+ Cliente Machines

- They can be issued a servers. And they can basically authenticate the server and verify that server is who they say it says it is. It could also be client machines as well, things like workstations if you will laptops

+ Network Devices

- Network devices can also be issued certificates so that you can validate and verify the redistribution points.

- When you send communications to them (Network Devices), All different types of machines, can use certificates to be issued certificates 

- use them as a form of endpoint or authentication,

* User Certificates
- The user can use certificates for ourselves for a variety different purposes. 

- One of the best things about using certificates for the user is it's not susceptible to some of the password based attacks that we've talked about previously

- So if you issue a certificate to an end user, then the end user can present the certificate itself and the certificate itself can be totally controlled by the administrator
- so this is not as easy to spoof

Email

Disk Encryption

Identity

S/MIME ( Secure Multimedia Internet Mail Extensions)
- S MIME it works on public key cryptography
    
    Which means we're going to have a certificates issued out to a user for the purposes of email
    
    That's going to be an associated key pair
#EX:
    If this person on the left wants to send the gentleman on the right some kind of encrypted email communication, 
    
    - It's going to first reach out grab his public key
    - Then it's going to encrypt the email message and it's going to send it back over to the person with the public key encryption on it
    - Then the receiving user is going to take their private key and use it to decrypt the email (The key that is only available to them)  

Code Signing Certificates

- Code signing certificates essentially proves the identity of the vendor and ensures the integrity of the software systems operating systems

- We use these code signing certificates to validate things like drivers

#EX: I could pull that software down and I can run the hashing algorithms that they usually post with it. And we do that same hashing algorithm and compare those outputs, and if the exact same hashing function produces the same message digest, I can verify that that software is the software that we expect it to be.


* Wildcard Certificates

- For instance, something like this asterix(*).itpro.tv that means that if we have additional sub domains that IT pro TV, the namespace, we own it And we want to validate it, we can assign a wide wildcard certificate

-  Should a top level domain ever become exploited, then that means the certificates below that could be used to attack people regardless of what the name space is

+ \*.google.com

* Validation Certificates

DV (Domain Validation)

- DV based certificates are the lowest level of validation, it just verifies ownership over the domain, that domain itself

OV ( Organization Validation )

-  Organization validation requires greater validation than the DV certificate. So you have to turn over more information for the registration

- Your basically going to validate more about our company. Then the DV Certificate 
EX: This is IT pro TV, we're in Gainesville. We're at this address. Here's the administrator... etc

EV(Extended Validation)

- This is the highest level of trust when it comes to a certificate that's been issued.

- The highest form of organization identification, it's the most rigorous validation process. 
- It means when I'm going to get this certificate not only can I validate the namespace itself. That says I'm the owner of the domain or the identity of the organization

+ IV

* Certificate Format

+ .der/.cer

- iF You don't care if it's human readable or not, you're going to be using one of these, 
- This is something known as the distinguished encoding rules as the .der format. It's essentially a binary encoded, and it doesn't include the private key

+ .pem/.crt/.cer

- This is that base 64 ASCII encoded that says begin certificates got a whole bunch of information in between and then it says end certificate

- These two formats here there really pretty much the same. The differences is one is binary is not human readable, and the other one is human readable


The difference between the two PKCS standards below is do you wanna export the private key?

+ PKCS#7

-  PKCS 7 exports the public key, not the private key.

-  We've been talking about a good way to publish the public key is to export the public key. It's because it doesn't include the private key


+ PKCS#12

- Number 12 exports the private public certificate chain and all the extended attributes associated with it

- So if you need the private key to be exported than you use 12

# this epsidoe is all about PKI

We're going to look at the infrastructure that's used in order to issue out our certificates

- If we look an I choose that little lock that is to the left of the address bar. Depending on what browser you're using, you could do this a little bit differently, but most of the time you can click on the little lock and you can choose certificate. Now this is the certificate that's been issued out by the public key infrastructure that's available out there on the Internet.

- This is what we call external certificate authorities. A certificate authority is the computer that's responsible for assigning the certificate

**** CA == Certificatre Authority******

- It does work in a hierarchy, if you click the drop down it exposes the heirarchy and first up is...
    
    Root certificate authority
    
    The root CA is the highest part of the hierarchy, and it's responsible for issuing certificates to low level CA's

# Summary
    
- If this is the top part of the heierarchy its responsible for issuing out certificates.Should the top part of the hierarchy get exploited. Every certificate that this root CA and there could be thousands 10s if not hundreds of thousands of certificates that this root CA has issued that now have to be revoked, which means made in validate invalidate the certificates

FYI: They are also called offline CSS because they're so important to the hierarchy.

- Typically what you'll do is the root CA will only issue certificates to the intermediate CA and then you'll take that  CA offline completely. Period. NOT even air gapped! Like maybe even taken the storage device the hard drive out and locking it in a safe and you keep it protected.

- The intermediate CA's subordinate CA's (subordinate to the root). They are the ones that are going to issue the certificates to all entities out there. The really the workhorses of the public key infrastructure

- You can validate that itPro.tv is who they say they are because these external authorities have issued these certificates

-  So we are going to set up our own PKI. But it's only going to be trusted by the computers within inside of our organization, and that's the difference between an external CA and an internal CA

- When you have somebody else manage your CA. Your certificates externally, you're talking about a lot of money, so a lot of times what you're going to do is create your internal CA, your own internal PKI. And then you'll be responsible for your certificates within your organizations and anything that's facing the public. That's going to touch a public network essentially is going to be an external CA, and they usually back their certificates with lots of moolah



* Installing ADCS (Root)
# Summary
We're going to build this public key infrastructure, and we're going to create a root and An intermediate CA. And then we're going to go ahead and see if we can't issue out of certificate to a user.

For this example we have three computers here. A domain controller that silently running in the background and I got a two member servers here. Our Member Server, the first one here. This is going to be our root CA

1. wW're going to go up into the server manager tab. And then we got to manage options And we're going to choose add roles and features.

2. From here we're going to add the role that we want. In this case, this is going to be a role based or feature based installation, so   we will choose next in the Wizard. Then select the server you are installing the PKI on

3. So for windows their public key infrastructure is active directory certificate services 

4. When we choose to, add this, it's going to add some other additional features like the RSAT (remote server administration toolkit) and then you could potentially see things like IIS(internet information services) get involved in here as well. 

5. Move down to AD CS and select 'Role services' and from options...
    Cerftification of Authority [x]
    Certificate enrollment Policy Web Service
    Certificate enrollment Policy Service
    Certification Authority Web Enrollment
    Network Device Enrollment service
    Online Responder
We want the first options in this list.

FYI: This is the way microsoft implements something known as the OCSP (Online Certificate Status Protocol)
     This process(OCSP) says I don't want to check the entire career. I'm going to send you a serial number. The identifier on the certificate and tell me if that certificate is valid or not. It's just a way to speed up the process

- These CA's maintain certificates that they've invalidated. Whether it's for, cease of operations, maybe it's been compromised, they will be put into what's known as the certificate revocation list. 

- So if the certificate is passed to you first thing you're going to do is make sure it's valid. Then you're also going to make sure that it hasn't been revoked, and you'll check the CA to ensure that it hasn't been revoked

FYI: Once a certificate makes it on to ANY revocation list its gone forever. There is no reviving it.

-   NDES Network Device Enrollment Services, that's their way of implementing something known as the simple device enrollment protocol

6. We've got to install it on the other computer as well even before we get it configured. So we're going to let this one go ahead and install and move to the next machine we need to intall on.

Changing machines: So we're going to let this one go ahead and install, and that is Root CA. That's going to be the top part of that hierarchy we mentioned earlier

1. We're going to add and remove roles here as well on this side

2. Next we select role based or feature based installation. 

3. We're going to go ahead and choose this server from the pool. 

4. Will choose active directory certificateertificate services will add all the necessary features

5. ...Same thing as before we're just going to create the certificate authority here. And now this is going to be our subordinate CA


Changing back to Machine 1/Root CA after the initial installation has complete these are the nxt steps.
Now the next thing is we start configuring the active directory certificate services

1.  Select Next and choose CA setup

2. select Enterprise CA and click next. 
- Notice that it says the root CA versus the subordinate CA. Now, the root CA that's the highest part of the hierarchy

FYI: This is a windows PKI specific installation, so this is a Windows specific functionality. 
Here enterprise CA is just mean they integrate with active directory stand alone means it stands alone outside of your active directory 

3. Select Root CA and click next

4. Select Private key and click next 
- And then it's going to ask us what key do we want to use. This is gonna associate it with a public key and a private key we're essentially creating a new private key. 

5. From the list asking to select a Key Storage Provider (Select the RSA#Microsoft Software Key Storage provider)
- Now are now presented with various sources of what is known as cryptographic service providers. i.e.What kind of algorithm are you gonna use to generate your keys
-  The keys are actually doing the work the algorithm is just how it happens.

6. Right next to this drop down is another asking for a Key Lengeth Select 4096 and Next
- Typically root CA's the key lengths are going to be larger than what the subordinates are
- 4096 2048 1024 512
- Shorter key length that means not as weak, or I mean CBD, not as strong, a little bit weaker. But it does allow for a better processing speed

You should be on the choose CA tab...

7. Leve as its deafult and select next  
- A common name is part of what's known as the x dot 509 or certificate base standard 
- Where we pick a common name 
- A common name is important. It's typically a hostname and the domain name
 FYI: We don't want our all of our certificates expiring at the same time because then we got a lot of work to do. So what we're gonna do is we're gonna make our root CA validity period, (this means before the certificate needs to be renewed or invalidated,  revoked. We're gonna make it a 10 year validity period.


# So far ... 
So what we have set up so far is an internal CA not an external CA. These are external But we essentially set up the top part of this hierarchy. So now we are switching back to the second server and we're going to create the subordinate CA now

From the Second machine after its done installing

1. I'll selct Certification Authority just like we did on the other root CA, 
 
2. Select Enterprise and click next in the wizard. 
- We're gonna do an enterprise level CA with this as well. We want to integrate it with Active Directory. 

now from the CA type tab

3. Select Subordinate CA

- By default, since it's integrated with windows, it's aware of the root CA. We're gonna choose Yes to the subordinate CA. And Next
- Now the subordinate CA also needs their own key because remember, they're gonna endorse their certificates with this key that they issue to everybody else.

4. Leave the Common Name tab and the key length along. and click next. Because it is half the root CA 

5. Select Next 

- And then what we're going to do is we're going to save this to what's known as a certificate request 
- This is what's know as a (CSR) certificate signing request. If you want to request a certificate, even a subordinate, I need to submit a signing request that's then issued over to whoever the certificate authority is, they read it, And depending on whatever the policy is, they issue it out. (Subordanate are included)

FYI: This particular signing request just happens to be what's known as a PEM privacy enhanced mail format, which means it is a base 64 ASCII encoded

6. Select next 

7. Select configure

Now we should see a this error out right away. It says all right now Active Directory services installation is incomplete
That's because our root CA doesn't know anything about this CA yet. So what we need to do is we need that root CA to issue a certificate

So we are switching back over to the Root CA now

1. From Server manager. Close the installation window. Then go up to tools and select Certificate Autority. This is known as the certificate authority console 

2. Right Click the root authority and select properties 
- Here's our root CA. Expand this out by right clicking real quick and choose properties. 

3. Select View certificate

- now we have the root certificate, and are viewing, the information. 

- This contains what's known as a certificate path. And in the certification path, it trys to find the heierarchy. It needs to find out who endorsed it.

- Well, it's endorsed by the root. That's what's known as a self signed certificate. 

- It says I'm endorsing you because I'm endorsing you, so that's the first part of the hierarchy.

4. Select Certification Path 

- Now we need to Issue the certificate to the subordinate.

5. Close all open windows and from the left side of the Certficate of authority Console Select the server so its highlighted.

6. Right click and slect All tasks

7. Select new request, then open

- Now its going to ask us where the request is now from file explorere. He happend to save that request on the administrative share of the other server so head over there

- Now the file we are looking for contains Base64 Encoding and will be used in the requset for a certificate

8. Refresh and double click the server

- Now it should ask where do you want to save the certificate

- Naming scheme for example he call's it the sec plus sub CA Cert and will talk about these certificate

So now the Cerificate has been issued and we saved it. Now Switching back to second server/ Subordinate

1. Close any open windows and go up to tools and select Certificate of Authority

2. Right click the subordinate server and import the certificate 

-  it's going to say, hey, do you want to install this certificate? Were going to say yes and it's going to ask me where is that certificate

3. So click yes and file explorer will open. Go to the bottom right and under file type select ALL files. Then head over to
 where you saved the Certification

**********You will see and error...


- This computer doesn't know about the root yet, so it's saying, hey, do you want to install this, an entrust, the root certificate? And we're going to say yes
- After it finsihes installing

4. High Light the server right click and view properties. 

5. Select View Certificate

- Now we should see the Root server we created and the second server(one were on now) undermeath it as a subordinate

At this point it was. It would just be the process of issuing a certificate to the user....

order operations is Me as a user, I'm going to request a certificate and we hope that the certificate authority actually issues that CA that certificate to us.

1. So open a Microsoft management console and I'm hitting control M and we're going to load the,certificates. Console up. And this shows all the local certificate store all the certificates that this user has stored for their account. 

2. Select the Personal Folder. Right click and select generate a new certificate

3. And we're going to choose next and it's going to reach out to Active Directory and it's going to say hey, what are the certificates that you have ca that you have available that I could potentially enroll for?

4. Select User.

5. Select details because remember We didn't take our route offline like we normally would. So I'm going to act like the routes offline. So it's not even going to be out there to listen for requests in issue certificates. 

6. And we're going to choose ok to this and then we're going to choose enroll. And now what it's going to do is it's going to generate that certificate signing request, we won't see it and it's going to hand it over to a CA.

7. And we're going to choose ok to this and then we're going to choose enroll. And now what it's going to do is it's going to generate that certificate signing request, we won't see it and it's going to hand it over to a CA.

- If we wanted to protect the CA, we could add another thing called a registration authority and it would just receive certificate request on our behalf and it would point it over to the CA and request it you know. Kind of like a proxy. That's what a registration authority is

8. double click on new folder object and look at new Certificate

- but in this case what we're doing and you can see we've reached out directly. We don't have a registration authority.

9. We're gonna choose finish and now we have a certificate object or folder if you will here, and you can see that there is a certificate that's issued to my account.

PKI (Public Key Infrastructure)

















+ Enterprise vs. Standalone
+ Roots vs. SubCAs
+ CSPs
+ Key length \(longer=stronger/cpu 
intensive,shorter=weaker\)
+ Hashing Algorithm
+ Common Name (part of the DN, typically FQDN or 
server's hostname/domain and must match, part of X.509 
standard)
+ Validaty Period
- Roots longer
- Subs Shorte
* Installing ADCS
+ Mention we are creating the sub (show cert chain for 
ITProTV\)
+ When installing we will create \(through the wizard\) a 
CSR (encoded text given to the RootCA\)
+ Mention additional roles
- Online Responder \(OCSP\)
- NDES \(SDEP\)
- Certificate Web Enrollment
+ Enterprise vs. Standalone
+ Root vs. Sub
+ Key Length \(shorter for the intermediate\)
+ Create CSR
+ Finish install \(note cert install warning\)
+ From MBRSRV browse to MBRSRV2 via file explore
+ Copy cert req file andopen with Notepad.exe
+ Most cert signing requests are Base-64 encoded PEM 
 format \(more about cert types in a later format\)
+ Use CertAuth to issue certificate
+ Show Cert, mention revoking and show CRL
+ Switch to MBRSRV2, open CertAuth
+ Start CA Service
+ Install certificate on MBRSRV2
+ Show CA Service Active
+ Logout as admin/login as wbryan
+ run mmc.exe then Crtl+M >> add Certificates
+ Generate CSR
+ Logout/ login as admin
+ Launch CA show cert and cert chai
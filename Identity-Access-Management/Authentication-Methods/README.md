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

EX: An example when I log into gmail,I can turn around and go to any other portion of the G suite, whether it's google docs, right, and some of the other options that they have and I don't have to reenter my credentials. That's essentially what Single sign-on is.



Attestation
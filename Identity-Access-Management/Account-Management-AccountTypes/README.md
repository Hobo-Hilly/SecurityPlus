Where would I find these and where would I use them?


Account Types


Administrator
- Full System Access

- Needs to be protected
 Threat Actors
 Standard Users
 Principle of least Privilege
 
 - when you've got things like databases, right. When you've especially with a database and maintaining a database integrity, you've got DBAs, database administrators. That is their sole function, their job is to make sure that those databases maintain integrity. And if you give a standard user access to something like that, they might inadvertently delete an entire column within a database.   


Inside of windows, we have what's called the windows admin. 

- Now, I will tell you, you can say that in Mac, you have kind of that ministry of access, but you also have to remember that Mac in and of itself under the hood is essentially a Nix based system. And when I say about that I mean Unix. Unix, Linux and even Mac is Mac under the hood is really Berkeley software development. It's BSD and that's called the root user, right that is the the super user, if you will, the overall entire system and they have complete access.

Windows Administrator


Standard Users
- Perform most activities 
- Can NOT make system wide changes
- Security vs convienience
Principle of least Privilege


Guest Accounts
- Guest accounts. These are very isolated use cases. A Guest account is an account that has access to the computer, but doesn't have access to other locations within the computer.
- Isolated use cases
    - guest accounts used to log into multiple work stations
    - Shared computers
    - Limited access
    - Use sparingly
    - they can increase your attack surface


Service Accounts

# How does it work?

Service accounts, they are a necessity. All right and what I mean by that is you might have, let's say, for instance, you're inside of a domain environment, an Active Directory, you might have a web application that needs to access a server to grab a piece of data, right? That is a non-human, right? I think they call them NPI, non-person identity. And what it needs is it needs to act and it needs to authenticate, if you will, just like a standard user, but there's no nobody behind the wheel

- Implement managed service accounts 

- You wanna implement things like managed service accounts. 
EX: What I mean by that is in the earlier days, for instance, in Active Directory, you would have to create a service account and then you would have to sign its privileges and permissions and then you would have to manage its password. And a lot of times, it'll blur the line with another account that we'll talk about. 

It becomes a shared account, but the problem is you still have to do password management for it. A managed service account means that the system that you've created that service account on. Again, if it's like a web application that needs access through an API to a specific, let's say database on the back-end, you wanna make sure that it's a managed service account. 

Not one that you just create like a regular user and you give it access to do what it does in the background, and you set it and forget it. Managed service accounts mean that you have a platform that will give you the visibility and will help control the access levels that it has. One of the things that you can help, because you might have to use a service account is remember to remove unnecessary privileges, right? So for instance, let me give you an example. I need this certain service again, like I said, to access that database and pull something down and maybe deliver it on the front-end on a web application to an end user. All right, well, that's good. That should be the only thing that it's allowed to do. There's no reason to make that service, an administrator, right, that service account administrator.

- Even with the service accounts that really don't have the human aspect driving and behind the scenes, make sure that you remove any unnecessary privileges that it might have principle of least privilege. 


Shared Accounts

- non repudiation

- Confidentiality, integrity and availability. But the fourth one here, there is a fourth one here, and it's kinda a cousin to the CIA triad. That's non repudiation. And what that means is that if you remember from like IPsec, our IPsec shows, I wanna make sure that any action that happens, right? Can stay associated with the person or the entity in this case, a service account if we're talking about that. Stays associated with the person that did it.

EX: Companies will have one account that 50 people(multiple people) use so if the account is ever flagged for suspicious activity you have no idea who did it

- Security vs convenience






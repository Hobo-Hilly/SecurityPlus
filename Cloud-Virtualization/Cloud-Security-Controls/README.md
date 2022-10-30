

Resource Policies and Permissions
- a resource policy, in general, and permissions, just remember, what this does is, it defines who has access to the resources within the cloud
- We also could apply the same concept, if you will, to things like servers, right? A web server has to be authorized to access a backend database server too. So, we set resource policies up for that

# What else can it do?
- It also defines what actions can be performed, right? So, think about just something basically like a read permission, right? Can you access, and read, or consume that information? Can an application or a server read and consume that information? Can it make modifications?
- Principal of least privilege
==========================================================================
Network Segmentation and Subnets
    - Public Subnet

NOTE: . And it can get a little difficult because you will see things that are generically called, like an Internet gateway, right? You might hear AWS say an Internet gateway, you might hear Azure, Microsoft, they might say, a web gateway,

# How does it work?
Just understand what a public subnet is, right? That's gonna be no different than let's say if we have a DMZ, and we allow somebody public access into our web servers, right? That's a public subnet. 

But then we also, so, for instance, we have the Internet out here, but I also want you to know this concept of what's known as a secure web gateway, all right? Again, sometimes you might hear it just generically called an Internet gateway. 

I know that's what AWS, if you look at their documentation, they just generically say, an Internet gateway, right? A web gateway is no different than if you had this on-prem, right? 

You wanna make sure you can do things like DNS filtering, right? We don't want you to go into certain locations, we have a list of DNS names that we know have either been hijacked or they're malicious, right? 

So, we wanna drop all the requests and not allow you to go to those areas, to things like URL filtering, intrusion prevention, all can be performed by the web gateway,
---------------------------------------------------------------------------------------------------------

    - Private Subnet

# How does it work?
- private subnets. And I want you to think of the private subnets, it's kinda what we would think about if our LAN environment, right? Our LAN environment, inside of our internal network. 

- We don't want public-facing access into the private subnets. All still within the cloud environment

- we have to allow our web servers, if you will, to communicate with backend database servers. And we certainly don't want public-facing equipment to allow people to access those backend servers. And that's where the VPC is. 
 
- The VPC endpoint allows, essentially, these web servers to communicate with the databases that they need in order to run whatever web application they are. But what ends up happening is, it doesn't allow public access

- Private subnet back-facing instances are blocked.  if it happens to be the web server, then the web servers will be allowed to communicate through the VPC endpoint here.

CASB (Cloud Access Security Broker)
- the major thing that it really does, is it allows you to have visibility to who and what and where is accessing your cloud based resources,

- When you need visibility into what and who, again, is accessing these resources. That's essentially where the cloud access security broker, commonly called a CASB comes in.


Storage Concideration
Our storage needs to be secure, just like it would be the hard drives in our computer need to be. So, need to be secured. 
# So, how do we do that?

Permissions
- Proncipal of least privilege

Encryptions
- Make sure information is encrypted

Replication
- You might want to ensure that you have things like geographically dispersed locations, where you store that information. So that if you need to, you can always replicate to another location. For high availability

Geographical consideration
- What is one of your locations is on the west coast of the united states on a san andreas fault line ..


Compute Considerations
- Host security
- Application security
- Network Security
- Principle of least priviledge

Secret Management
- API Keys
- Certificates
- SSH Keys
- Passwords

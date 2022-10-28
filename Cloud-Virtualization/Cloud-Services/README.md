# Summary
what is cloud in general, right? That's those computing servers, computing infrastructure, somebody else's network. And we pay a subscription for those services. Well, now, we gotta define what are the actual services that are available. 
=============================================================================================================

SaaS (Software As A Service)
- G Suite, Office 365, these are examples of software as a service.
- Gmail
- Hotmail
- Salesforce

You pay them to use their infrastructure and their software based platform. That is software as a service.
It just means that somebody behind the scenes is providing all the infrastructure to run the application.

PaaS(Platform As A Service)
- Now what we're talking about is a runtime environment that's provided basically on cloud infrastructure.

# How does it work?
Lets say you need a test environment to code in C++, Java, php, ruby. 

- You would have to build up all the infrastructure, install the operating system, make sure all of your updates were done. So you had the latest and greatest. And then you'd have to configure and peak and tweak that operating system to even start working.

- With Infrastructure as a Service you can spin up any instance of an environment you would like in moments and blow it all away just as quickly. (Go ahead and cue developers wheeping in 5 4 3 ...) hahah

- So you don't have to acquire all of the technologies, build all the technologies. Just to run that type of tech, that runtime environment to be able to do the coding. 

# How was it back in the day?
EX:
Yeah, it is really great because instead of them having to call systems administrators and say, hey, I need a server, I need it to run Windows, I need this, this and this, and they give you this laundry list and you run off and do a bunch of work. Just go. Here's access, just spin up whatever you need, and you're good to go.

IaaS(Infrastructure as a Service)
# How does it work?
EX:
In the cloud, we can use things like virtual servers, we could use things like virtual firewalls. We could use things like network adapters, storage services. Well, that's where all of your infrastructure as a service comes in. 
Basically, it allows the customer the ability to provision processing, storage, networks. All of the fundamental computing technologies that we need really to run our IT infrastructure,

NOTE: These are the 3 most popular/used Cloud services out there. NOT the only... Very long list we are not listing

XaaS(Anything As A Service) **Yes there are two different terms with the same acronym
- CaaS(Container as a Service)/ CaaS (Code as a Service)

- STaaS(Storage as a Service)
# Can I get Storage as a Service inside of Infrastucture as a Service?
 Yes

- DaaS(Desktop as a Service) i.e. Virtual machines 

# Tips and Tricks using Desktop as a Service
- Using  DaaS is a GREAT way to manage viruses for a network. IF you can get the work production services(Power Storage Operating system, All work Applications etc..) out of it THEN you can deploy DaaS with in your network and whenever someone gets a viruses or mucks something up you can just reboot to a brand new install. Since resources are kept on a disk or resource servers this is a very practical application idea

SECaaS(Security as a Service) 
- We have a third party security provider that is going to manage and offer you these security services.

DBaaS(Databases as a Service) 


# Who is responsible for all of this?

Management Responsibilities
- There are 4 catagories with 9 metrics
    Application
    Data
    Runtime
    Middleware
    Operating System
    Virtulization
    Servers
    Storage
    Networking

KEY:   ' C ' = Customer responsibility 
       ' P ' = Provider Responsibility

|On-Premise|                
    Application             C         
    Data                    C
    Runtime                 C
    Middleware              C
    Operating System        C
    Virtulization           C
    Servers                 C
    Storage                 C
    Networking              C

  ========================================

  |IaaS| (Infrastructure as a Service)

    Application             C         
    Data                    C
    Runtime                 C
    Middleware              C
    Operating System        C
    Virtulization           P
    Servers                 P
    Storage                 P
    Networking              P

========================================
PaaS Platform as a Service

NOTE: Here we see responsibility lessen. i.e. I want the runtime environment. But I don't want to have to worry about the middleware. 
I just want to be able to start developing my software. I'm still responsible for the data, the code that we're using, and the application that that code is basically gonna create. I'm still responsible as the customer.

|PaaS| (Platform as a Service)

    Application             C         
    Data                    C
    Runtime                 P
    Middleware              P
    Operating System        P
    Virtulization           P
    Servers                 P
    Storage                 P
    Networking              P

=============================================

|SaaS| (Software as a Service)  

    Application             P         
    Data                    P
    Runtime                 P
    Middleware              P
    Operating System        P
    Virtulization           P
    Servers                 P
    Storage                 P
    Networking              P

You pay a subscription and the Provider takes care of EVERYTHING

EX: itpro.tv
    TryHackMe
    HackTheBox
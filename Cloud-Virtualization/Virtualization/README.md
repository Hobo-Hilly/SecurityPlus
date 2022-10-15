
Virutalization

- Virtualization is a way that we can essentially create a logical representation of computing technologies. 

- It's multiple software based representations. Or instances, of various computing technologies that we use inside of computers today.
Host Machines

- And what this gives us the ability to do is allocate those resources that a physical device has much more efficiently.

- Virtualization allows us to create and run multiple operating systems inside of a single operating system.

EX:
- Examples of the technologies that we can virtualize these logical representation or software based representations, for instance, are things like computers or machines, if you will and the operating system.

- So keep in mind that an operating system still needs to run on a piece of hardware. The piece of hardware that we are running it on is actually nothing more than a folder and again, it's a piece of software that to that operating system looks like it is a physical machine.

- Now there are other devices as well that we can virtualize too, things like for instance, network adapters all right? I want you to understand that all of these virtualized devices follow the same rules that any other computing technology follow.

FYI: The Four Horsemen of computing, CPU / Memory(RAM),Storage(Hard Drive,SSD), NIC (Network adapter)


Host Machine
- The host machines are the actual physical machines that you're gonna run all these virtualized instance or software based instances on.
    Physical Devices
    Controls guests
    Allocation of resources


Guest Machines
Virtual Machines (VM's)
- These are those logical representations if you will that are running these instances that we can virtualize and run within that host machine. 

- Guest machines is that they're isolated from the host. (There is a way to break this Isolation)
- Function like Physical Machine
    i.e. They require the 4 horsemen

==================================================================================================================

Hypervisors at a glance

| App-1| |App-2|                    | App-1| |App-2|                   | App-1| |App-2|        1. Apps BurpSuite - File Explorer - GIMP 


|COMPUTER-Kali-Linux|               |COMPUTER-Windows-8|                |COMPUTER-CENT-OS|     2. OS's


| Software for the HYPERVISOR in USE  - - - - - - - - - - - - - - - - - - - - - - - - - - |
|                                                                                         |    3. HYPERVISOR Software
|                                                                                         |


| CPU     /     MEMORY(RAM)     /      Storage(SSD)   /      NIC(Network Interface Card)  |    4. Host machines actual resources




Type 1 Hypervisor
# How does it work?
- Hypervisor set communicates back down to the hardware that's running on the host and says here you go and it makes sure that these device all of these virtual machines have the resources that they need, basically to function

- The hypervisor literally sits and runs right on the physical device itself. AKA: Bare metal

- 1 hypervisor. Now the type 1 hypervisor is more efficient in managing virtual machines, it's much more scalable,

- So this is what you're gonna see inside of your cloud based technologies. When you go out to something like Amazon or Azure, if you will, and you say, I need a virtual machine and you spin it up. You're spitting it up on a Type 1 Hypervisor.



Type 2 Hypervisor
- Now, within that on top of that layer is where the hypervisor runs and again, it runs more just like an application would
Hypervisors at a glance

| App-1| |App-2|                    | App-1| |App-2|                   | App-1| |App-2|        1. Apps BurpSuite - File Explorer - GIMP 


|COMPUTER-Kali-Linux|               |COMPUTER-Windows-8|                |COMPUTER-CENT-OS|     2. OS's


| Software for the HYPERVISOR in USE  - - - - - - - - - - - - - - - - - - - - - - - - - - |
|                                                                                         |    3. HYPERVISOR Software
|                                                                                         |

|                                                                                         |
| APPLE             LINUX               WINDOWNS        Operating system                  |    4. OS we want to spin up and work with 
|                                                                                         |


| CPU     /     MEMORY(RAM)     /      Storage(SSD)   /      NIC(Network Interface Card)  |    5. Host machines actual resources


=======================================================================================================================================

There is a lot of communication that's going on, right? So this hypervisor is sitting on top of the operating system and the operating system is controlling below it, all of the hardware. So there's a lot of communication that has to go on for this type of hypervisor to work and that's why this isn't a scalable solution


It is perfect for testing stuff that's what we do to test our machines out and test technologies 




Virtual Network Adapters ( AKA Virtual NICs)

# How does it work?
So basically within the host machine, you have your guests right?. And our guest and we've got I'm using both terms now VMs 1, 2, 3 and 4 well they need to communicate. Well your host adapter inside of the host machine can be allocated through the hypervisor to each one of these guests machines and to the guest machines they think it's their physical network adapter, even though we know really it's just a software abstraction of that the host physical adapter and it communicates no different. 

                                                     Virtual NIC-1             Guest(VM1)
* * * * * * * *
*   HOST      *    # # # # # # # # # #               Virtual NIC-2            Guest(VM2)
*  MACHINE    *    # HOST's(Physical) #                  
*             *    #   NIC (Adapter) #               Virtual NIC-3            Guest(VM3)
*             *    # # # # # # # # # # 
* * * * * * * *                                       Virtual NIC-4           Guest(VM4)

======================================================================================================================================
FYI: Inside of that host machine when these computer these guest machines wanna talk again they have to follow the same rules of TCP/IP.


Virtual Networks
- A virtual switch is really, basically, a virtualized form of what we see is a physical switch that really runs in software inside of the host machine.
- Called a 'V Switch' Virtual Switch
- this allows us to do something known as virtual networking.
- So, the host machine creates this virtualized switch and what happens is the communication between the VMs go into that virtualized switch
- This first switch if they only can talk between each other that's more of an internal switch and that's where all communications between the VMs you get true what's known as isolation. 




                                                     Virtual NIC-1             Guest(VM1)
* * * * * * * *
*   HOST      *    # # # # # # # # # #               Virtual NIC-2            Guest(VM2)
*  MACHINE    *    #  Virtual Switch #                  
*             *    #                 #               Virtual NIC-3            Guest(VM3)
*             *    # # # # # # # # # # 
* * * * * * * *                                       Virtual NIC-4           Guest(VM4)

======================================================================================================================================

# Summary 
- It boils down to 3 options. VM to VM, or in this case, we can do VM to host , VM to LAN
- And now that allows every one of these virtual machines to act like it's a physical device plugged into a physical network talking to your local area network and really and beyond. You can talk to the internet


|              |                               # # # # # # # # # #
| Host Machine | XX ====== NO COMMS ======= XX # Virtual Switch  #
|              |                               # # # # # # # # # #
                                                ^^
                                                ||
                                                ||
                                                ||
                                                \/
| VM-1  |                    | VM-2   |                    | VM-3  |                    |  VM-4 |
| VNIC-1|    <---------->    | VNIC-2 |   <------------>   | VNIC-3|    <---------->    | VNIC-4|
                 SUCCESS                        COMMS                   Amoungst themselves but NO WHERE ELSE

================================================================================================================================

- This first switch if they only can talk between each other that's more of an internal switch and that's where all communications between the VMs you get true what's known as isolation. 


VM to Host

- When you start doing VM to host remember I told you you have the isolation and whatever affects the guest doesn't necessarily affect the host. Here's where you're opening that pipeline. Now you're saying, hey, communicate with a host, just like it's another machine within the network
SECOND TYPE OF Vswitch

VM to Host
# How does it work?

EX:


|              |                               # # # # # # # # # #
| Host Machine | <> ====== SUCCESS =======<>   # Virtual Switch  #
|              |                               # # # # # # # # # #
                                                ^^
                                                ||
                                                ||
                                                ||
                                                \/
| VM-1  |                    | VM-2   |                    | VM-3  |                    |  VM-4 |
| VNIC-1|    <---------->    | VNIC-2 |   <------------>   | VNIC-3|    <---------->    | VNIC-4|
                 SUCCESS                        COMMS           Between the Virtual machines AND the HOST Machine
=====================================================================================================================================


THIRD type of Virtual Switch
VM to LAN

# How does it work?

- The 3rd one allows every one of these virtual machines to act like it's a physical device plugged into a physical network talking to your local area network and really and beyond. You can talk to the internet and now at that that point, you really got to be careful cuz anything that affects the guest affects the host machine and it also affects the rest of the network too.

EX:                                                                     
                                                                                - - - - - - - - - - - - - - - - - - - - 
                                                                                -      LAN                             -
|              |                               # # # # # # # # # #              - Local Area Network                   -
| Host Machine | <> ====== SUCCESS =======<>   # Virtual Switch  # <=========>  - (your internal real physcal netwrok) -
|              |                               # # # # # # # # # #              - - - - - - - - - - - - - - - - - - -  -
                                                ^^                  SUCCESSFUL COMMS ALL AROUND!!
                                                ||
                                                ||
                                                ||
                                                \/
| VM-1  |                    | VM-2   |                    | VM-3  |                    |  VM-4 |
| VNIC-1|    <---------->    | VNIC-2 |   <------------>   | VNIC-3|    <---------->    | VNIC-4|
                 SUCCESS                        COMMS           Between the Virtual machines AND the HOST Machine AND The LAN
=====================================================================================================================================


Network Functions Virtualization (NFV)

All right, when I want to create a virtualized machine, or VM, right, I've got to configure the host machine. I've got to create the virtual machine. And then from there, I've got to allocate the resources. We've got to determine how much memory it has, how much hard drive it's going to be used, and what the network adapter is. And again, you can kind of see the redundancy, right? I got to determine what the operating system is. What is it running? Is it running Linux or something like that. Notice Mac isn't not here. Mac is only legally virtualized on Mac platform.

CONTAINERS

# How does it work?
- You don't have to worry about the operating system. I don't have to worry about the hardware. I don't have to worry about the virtual machine. And we can have more than one running. And we can use this. A lot of times they use this for development because what it does is it says, I don't care what the underlying hardware is. I just need some kind of functionality. Let's say in development, I need to run some kind of programming language. But I don't wanna worry about all of that individual stuff. Well, that's where the containers come in


-  And they're the isolated instances that you don't have to worry about setting up all of that infrastructure in order to say, let's say run your C++ programming right? Now I pulled down a container. It's got all that prepared for me. And now I can just go to work and I can start doing the development, not me, I could spell C++ on a good day. I'm not a developer. But this definitely takes a lot of the burden, if you will, the operation side of things like development.

Container Engines
- Docker
- Oracle Cloud Infrastructure
- Canonical LXD
- Amazon Elastic


CONSIDERATIONS 

- Virtualization
    Better resource utilization
    Multiple software environments
    scalable
- Virtual Machines
    isolated software environments
    Requires Configuration
    Needs to be SECURED like any other device

- Containers
    Ease of configuration
    less overhead
    Platform independent (You only need to container vendor and thats all)
    Portability Fire it up and blow it out

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




Virtual Network Adapters

Virtual Networks

Network Functions Virtualization (NFV)


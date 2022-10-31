# This is the first episode of a new section in the the Security+ course at Itpro.tv

NOTE: Redundancy just means having more than one. Redundancy is how we achieve our Fault Tolerance

Fault tolerance is just the ability for any system whether it be software or hardware, to withstand some kind of failure, of one or maybe even more components within a system.
EX:

Storage Devices
- We want the ability to have more than one device so that if that first device does fail, we still have access to our data.

Servers
- If one server fails, we wanna have other servers available that can take over those roles, those services that are being provided to the network, that our users, other components and other devices are consuming

EX:
- So for instance inside of active directory, we have typically more than one domain controller. Because remembering directory services as being a blueprint of all the objects on your network, imagine if you only have one of those domain controllers, and that domain controller goes down. Well you no longer have access to that blueprint and more importantly, you no longer have access to those objects

- So we use things like for instance, replication inside of active directory. And replication doesn't have to - just be active directory, that's just taking one data set, and basically making a copy across to another component, right? In active directory, we call that active directory replication

- And that's because we want; if one of those devices fails without domain controllers more specifically, we still wanna have access to all of the services and objects within our networks.

- We also do this with things like network adaptors

Network devices
- Setting up a redundant link. The link is the gateway connection to the service provider. You would want to set up more then one link out to your service provider. So that if one link fails you will have a back up.

- Setting up more than ONE service provider. If a service provider fails, wipping out the two links you set up earlier. You will want to set up a second service provider with multiple links as well

High Availability
- we're really talking about is a rating that expresses how closely a system gets to 100% uptime.

EX: Chart from class on the performance metrics dictating High Performance

| Availability |    |  Downtime |    |  Downtime |     |  Downtime |       |  Downtime    |
|              |    | (per year)|    |(per month)|     | (per week)|       | (per day)    | 

1. 99.0%(two 9s)       3.65 days        7.31 hours        1.68 hours          14.4 minutes  (Some Money)

2. 99.0%(three 9s)     8.77 hours       43.83 minutes     10.08 minutes       1.44 minutes  (More Money)

3. 99.0%(four 9s)      52.6 minutes     4.38 minutes      1.01 minutes        8.64 seconds (A lot of money)

4. 99.0%(five 9s)      5.25 minutes     26.3 seconds      6.05 seconds        864 ms (Too much money)

RAID (Redundant Array of Independent Disks)

RAID 0 - Striping
- ZERO redundancy
- you can have up to 32 disks
# How does it work?
EX:
 RAID 0 is actually called block level striping. And that because a larger portion of your data is broken down in the 64 kilobytes well that's the default, 64 kilobytes chunk. And then each write is written into both of the across both of these drives, each individual chunk. So, think about writes, okay. We got write one, all right? The next write is actually gonna be written to the second disk.

* This is an example using 2 disks

W(X) = Write number(1,2,3...nth)

Disk#1     Disk#2
W1          W2
W3          W4
W5          W6
W7          W8

# What happens of one disk fails?

- You do NOT have all your information. That's why they call this RAID level 0 because it really doesn't offer redundancy. But what it does is it gives you a performance increase.

# How does it give a performance boost?

- You've got portions of your data being written by two devices and being read back. I don't have to read sequentially all of my information off of a single disk,

- You don't get the fault tolerance. And there's no storage overhead. And what I mean by that is if you have a one terabyte disk in Disk 1, one terabyte and Disk 2 no overhead, that means you have a two terabyte RAID array.


RAID 1 - Block Level Mirroring

- When we write to 1 disc notice what happens on Disk 2, all right? An identical copy is written to Disk 2.
EX:
* This is an example using 2 disks

W(X) = Write number(1,2,3...nth)

Disk#1     Disk#2
W1          W1
W2          W2
W3          W3
W4          W4

# What if one disk fails ?
- We still have one copy of ALL of our information
- We have identical copies on Disk 1 and Disk 2. That's mirroring.
- There's no performance increase actually take a little bit of a performance hit because if you think about it, I've got to write something. That same thing twice. It's gonna slow things down.

- There is a 50% storage overhead on this array
- If you say Disk 1 is one terabyte, Disk 2 is two terabytes. You take the two they There, right? 50% overhead means I need to just completely eliminate in my mind one of those Terabytes, right? So I only have a one Terabyte array.




RAID 5 ( Block level stripping w/ distributed parity)
Setup
- Minimum 3 disks

EX:
* This is an example using 3 disks

W(X) = Write number(1,2,3...nth)
PB = Parity Bit (Collection of all data on that stripe)

Disk#1     Disk#2   Disk#3
W1          W2        PB
W3          PB        W4
PB          W5        W6
W7          W8        PB

# What happens if one disk fails?
- The RAID controller knows what data is missing. We're still operational because of the parity bit
- When you put the new disk in the old disks place, what happens is it can rebuild that RAID array and it can become fully operational. 
* Performance incread && Fault Tolerance
 You can only lose ONE disk in this setup

# How to calculate overhead
- To figure out what the storage capacity is of this, just take one of the disks within the array and subtract it. 
EX:
If you have Three One TB Drives. You would subtract one drive (One TB in this case) and you would have a Two TB array set up. Becuase one drive worth of storage in total would be the parity bit


RAID 10 (AKA RAID 0 + 1) yes it is supposed to be beackwards
- You need 4 Disks minimum

EX:
* This is an example using 4 disks

W(X) = Write number(1,2,3...nth)
PB = Parity Bit (Collection of all data on that stripe)


        STRIP # 1                           STRIP # 2
Disk#1       Disk#2                      Disk#3    Disk#4
W1            W2                          W1        W2
W3            W4        Mirrored          W3        W4
W5            W6        ======>           W5        W6
W7            W8                          W7        W8

-  Since there's no parity information to calculate, we do get a performance increase, we do get the redundancy


SAN Storage Area Networks
# What is it?
- A storage array is just a big collection of disk drives
- a storage area network is really just a collection of technologies connected to a large storage array. Typically using Fibre Channel, it's a very expandable and very fast type of not only networking communication. But storage technology that are inside of our enterprise based networks. But that's a SAN, as well as the concept of multi pathing

NIC Teaming

- you're taking multiple network interface, cards and kind of making them work together. 
Clusters and Load Balancers

- Anytime you have two NICs, you call it multihomed. But if they can work together, it's just called NIC teaming.

EX:
We've got our server here and we've got our switch. And we've got two NICs, and each of these NICs is connected into the switch.

# Redundancy
- If you wanted to set these up for redundancy you would have two seperate connections to the one switch. That way if one failed the other would still be active.

# Performance 
- You could set the two NICs up to combind as one super connection. If you have two 10GB connection you could combind them into one 20GB connection for high performance

Clusters and Load Balancers
# What are they?
A server cluster typically is this grouping of multiple servers that we can basically distribute the workload across. Let's say you have a web application, And you've got a lot of people making web requests. We can pool, multiple servers together to distribute that workload.

# How does it work?
So we've got cluster 1, we've got maybe cluster 2. Think about this, and we've got a lot of web requests that are coming in over the internet. We wanna ensure that we have an even distribution of those web requests across all of our server infrastructure here.

And as that scales up, right, one of our clusters, especially if it's a single server, can start to become a little bit overwhelmed. So if we put something like the load balancer in the way, then when those web requests come in. The load balancer can distribute that load across all of the different servers within the Cloud.

# Technically...
1. You have a cluster manager that is really distributing the workload on the cluster itself
2. But the load balancer distributes the incoming request to the appropriate location, the endpoint
*  A lot of times, this is done behind your LAN
* If you're using Cloud based technologies and you have a web application that's being serviced up in the Cloud. Chances are they've got a load balancer in the background. 


Power Redundancy

Dual PSUs (Power Supply)
- The other one still working and the device, whether it's a server, or whether it's a router if you will. Maybe a network switch, is still operational and functional.

UPS(Uninterupptible Power Supply)
-  And what that does is kind of like a battery backup if you will. And if your power to your building is lost, Then what this allows you to do is not to maintain operations. 

- UPSs are NOT to maintain operations. But when the power goes off, they allow you to perform what's known as a graceful shutdown. 

- And a graceful shutdown means your server in this case shuts down, just like you going in there and telling the operating system to shut down. So all the rights that are happening to your data don't get corrupted.

*  if you want a more redundancy is you take one of these power adapters and you plug it into one power grid. The other power adapter you plug into another power grid and now you've got two grid redundancies within your data center as well. 

Managed PDUs (Power Distribution Units)

- There's logic built into them that you can do remote monitoring of these devices as well. You can remote into them through a web API and you can see what is the power state of the devices within your network. So those are called managed Power Distribution Units, managed PDU's

Generators
- Now, keep in mind you're not gonna use a gas generator on any of your electrical equipment. Electrical equipment runs off a direct current. It doesn't do well with fluctuations in your power so it's not running off of something like a gasoline generator.

- It'll be running on diesel because yeah, when that diesel generator comes online it bogs down a little bit. But once it comes back up, it offers that clean power that we need to run all of our computer circuitry. 
Resources and Memory
# The 4 horsemen
- CPU
- Network Adapter/Card
- RAM
- Memory


 Four Horsemen of computing, right? Because, well, they can act like the Four Horsemen as well if you don't have them right? 
 
 That's the CPU we talk about memory, we talk about network and we talk about storage right. 
 
 
 When you don't have any one of these, your computing machine system. 
 Doesn't matter if it's a server, really doesn't matter if it's even a little embedded system. We're gonna have problems, right, either services aren't gonna be available that should be available running contrary to the CIA confidentiality, integrity. And availability were going to potentially corrupt information, right, if we have memory over overflows a buffer overflows and stuff. That's the integrity part, and then you could potentially see things like just general system crashes, so there's a lot of different reasons why this might happen,


Resource Exhaustion
''

EX: For instance of a DHCP server. There's not a lot of activity going on a DHCP server, it hands out its options, and it waits seven days to talk to you again, right, so a lot of times unless, you're in a very large infrastructure. Your DHCP server shouldn't be utilizing a lot of resources right now.

- Now you have to have basslines because if I say the same thing about a back end database server, I might expect to see lots of CPU, lots of memory, lots of storage IO, network activity. Because applications are constantly talking to that typically through your user interaction. 

- So you also have to have that baseline, but those are the resources that were talking, other ones that not just resource exhaustion, other things like memory, memory leaks as well.

''


Memory Leak
# What is it? 
 
 - Now memory leaks that can happen that might not even be an attack, remember, not everything has to be an attack to run contrary to the principles of CIA confidentiality, integrity and availability. 

 - So an application that's maybe had some bad coding. And again, it may be a bug in the system and bug in the coding could start to chew up all of your memory so no resource exhaustion. The four resources that were talking about and no a little bit about what a memory leak is. A memory leak is just one application is online and what I mean by online, it's actively running in runtime and it just keeps consuming memory.

- A memory leak is just one application is online and what I mean by online, it's actively running in runtime and it just keeps consuming 
memory.

- Once again I open Chrome and I have an 8 gig machine and I've got 2 gigs left and I've only got one. 

- One simple application open that might be an indicator of maybe just a bad application, but it might also be an indication of things    like a buffer overflow attack, right? So that could be indicators of compromise as well. 

 Dan tee up demo (So if we think there is resource exhaustion, what would we see?)
''


Driver Manipulation
# What is it?
''
When we talk about driver manipulation, it's typically a very sophisticated attack. This isn't something that happens from your script kitties. It's typically modification of the functionality of a driver. And like I said, it has a legitimate purpose. But in the context of what we're talking about here, it's the exploitation of a legitimate process.
''
- Shimming
EX: We used to do is we would support legacy Windows applications. And we come into a new operating system, but we still have to image an older machine while those drivers might not be functional and application might not be functional. So what we need to do is we need to make slight modifications, little shims, create these little small libraries that perform some kinda action and a lot of times, it's done for backwards compatibility. 

Supporting some kind of legacy API that again, they do it in drivers sometimes to even talk to legacy-based hardware. That means you got a new system that doesn't really talk to the old, old device. So what they do is they put a small little bit of code in there and it like a door shim, it shims and it straightens it up and that shim performs all the functions that the driver would be natively performing but it's done for backwards compatibility. 

# Explanation
So it's a stopgap. I've got this old machine, I needed to do this new thing. It doesn't support that.
SO We'll just get a bigger band aid on it and there you go. Hey, it works. >> That's right, until somebody exploits it...




- Refactoring

Integer Overflow

Race Condition

Processes could be trying to access the same resource (think to the old days of IRQs)

Show System Information and IRQs (What happens to two processes trying to use the same IRQ?)

Demo - Show System Information (IRQs and memory assignments)

TOC/TOU

Pointer/object dereference

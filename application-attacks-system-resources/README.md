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


# Summary:  
There's also an avenue that it can be exploitable of what we used to do is we used to use some of the Windows deployment tools

And you would create these shims and you could pick like all a cart. What it was? What was the old device that you needed to support? And they would have a library of shims for backwards compatibility on things that they weren't gonna bundle in the new operating system code. And you could pick them up. 

You could bundle them and you can put him in the operating system. And now we have the functionality that we want. In this case, it's exploited, you're gonna get the functionality that the attacker wants, so we definitely have to be aware of that, so that's essentially shimming then.

- Refactoring
# What is it?
Refactoring is something where you're modifying the internal code.
- What can be used in systems administration? A lot of times requiring elevated privileges, if attackers can get into it via those elevated privileges, they can also modify internal code and unfortunately, what happens is the behavior may not change. 

- However, it might change and again legitimate reasons to do that are for design improvement. If you're doing a little bit of code analysis and you're saying, hey, we wanna clean up the code a little bit, that might be something that you're doing it for legitimate purposes. 

- However, like with shimming, if it's somebody that's doing it for malicious reasons, they could modify that code to perform their own functionality.

-  Remember that drivers and here's the key takeaway with a driver manipulation attack anyways, know what drivers do. Remember, they take the high level programming language and they translate it into something that machine specific language that the hardware can understand, and that's how the communication goes. 

- That's a very privileged thing. In Windows, it's the Windows kernel that it does this inside of Linux. It's the Linux kernel that does this, so the kernel whether you're talking about NT kernel, whether you're talking about the Linux kernel, has privileged access to the hardware, the attacker could slipstream something in there that can exploit that privilege. 

- Now we got things like privilege escalation attacks that we could potentially take over control of the computer in general.
''


Integer Overflow
# What is it?
- Think of a integer overflows, I think of any kind of memory, look at memory in general, right? Memory is a location and it has a finite space that is defined right, well, once that space is defined, if you put more information than was expected, that information is going to overflow into unchecked portions of memory and could cause a problem. 

# how does it work?

- A basic example where something like that might happen, right? So let's take your basic binary, just go back to binary, right? I've got 2 decimal values that we look and we see it calculators and stuff. We should be able to add them up, but I want you to think about the binary that it takes to store those two decimal values, 155,101 right there 8 bit values. 

- Let's say that that memory location is only allocated for 8 bits, well, if I had 155 and 101, I get 256 decimal number. Doesn't seem to be a problem, but look what the binary value is of 256, it's 9 bits. So if I have an 8 bit location, but I have 9 bits that I'm sending to it, what happens to the other bit? 

- Well, potentially whatever the attacker wants to happen so it could spill you over to uncheck portions of memory, potentially giving you access to those locations and the ability to run the code.


Race Condition
# What is it?
- So race conditions, that's this thing where what you end up having is you have a couple of processes. You have maybe two processes operating inside of a Windows system, and let me show you what I mean. So we've got a process that's running, right, we've got process one and process two. 

- Now, according to whatever the programmer's design was, process one was supposed to execute, then the results of process one are taken by process two and executed.

-  If you've ever worked in a Linux environment, I think one of the shows you mentioned this, Dan, when we're talking about things like command injection. You know how in a command prompt, I guess it could be command prompt, it could be a terminal in a bash shell, right. Linux commands can be chained together, you can pipe them through and take the input from this command, pipe it out to that output out to another command. Think about that, think about you creating that pipeline, all right. Now, think about your application. It's doing a sequential processing, it says, I take the output from process one and I input that into process two and it's finished. That's the way it's supposed to run. 

- However, in race conditions, what ends up happening is maybe process one runs and process two says, I'm not waiting for you, I don't care what your results are, I'm gonna go ahead and run. So we get some kind of failure, all right. Or maybe process one and process two decide, yeah, we're gonna run at the same time and we get some kind of error, all right, some kind of failure.


Processes could be trying to access the same resource (think to the old days of IRQs)

Show System Information and IRQs (What happens to two processes trying to use the same IRQ?)

Demo - Show System Information (IRQs and memory assignments)


TOC/TOU (pronounced* Tok/Two)
- Time of Check / Time of Use

# What is it?
''
- So TOC TOU, time of check time of use, all right. This happens a lot of times when you have shared assets, shared resources. So think about something where you're doing file sharing. This young lady here, she checks the file at 8:30 AM, right. That st is just short for me saying state one, that's the state that it's in when she checks it, all right. 

- Now this gentleman shared resource, more than one person working with it, he decides that at 8:35 AM he's gonna modify it. Now it's in state two. Remember that the young lady when she was checking it at first she had believed that it was in this current state. And then she makes a modification to it, and we have an inconsistency. That's running contrary to integrity in the CIA triad, right. Now, we've got some kind of file corruption, data corruption, and IT is information technology. And if your information isn't in the state that you expect it, you've got an integrity problem here. So that's time of check, time of use, happens a lot in your shared resources.


Pointer/object dereference
# What is it?
''
 It's common in some programming languages, in the practices, that they use a pointer, if you will, to locate a memory location, locate that memory, that memory address and find that data. But then once that data's done, they de-reference that location in memory so we don't get memory leaks right, and another Ram could use that information, but if they dereference it and leave it open, well then attacker might be able to put their information in there.

 # How does it work?

 - I heard one kind of attack was called use after free, a use after free vulnerability where memory was it was released but the container was still there and if they find that in the code they can potentially allow access into memory. And it could be some kind of code execution on certain occasions or worst case scenario could be a denial of service and it causes the entire application to crash and then by proxy any service or maybe server even that it's running on. 
  
- Yeah, it can get a little janky in there when you're messing around with instructions and what goes where and what are you supposed to run? If you can get some access into that, you can access one of these dereference memory areas. You slip your own code and then go hey, yeah, run that, do this and it goes, bet. and your off to the races 
  
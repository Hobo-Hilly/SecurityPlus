Last known good
# How does it work?
- If your computer starts freaking out you can try booting to the Last Known Good configuration. And maybe it will be good enough to get us back to where we want to be.
- Last Known Good is only going to be useful if you haven't successfully logged into the machine after the problem arises

Revert to known state
- This is kinda similar to the Last Known Good,
- This is more for Windows
- This can be seen outside of windows.
    When baselines are taken for a network/server/machine
    you have configuration baselines and I make changes to an operating system that for better or worse don't go the way I really wanted to wanted them to. I wanted to be able to revert to an earlier configuration state

* The Last Known good only effect the BOOT process
- Baselines
- Desired State Configuration
- Snapshots
    Point in time configuration states
    System restore

Live Boot Media

Linux Live boot
- This is what we call a memory resonant operating system
 Just means we are not downloading the OS we are putting it onto some kind of media insted
- USB/ Removable media with OSes downloaded on them
- We are able to do thie by putting the Operating Systems onto some kind of media. And sticking the media into the machine. Then loading the OS into the machines RAM and running in completely from RAM.

# Summary of Live Boot
- It allows you the ability to create a Linux live CD or USB media that you can plug into the machine, you can boot to that. And you're not affecting the internal hard drive and it gives you a chance to let's say take it for a test drive, 

- Recovery environments
Or if you've been inside of something like the Windows Recovery Environment, that is a classic example of a set of tools that runs inside of RAM that's never applied to the hard drive and allows you to fix the operating system should something go wrong,


# Whats the difference between online and offline?
- Online is when you are working with an operating system that is running in and out of the disk and in RAM at the same time.

- Offline means the hard drive that's in the system is exactly that it's offline. You're not writing to it.

# Why would an offline antivirus software come in handy?
- Rootkits!! 
Offline antivirus

# How does it work?

Rootkits are very nasty little pieces of malware. And why is that? Well, we've talked about it, they sit way down in the abstract subsystem of the computer. And sometimes the operating system isn't even aware that they're there and much more. 

The antivirus software that's working with it online doesn't even know it's there. So you take the operating system, the image if you will, offline, you put in one of these live offline antivirus. 

CDs, USB drives if you will, and you can run antivirus solution against the known locations on the hard drive where these little pieces of malware sit. Another classic example on how you can get certain types of malware off of your system. 


Media

- CD/DVDs

- USB

- PXE boot (AKA Pixie Boot) Pre execution Environment
Pixie boot is the pre execution environment and it's a firmware functionality on the network adapter itself

# How does it work?
And what we can do is we can put one of these live boot medias up on a server, right, and we can TFTP and pull that image down if you will to the local computer and run it in order to do some kind of recovery on it.

EX:

I've actually made a bootable Windows Recovery Environment that's placed on a server and Pixie boot to it and pull it down to the machine. And now I'm in the Recovery Environment. And if I need to, I can do this without having to have a USB thumb drive and certainly can't even find a CD or DVD anymore. 

And it allows me to do this and perform this function over the network. So these are the concepts that we talked about, non persistent. 

VDI(Virtual Desktop Infrastructure)
-TAILS OS for linux connects everything via tor which keeps everything annonymous 

# How does it work?

It also allows us to do this when we talk about virtualized desktops, I can connect to a server, I can perform all my basic functions just like I have a physical machine here. But when I log out of that virtual desktop infrastructure, it just throws the configurations away. 

And a lot of times the magic behind the scenes is the fact that your data is getting stored on a file server. But the desktop environment is just scrubbed, it's thrown away. And then the next time you log back in, guess what? You've got a fresh operating system ready to go

# How to get to Last known good

1. Right click start menu select settings
2. Click updates and security
3. Click Recovery

- Now I do want you to keep in mind this doesn't recover data files. But what this is going to do is this is going to restore the configuration state of the operating system.

- Right for instance, when I installed drivers when I install some application, right and it causes a problem When we create what are known as system restore points we should be able to restore to an earlier point in time.


1. Right Click Start, Slect System
2. System protection
3. Select Configure
4. Turn system protection on
5. Select Sytem restore

* WARNING turning on System Restore is useless if you dont create a restore point!
5. Create restore point 
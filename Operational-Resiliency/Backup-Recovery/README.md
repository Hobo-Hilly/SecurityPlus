# Dont forget about Bit Rot!!
Bit rot is the slow deterioration in the performance and integrity of data stored on storage media. It is also known by the names bit decay, data rot, data decay and silent corruption.

# Summary

Backup types
- Specify data to preserve
- Archive bit
An archive bit is really what tells the backup subsystem, hey, you've got to include this data or maybe you don't have to include this data. And what I mean by that is an archive bit is set on a specific piece of data when it's first created, and then when it's modified. 

And it's also important that when you you understand that that archive bit is flagged after the last full backup has been run. And it's important to understand that all of the three backup types that we're going to look at they all start with a full backup. 

- Backup time vs. Restore time

NOTE: A full backup clears all archive bits

Full Backup
- So the first one here is the prior week's full backup of all your data.
-  full backup type doesn't care. It says I'm backing up everything regardless of whether it's been modified so it doesn't really care about archive bits.
EX:
PRIOR WEEK:
MONDAY: So on Monday to a full backup tight means, you back everything up. 
TUESDAY: Tuesday. All right, at the end of the day, we run our backup subsystem, we backup everything.
WEDNESDAY: ""
THURSDAY: ""
FRIDAY:  ""


# What happens if there is a failure Thursday morning. Which back up would you use/need?
***If each back up were on a single tape

You would use Wednesday as a restore point. So you would only need one 'Tape'/ 'backup set' to restore all of your information.

- This could get exspensive

Differential Backup
- Starts with prior weeks full back up
- Unlike a full backup, it's actually looking at those archive bits and it's saying, hey, I see the newly created and modified files, let's include that in the backup
# How does it work?
EX:
PRIOR WEEK: Full backup of ALL of last weeks data
MONDAY: Monday's back up makes an archive bit for ALL of the data input on monday 
TUESDAY: Tuesday's backup records Mondays archive bit. Tuesday creates it's own archive bit for Tuesdays Data
WEDNESDAY:Wednesday's backup records Monday/Tuesday's Archive bits. Wednesday creates it's own archive bit
THURSDAY:Thuesday's backup records Monday/Tuesday/Wednesday Archive bits. Thursday creates it's own archive bit
FRIDAY:Friday's backup records Monday-Thursday Archive bits. Friday creates it's own archive bit   

** Each new archive bit encompasses the one from the previous day. Stacking on top of each other to the end of the week.

# Thursday we come in, something's wrong. We don't have our information we need to restore it. What do we need to restore our data fully?

- We automatically need the prior week's backup. Right? That has to be there. We don't have anything before Monday.

- Notice something. We don't need Monday's backup set. We don't need Tuesday's backup set. Why? Because they're both included in Wednesday. So this one takes two of your backup sets. It takes the prior week's full backup, and it takes Wednesday to restore your data prior to the loss.

- REQUIRES: 2 Backup Sets

Incremental Backup

- The incremental backup does both procedures with the archive bit. It looks to the modifications in the new files, backs up that information just like the differential. But here's the difference between those two. It actually clears all the archive bits. 

# How does it work?
EX:
PRIOR WEEK: Full backup of ALL of last weeks data

MONDAY: Monday's back up makes an archive bit for ALL of the data input on monday 

TUESDAY:Tuesday, at the end of the day, what is gonna be included in our backup? Only the modifications and newly created files that happened on Tuesday.

WEDNESDAY: Wednesday, at the end of the day, what is gonna be included in our backup? Only the modifications and newly created files that happened on Wednesday

THURSDAY: Thursday, at the end of the day, what is gonna be included in our backup? Only the modifications and newly created files that happened on Thursday

FRIDAY: Friday, at the end of the day, what is gonna be included in our backup? Only the modifications and newly created files that happened on Friday

** Each new archive bit CLEARS the old one. Stacking on top of each other to the end of the week.

# Thursday we come in, something's wrong. We don't have our information we need to restore it. What do we need to restore our data fully? 

If I wanna restore my data with an incremental backup type, I need Wednesday' tape because it's incremental. I need Tuesday's and I need Monday's, all three PLUS the full backup. I need four backup sets in order to restore my data fully.

REQUIRES: 4 Backup Sets

Backup Type Consideration

Attributes:                    Differential             Incremental          Full Backup
Backup time                      Medium                  Shortest               Longest
Restore                          Medium                  Longest                Shortest 
Clears archive bit               No                         Yes                  Yes
Uses archive bit                 Yes                        Yes                  No

Backup Locations
| Attributes   |            |        Tape/Disk      |       |       On-site   |    |    Cloud   |
 Management                  Requirement rotations           Require dedicated         Minimal
                             Require preservation                 Staff   


 Distance                       On-site/Off-site                   Local             Geographical
                                                                                     considerations 

 Storage                   Tape = dedicated hardware           Off-site               Third-party
                            Disk = NAS/SAN                    considerations          
 

Images
- Images are bit-by-bit copies, essentially of the entire contents of the storage medium, 
- We use images for operating systems
- We can basically have an entire copy of the operating system, not only the operating system but all of the applications within that including things like your configurations 

# PRO-TIP: "If I was in an environment, I would say 10 minutes. >> Right? >> If it didn't get fixed in 10 minutes, we're gonna hose this and we're just gonna start from the image because it's all there." 

Snapshots
- Snapshots are really a point in time copy,
- And that is typically what we use inside of things like virtual machines. It allows us the ability to revert to a known state
EX:
In the older days, if we didn't have snapshots, we'd have to reinstall the operating system or pull down an image, right? Even better, we'd pull down an image. Today what we can do is we can revert the configuration to a known state and it's like starting over again with your virtual machine. 
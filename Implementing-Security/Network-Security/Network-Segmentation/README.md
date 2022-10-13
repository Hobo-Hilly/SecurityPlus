This is all about network Segmentation and how it relates to security


Network segmentation (two slides)
# Why do we do this?
- Performance
EX: If we have 50 computers and 2 different deparments. Instead of having all 50 computers competing for resources on one network. We can segment the network using different subnets.

So 25 computers use 10.0.5.X

25 Computers use 10.0.6.X

Instead of 50 Computers using 10.0.X.X

- Security 
EX:
when you have every device in the network listening to every other device in the network, you have a potential for information to get transmitted between these devices that you don't necessarily want to be transmitted to everybody.

=============================== Visual Example ======================================================================
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-                                                                                                                     -
-                                               NETWORK                                                               -  
-                                                                                                                     -  
-     * * * * * * * * * * * * * * * * * *                           * * * * * * * * * * * * * * * * * *               -
-     *  SRVR1          SRVR2           *                           * SRVR4      SRVR5      SRVR6     *               -
-     *                                 *                           *                                 *               -
-     *                                 *  - - - - >  XXX <- - - -  *                                 *               -
      *   Segment # 1                   *                           *    Segment # 2                  *               -
-     * COM1   COM2    COM3  COM4       *                           * COM5 COM6 COM7 COM8 COM9 COM10  *               -
-     * * * * * * * * * * * * * * * * * *                           * * * * * * * * * * * * * * * * * *               -
-                                                                                                                     -
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
KEY
XXX = Cross communication chatter is elemenated 
SRVX = Servers
COMX = Host Computers

# Summary
This is how a network that is segmented into two seperate networks would look.
We do this so that all of the COMS with in each Network segment can have a clear communincation path to the resources they need access to.
but this helps to really just streamline the performance of your networks. Isolate those communications with only devices that have a common need to communicate and isolate that in a way
So not every device will hear every other device on the network and again, bringing down those things like broadcast domains and really just isolating that communication to the series of computers that you need.

# But basically what we're saying is by and large, if your traffic doesn't need to go over there and be looked at keep it out of that system. 

DMZs
Virtual local area network (VLAN)
Intranets
Extranets
East-west traffic and Zero Trust
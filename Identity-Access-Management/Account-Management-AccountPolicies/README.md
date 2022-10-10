

Account policies
When we talk about account policies, it's really nothing more than a set of configuration parameters
They can be defined on 
- User accounts
- Computer accounts
EX:
We can define them on machines, likewise because remember, especially when you're talking about Active Directory. You have what are known as domain members and when they become a domain member. Again, a domain member can be a user, now they're gonna have to abide. If you will by the the configuration parameters defined by the administrator.

They log into work stations and those work stations are also domain members

FYI: Computer accounts are also something that we have to keep in mind too. That we can define those configuration parameters, also for machines as well.

Access policies

# Summary
When we talk about access policies we're really talking about attributes of the account themselves. Because if you're talking about access policies when it comes to the network. What we can do is, we can really, stand up an entire server and say all right. ALL users have to be using dial-up or can't you using dial-up or they have to use a VPN server. Or they have certain time of day restrictions, and what we're really talking about. Here are the user accounts themselves when we talk about these access policies. And it can be based on things like network location and what I mean by that is. Are you allowed to remote in for maybe home. Can you access the network from that location? Is that allowed?

Conditioons granting or Deneying access
    - Network location
    
    - Time-based
    EX:
    Time based. We can say through things like not only time based but like time of day restrictions. So different if you think about the time based attribute here on an access policy. I can say, well when you log into this session, you can only be logged in for 10 minutes. Or you can only be logged in for a half hour, let's say in combination with a network location. Sure you can remote access in, but if your session becomes idle, it's gonna disable. Is gonna disconnect you after 15 minutes, or you know what? We don't really need anybody or want anybody to log in on the weekends, right?
    
    - IP address
        What we're going to do is say, you can only dial in, if you will, or log in from this IP address
    - Subnet

Geolocation
- Now geolocation is really just identifying, whether users can log in based on where they are currently located

EX: But let's say normal people hours,7 to 8am, Dan logs in. 
So we see that and we're doing auditing on that, right? We're keeping track of the fact that Dan logged in at 7 to 8am. 
But let's say all of a sudden, there's a log. Yeah, he logs out, let's say for whatever reasons got to take lunch or something. And then he logs in from, let's say, China, same account, that's called a risky login. And what the point is, it doesn't have to be that, dispersed all the way across the world. But, the travel time within those four hours between where he logged in initially. And where we're seeing the login now, something's wrong there

FYI: They can actually base what resources you can access based on your location 

Geofencing

We've got a main office, and a branch office, right? In the main office, it's the main network, right? We allow people to connect across the internet from a branch office, Right? We know where they're located, but if we see them trying to come in for any other location. To put the coffee shop here right? They're not going to be allowed



Main Office               |ROUTER|                        Internet                     |ROUTER|                        Branch Office
  (Access Granted)                                                                                                      (Access Granted)



                                                        COFFEE SHOP
                                                        (XXX ACCESS DENEYED!! XXX)




Geotagging
- Attaching location-based metadata
Restaurant
Beach(With wifi)
Baseball Stadium
They all have different metadata based on their unique locations
# How does it work?

The concept of geolocation, right? We can give our grant you access based on where you are currently located. We can geo fence you where you are currently located. Can dictate which resources you get access to or don't get access to. As well as geotagging and that's again, just attaching location-based metadata. To whatever activity or action that you're performing



# Show and Tell!!!

So logged in to a windows 2019 Server


1. Tools - Select Active Directory Users and Computers
2. Slect the Users Container if it isn't already selected
3. Right Click the Account you want to work with and select properties
    This shows a number of attributes for the account...
    | Remote Control | Remote Desktop Services Profile | COM+ |
    | General | Address | Account | Profile | Telephones | Organizations |
    | Member Of | Dial-in | Environment | Sessions |
Dial-in Tab
    - Network Access Permission
        Allow access
        Deny access
        Control access through NPS Network Policy Server
    # Verify Caller-ID
    -Call back Options
        No Callback
        Set by Caller(Routuing and Remote Access Service only)
        Allways Callback to:

    - Assign Static IP Addresses
        Define IP addresses to enable for this Dial-in connection

    - Apply Static Routes
        Define routes to enable for this Dial-in connection

    |OK|  |Cancel|  |Apply|  |Help|


SESSIONS tab
- This controls how longs sessions last 

- Time based, excuse me, right? I can say how long can the active session be? All right, what's the limit? All right, can you be connected in, let's say from an IP address? For how many hours? A whole day? Right? Do I want to disconnect your session if you're idle,


ACCOUNT tab
- Time of Day restrictions

- Login hours. I can set time of day restriction right here, so I could say. You know what, I don't wanna let, let's say, anybody login on Sunday. So I could select Sunday and I can say, Login Denied. Maybe I don't want anybody to, I don't want somebody logging in over the weekend, right? I could set that, now, in fairness, we probably set this in a group policy. And if we want it to apply to 100 users, we're not or 1000 user. We're not going to do it on a user by user basis, but the settings are essentially would be the same. You would find it inside of the group policy.

- Lock Out threshold can also be found in this tab
- This is also where you would go to unlock a users account
- Account expires
    for contractors that might be using your resources

# Back at the Server Manager Dashboard
1. Press the 'Tools' drop down and go to Group Policy Management
2. Right Click on 'Default Domain Policy' and select 'edit'
3. We could do account management. We could have set account policies and configure the computers as well as the user configuration, likewise too. So this gives you kind of an idea of where you would see this. If you were implementing it inside of a live environment










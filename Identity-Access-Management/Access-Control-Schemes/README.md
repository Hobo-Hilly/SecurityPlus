
FYI: And there are some different method schemes as CompTia calls them. You can call the methods, you can call them access control technologies, techniques. 
These are different models, for the way we control access to resources

# Why would we use this?
This is to control access to resources
- Minimizing Risk
- The reason we have access control is because we want things that should only be accessed by authorized users to stay that way
- So it's really about confidentiality and the integrity as well.
Access Control

# Whats going on?
- So we've seen all of this before, the authentication process. We send over an authorization request. Then the server says, prove it.
 Then we prove, we are who we say we are. But now we, once we've been authenticated, we determine those privileges are what you should have access to.



MAC (Mandatory Access Control)

- Subjects
    These are Identities we want to control access for

- Objects
    These are in reference to the resoures we want to control access to
    Resources could be as follows but not limited to
    File
    Service
    Web Application
    Network

Privileges


Mandatory Access Control

Access Control Models
- Access control levels for the subject
    Secret Clearance
    Top Secret*** used in example
    Above Top Secret

- Sensitivity Labels for the objects

- It's got secret clearance. Well, that secret clearance is the access level for the user or the subject in this case, but you also have a second designation that needs to match and that is the sensitivity label that's put over the object. 
- So for instance, in this case, this person has secret clearance. So they can only see things up to the secret clearance level on that object with that sensitivity label. But If it was top secret. They can't rise above what the sensitivity label is on the edge, the object itself


DAC (Discetionary Access Control)
# How does it work?

Let's take the same concept as above here. We've got our subject here and we've got an object with discretionary access control. Your subject is actually the owner of whatever objects they create

Administrators have access to everything but typically the owner of a document that creates the document can define what the access level is.

* * * * * * * * * * * * *                * * * * * * * * 
* Owner || Administrator*   - - - - -    * Object(s)   * 
* * * * * * * * * * * * *                * * * * * * * * 




Set access level                        Access Control List (ACL)

                                        - Components
                                        (ACE) Access Control Entries

                                        BOB(user) ---------- > Read & Write

                                        - Access control list or an access control entry an ACE, is an identity that's given a certain level of access to the resource by the owner itself. And that's all contained inside of the access control list that is set on the object itself.

- Filesystem permissions uses DAC like all the time

- More specifically, let's talk about things like Windows permissions. NTFS permissions. Or even share permissions

EX: How its used
- If I create a document and let's say Dan and I are on the same team, I want Dan to have maybe a certain level of access, maybe I don't want him to be able to change the permissions. Maybe I don't want him to be able to take over ownership of the documents. 

- So I say, you know what, Don, I need your collaboration on this. So I give him a modify level permission, right. I want him to be able to manipulate the document. Maybe the other new person that joins our team I want them to kind of learn the ropes before they actually get to modify anything.

- The term implicit deny. And that is, if I don't want somebody to be on the list. Right, or I don't want somebody to have access to the object. I just don't put you in the list,

- If you're not in the list and the security subsystem goes, all right, you're not Bob, you're Alice. But I don't see Alice in the ACL then you don't gain access to it. That's called an implicit deny

- Explicit Deney. This means that you have this person on a list. It's just the naughty list that says you cant come in.
That is an explicit deney

FYI: Be careful with those use them sparingly because inside of a permissions based system where you're using discretionary access control, you're explicit denies Trump any other permission that you're going to implement

So use implicit denies if you're implementing something like discretionary access control.

---------------------------------------------------------------------------------


Role-based access control (RBAC)
- But what we have in role based access control is typically pretty Predefined organizational roles that are set by your organization. Before it, let's say an employee even joins before somebody joins your team.

# How Does it work?
EX:
- This young lady here, she's an administrator. That's a predefined role. We've brought her into the company. We're gonna need an administrator. We assign that role to her and they really have the keys to the kingdom.
- Since she's part of the financial department, and we have financial data with role based access control. That predefined role is what really we put you in and we give you access to just those objects that are really you should have access to defined by that roll ahead of time. 
- So this lady if she's in the financial department. And there's financial data. She gets access to the financial data. 

- However, this gentleman down here, maybe he's not part of the financial department. Well, he doesn't have access to the financial data because that's not his predefined role. But maybe software development, He's  apart of that department. We got software code, he gains access to the software code because that's his predefined role within the organization.



Rule-based access control (RBAC)

# How does it work?
EX:
- First of all, it's predefined criteria. That's what a rule means. Dan says, Hey, I want maybe this traffic coming from Maybe this subnet. All right, maybe it's a branch office and we've got that predefined IP range that says, yeah, if you're in that range, you can make your way into the network. So we set that role on the router. 

- And the router says, okay, I see all of this access coming in. We got some coming in from the internet. We got some coming from the branch office. And then we also got these crazy ICMP echo requests. Another rule says what type of traffic do I want to allow not just the location, right? That's the rule that we've determined but also what kinda maybe traffic specific traffic type do we wanna allow in so in this case, The, the traffic that's coming from the branch office. Yeah, you can gain access to the corporate network. 

- But if it's just any what I call random traffic that's coming in off the internet or maybe some of this type of traffic like ICMP echo requests. When that traffic comes in, the router inspects that criteria and says, Well wait, wait a second. We don't want to allow people to ping us and receive a ping back. So we drop that traffic and we don't allow it to come come through. So that is your rule based access control and don't get those acronyms. 

* * * * * * *                                                                                     - - - - - - - - - - - - - - - - - - - - 
* Public    *                                                                                     -
* Internet  * - - - - - -                                                                        -
* * * * * * *             -                                                                        -
                            -                                                                      -
                              -                                                                    -
                                -                                                                 -
                                  -                                                                -    INTERNAL CORPORATE
- - - - - - - - - -                 -                                                              -
- IP Range        -                   --->  # # # # # # # # #                                     -          NETWORK
- 10.10.0.0/24    - - - - - - - - - ------> # Company's     #                                     -
-                 -                         # Edge Router   # = = = = = = = = = = = = = = = = = > - 
- Branch Office   -                      -->#               #                                     -                                   
- - - - - - - - - -                    -    # # # # # # # # #                                     - 
                                     -                                                            -
                                   -                                                              -
                                 -                                                                -
                               -                                                                  -
* * * * * * * * * * * *      -                                                                    - - - - - - - - - - - - - - - - - - - - 
* "Rando Traffic"     *    -
* ICMP Echo Requests  *  - 
* * * * * * * * * * * * 







Attribute-based access control (ABAC)



Conditional Access

Privilege access management

PAM Solutions
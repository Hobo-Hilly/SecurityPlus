
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

- Subjects: These are Identities\Users\People we want to control access to the object(s) we are working on securing.

- Objects: Objects are in reference to the resoures we want to control access to.
  EX:
  Resources could be as follows but not limited to
  a File
  a Service
  a Web Application
  a Network

Privileges

Mandatory Access Control: Mandatory access control models give the responsibility of access decisions to a security professional who is the only person with authority to set and manage permissions and access rights. This model is often used for businesses who protect sensitive data or property, and therefore require the highest levels of security status.

For 'subjects' we use "Access Levels"
    Secret Clearance
    Top Secret*** used in example
    Above Top Secret

For 'objects' we use "Sensitivity Levels"

EX:
- If a file is labled with a secret clearance. Well, that secret clearance is the access level for the user or the subject in this case, but you also have a second designation that needs to match and that is the sensitivity label that's put over the object. 

- So for instance, in this case, this person has secret clearance. So they can only see things up to the secret clearance level on that object with that sensitivity label. But If it was top secret. They can't rise above what the sensitivity label is on the edge, the object itself


DAC (Discetionary Access Control): The decisions on user permissions are taken at the discretion of one person, who may or may not have security expertise. While this limits the number of people who can edit user permissions, this model can also put an organization at risk because the decision maker may not be aware of the security implications of their decisions.  

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

- Filesystem permissions use DAC like all the time

- More specifically, let's talk about things like Windows permissions. NTFS permissions. Or even share permissions

EX: How it's used
- If I create a document and let's say Dan and I are on the same team, I want Dan to have maybe a certain level of access, maybe I don't want him to be able to change the permissions. Maybe I don't want him to be able to take over ownership of the documents. 

- So I say, you know what, Don, I need your collaboration on this. So I give him a modify level permission, right. I want him to be able to manipulate the document. Maybe the other new person that joins our team I want them to kind of learn the ropes before they actually get to modify anything.

- The term implicit deny. And that is, if I don't want somebody to be on the list. Right, or I don't want somebody to have access to the object. I just don't put you in the list,

- If you're not in the list and the security subsystem goes, all right, you're not Bob, you're Alice. But I don't see Alice in the ACL then you don't gain access to it. That's called an implicit deny

- Explicit Deney. This means that you have this person on a list. It's just the naughty list that says you cant come in.
That is an explicit deney

FYI: Be careful with those use them sparingly because inside of a permissions based system where you're using discretionary access control, you're explicit denies Trump any other permission that you're going to implement

So use implicit denies if you're implementing something like discretionary access control.

---------------------------------------------------------------------------------


Role-based access control (RBAC): A role-based access control method or model, a security professional determines user permissions or user privileges based on the role of the employee. This could be their position or title within the company, or the type of employment status, such as differentiating between a temporary employee and full-time staff.


- But what we have in role based access control is typically pretty Predefined organizational roles that are set by your organization. Before it, let's say an employee even joins before somebody joins your team.

# How Does it work?
EX:
- This young lady here, she's an administrator. That's a predefined role. We've brought her into the company. We're gonna need an administrator. We assign that role to her and they really have the keys to the kingdom.
- Since she's part of the financial department, and we have financial data with role based access control. That predefined role is what really we put you in and we give you access to just those objects that are really you should have access to defined by that roll ahead of time. 
- So this lady if she's in the financial department. And there's financial data. She gets access to the financial data. 

- However, this gentleman down here, maybe he's not part of the financial department. Well, he doesn't have access to the financial data because that's not his predefined role. But maybe software development, He's  apart of that department. We got software code, he gains access to the software code because that's his predefined role within the organization.



Rule-based access control (RBAC): The rule-based model, a security professional or system administrator sets access management rules that can allow or deny user access to specific areas, regardless of an employee’s other permissions. 

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


FYI: By default, all firewalls, basically any traffic that isn't explicitly allowed on the reservation list is automatically dropped. The implicit deny, that's how firewalls work. All outbound traffic typically is allowed by default. Those are the pre-defined roles in the default nature of a firewall.

FYI: Yeah, and you gotta be careful with rule-based, because the rule order can come into play as well. You put the rules in the wrong order, and things don't work right, and it just gets weird. Take his ICMP versus the gateway. If I say, all traffic from this network is allowed, and then you also have, ICMP is not allowed? If I put those in the wrong order, even if it comes from that network, it'll still be disallowed. There's your problem, right, so be careful with those


Attribute-based access control (ABAC): Attribute-based access control, also known as policy-based control, evaluates the attributes or characteristics of employees, rather than roles, to determine access. An employee that doesn’t present attributes set by the security administrator is denied access.  

# How does it work?
EX: 

User Attributes                                         Resource Attributes
- Name                                                  - Name
- Department                                            - Type
- Position                                              - Modification Time
- Building Number
- Time Zone

Well, you can gain access to this resource if you're in this building, if you're sitting at this desk. And what I mean by that, you're sitting at your work desk, you can gain access to it. But if you're on the public kiosk, I don't care if your user identity still says you're an authorized user, you're not in the right location, that could lead us to risk

- Attribute-based access control, a lot of times, or the majority of the time, is based on things like user attributes.



Conditional Access
- Conditions are a little bit different. These are pre-defined conditions, and examples of this are things, again, like location, you are here.
- Previously defined conditions
Examples
- Location
- Conditional access, again, and that really, I know, can blur the line on, hey, you're at this public kiosk, let's take it a little bit different, all right? You're within the corporate network, you can gain access to this resource with maybe a little bit less restrictions. But you're now at the coffee shop, and you to go in to access the information over a public network. Again, I don't care about your identity here, your location is telling me that you shouldn't have access to this. Because we can't really restrict and really protect that information when it's on the other side of our internal LAN. 

- Operating System
 So you wouldn't want a random Kali linux OS running around on the network

- Devices
 You can access the resources from a computer but not from a phone/tablet... or any variation of this idea

- IP Addresses

- Subnets

# Summary
- Some of these could end up controlling access based on these type of examples. 


Privilege Access Management (PAM)
- This is for controlling and monitoring the user accounts we have in the directory
- User with high-level permissions
    Users with high-level permissions. We wanna know, who are the administrators on our network, and did an administrator create one of these backdoor-type accounts, and now are accessing it through a backdoor account? From the perspective of a system, that's an administrator accessing it. Should they have access, should they not have access, who created the account
- So we know how many Admins how many managers etc ..are on the network and what their permissions are

- How the permissions are used
    Did an administrator not only have access to something, but did they give another employee full control over something that they shouldn't have access to

- Comprehensive Auditing
    Internal user activity
    External Vendor Activity

Comprehensive auditing as well, internal user activity as well, things like external vendor activity. We always wanna be able to monitor that, and this helps us to restrict access within any kind of existing organization. And it helps us to isolate the use of privileged accounts, and if they are being used, how are they being used, right? And that helps to mitigate the vulnerabilities,unauthorized privilege access. 


PAM Solutions

https://expertinsights.com/insights/the-top-10-privileged-access-management-pam-solutions/
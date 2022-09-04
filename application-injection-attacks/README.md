Injections

''
Supplying some type of untrusted input to typically a Database of some kind.
Maybe a web application that has to formulate a certain type/style of quierry to communicate with a backend server that has a Database stored on it.

''

Been around for a long time


Very dangerous


Impact


- Loss of data

- Theft of Data

- Corruption of data

- DoS


# Injections

TYPES:
Structured query language (SQL)

- SQL; this is our database where we store information in a relational database.
''
we've got our web server here. We've got our user. The user is gonna log into the web server, or some kind of web application, and let's say they're gonna request to see their account information. And/or maybe see a listing of some things that are in stock, right? And that that web application takes that information and generates some kind of SQL query that's sent again to the back end server. 

And then that back end SQL server returns the information back, presents it to the web application. And then, you view all the nice lovely pairs of shoes... 

All right, now, if the attacker can do this same thing, then what the attacker can do is make a modification to the information that they're putting within the fields on the Web API. (BURPSUITE) And do that for the purposes of maybe seeing if, I guess, they try to identify if this can happen at all. And add a little information to that field that actually does perform some kind of SQL query. And it sends that Web API since it's already talking to the back end server, is gonna say, okay, well that's a SQL query. That's usually what I do. So I'll go ahead and I'll send that back to the SQL server. 

And then, that query happens and then whatever of those undesired actions might be. The SQL server happily accepts it because that's its whole reason for living. Right, I get a SQL query, I look at the database, I generate that output and I send it back to you. Again, for the purposes of the manipulation of the information, modification of the information, exfiltration of the information, or just bringing the server offline. That's essentially what the SQL injection attack is doing.

# What is it doing? Whats going on?

Well, I am injecting into the SQL query, I am adding more SQL. And if I can actually inject into that query, And I can modify what's going on, just like a database admin would be if they were sitting behind the hood of that database server, 
''



    Lightweight directory access protocol (LDAP)
''
- lightweight directory access protocol, that is how we query against directory service servers. 

Extensible markup language (XML) or XXE attack

# XML external entity injection (also known as XXE) is a web security vulnerability that allows an attacker to interfere with an application's processing of XML 
''

    Dynamic link library (DLL)

''
so DLL. Let's think about how applications work, right? A user interacts with an application and that application has a certain limited amount of functionality built into it. 

It's the way programmers can keep their application footprint small, but then when they need to extend the functionality of the application, they can put that functionality in DLL file in the Dynamic link library so the user interacts with it and that functionality is not built in the application is gonna reach down to the dynamic link library. 

It's gonna grab that DLL, essentially pull it in and now we've got whatever that extended or additional functionality is. 


Now think about the attacker. If the attacker can modify the DLL or maybe even supply their own malicious DLL, then when that functionality is called upon, we reach down into the Dynamic link library file and or pull that file out, then what happens is it performs some kind of unauthorized actions.


NOTE!!!
 A lot of your drivers are DLL files too and remember what your drivers do. Your drivers allow that high level programming language. 
 
 The operating system to communicate down at the low level with the hardware and that is a very trusted process.
 
 Typically that's an interaction between the kernel and the hardware itself, and if that user can inject that DLL at that level, they've got privilege escalation and they essentially can take control. Really, if they want of the entire machine, if that's what they so choose to.

-  anybody who is running any kind of Windows Active Directory should be familiar with DLL

-  We've got some kind of web application, that web server, right? We're interacting with that web API. And maybe it does something where it generates an LDAP query against the directory services, says hey, I just wanna validate. Does that user actually exist, right? 

And then the LDAP server verifies that and the web application allows them to perform whatever action it is that they're trying to perform. Now if the attacker can sit in that same spot just like the SQL injection attack, if they can modify the entry in that field and add something that would construct an LDAP query against that LDAP server. Then they could potentially get more information than what they should have access to.

# Whats Going on?

 How to Imagine Dynamic Link Library (DLL). I think of it as like a database of all the objects in your network. 
 
 Yeah, when I started learning about LDAP and doing queries against those things, it was basically presented as a phone book of information for that domain, right? So I've got peoples names, email addresses, phone numbers, what room there in the building. What department there with? 
 
 >> Machines on your network? >> There are all these attributes that go along with any account or table row in a table of information. So when you open up an Active Directory server and right click on a user and we say give me the properties and it shows me all that information. 
 
 >> That's coming from that LDAP directory. And, it can be used in more than Active Directory. It can be used in web applications. So now we're just taking that SQL injection idea and going, I've seen this song before, I've heard this song before. Let's just add LDAP instead of SQL, and we're good to go. 
 
 >> That's right, we could format in the structure that LDAP is expecting. It's gonna say, hey, that's the web app talking to me. There's already trust relationship between that web API, which we don't typically interact with, right? That's under the hood. It's kind of abstracted to us, but essentially, you're attacking that web API(Application Programming Interface), and it's really only doing its job. It's doing exactly what we expected it to do, but now the attackers making it do exactly what they expect it to do.
''

XML (Extensible Markup Language)


''
The attacker is gonna send a request towards an application, typically in the form of an XML type structure.

And if that attacker knows that that application is calling that XML request at external entity and pulling that information in that's been parsed. 

Then the attacker can essentially modify that request to perform some kind of action, and that's gonna be pulled in by the XML parser. The XML parser, it's just doing its job. And it says, okay,I'll parse that out and I'm gonna also perform the action that's been crafted in the XML coming from the attacker and we're going to end up dumping etc password.
                       * * * * * * * * * *                     # # # # # # # # # # # 
                       *                 *                     #                   #
                       *                 *                     #                   #
                       *                 *                     #                   #
HACKER ------------>   *  Application    *  --------------->   #   XML Parser      #
        XML Request    *                 *                     #                   #
                       *                 *                     #                   #
                       *                 *                     #                   #
                       * * * * * * * * * *                     # # # # # # # # # # # 
                                                                         |   
                                                                         |
                                                                         |
                                                                         |
                                                                         |
                                                                         > $ cat /etc/passswd  (This is the execution of the command that was sent in the mal formed XML Request. You could put any command you want right there.)



OS (Operating System)Command Injection

- Inject commands into the web app that are then executed by the OS.

command injection, let's talk about some kind of vulnerable web application. 
Just a Vulnerable application in general and you've got a field right? 

And let's say it's some kind of music player, right? And you want to view your list and that list is stored on a back end server somewhere, right? So you send or the attacker sends that action to the application and notice it says hey just display my playlist. 

But notice that there's a semi colon in there and outside of that semi colon is the same command that we kind of seen in one of the previous slides, right? Says cat, right show me Etsy password. ($ /etc/passwd)

Well the application says sure, I'll absolutely retrieve your playlist. I'll send it back to you. Here's which playlist looks like. And by the way, I'll go ahead and dump Etsy password there and you're gonna be basically having access the again, the entire user database.

NOTE:
 Now I think it's important to point out why this actually happens, and that's because the web application is reaching into the operating system. Whoever coded it is saying, hey, I need this functionality. The operating system can do that, so I'll just have it do that for me, and then it didn't protect that. So as an end user, when I give it some input, if I'm able to chain commands together like you can in a Linux system using semi colons, that also works with windows as well. Then it will not only run the first command it will run the second command and the 3rd and the 4th or however many you chain together. If it accepts those characters and the operating system will do it and then dump it right back out

# How is this working?
''
So, we're getting the entire database by bypassing that using some logic saying, hey, give me admin, which doesn't exist, or 1 = 1, if 1 = 1 then give me everything. >> It's true, then that means everything, it's always true, so it's just gonna dump everything back out.

''

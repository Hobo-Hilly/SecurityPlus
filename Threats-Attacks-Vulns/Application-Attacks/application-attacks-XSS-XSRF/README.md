This episode is all about Cross Site Scripting and the types therein.

XSS (Cross Site Scripting)
# What is it?
''
When we look at cross side scripting, essentially what it is, it's a type of an attack that injects some kind of malicious script that we wanna execute into the web browser.
''

XSS Types (Cross Site Scritping Types)

Relected
# What is it?
EX:
 - Our victim is gonna interact with a web browser of some sort, but before that happens, our attacker crafts some kind of malicious link and embeds it in an email, 
 
 - Our user here clicks on it and maybe it's in that email and it says, click me. Thats all they can see. They know it's a hyperlink because it's usually highlighted blue. 
 
 (Yeah, we see those in our emails all the time. Sure, to retrieve this promo code, click here, takes you to a website. You get the code. You're all good to go, but it doesn't actually have all the URL details. It just a highlighted text- >> And obscures it? >> Yeah, click here kind of thing. >> Definitely.) 
 
 And so what happens is inside of the URL itself, they have crafted some kind of script execution that when that user logs on, the link opens and it performs some kind of unauthorized action. Whatever it is that the attacker is looking to achieve 


- A favorite way to exploit this type of vulnerability is to do a session stealing.
 The Attacker grabs a session token, AKA session hijacking. You grab that session token with that request and it just pops right into my little server that's waiting for those logs to come in. 
 - Now I've got that token. I can then put that into my browser and act as that person. And make purchases or do whatever it is I wanna do based off 

 - It's not difficult to pull this off, it's more the pre texting, the social engineering that goes behind the email address and finding a vulnerable server. Those are the two difficult pieces. After that, it's pretty cut and dry
''

Stored
# What is it?
 - Stored cross site scripting. 
 EX:
 - We're gonna do is we're gonna start with the attacker itself. An attacker again, is gonna interact with a web browser, and they're gonna insert let's say, a script into a comment section. 
 
 Let's think about this right, when you go to a news feed, you browse to a news feed or something like that. And you can typically leave some kind of information in some of the fields in there. Well, essentially what happens is in those comment fields rather than, Hey, I absolutely love this video, hey Can you leave me the directions for the recipe or something?)
 
 - Instead, what happens is your attacker actually embeds that script in there. So then what happens here is the script gets stored, and then our victim browses here to that news article. And then when they do, that script executes, and it ends up being downloaded into the web browser, and then executed it from there. So you can see it's actually stored on the server versus just being reflected. 


 - So basically, the difference between reflected versus stored is with a reflected attack. A user can input something, and it's being reflected back by the web page. And it's all client side. And unfortunately, it'll execute JavaScript or Whatever your working with.


Right, with stored, the attacker's actually leaving it there. And anybody that subsequently goes to that area, doesn't matter who it is, and you can have a legitimate URL, doesn't have any scripting in it at all. As long as they land on that page, And if their browser is executing scripts. It can pull it down, and it can run the exploit. Again, lead to whatever unauthorized action the attacker wants to

NOTE: This is really good for a watering hole type attack. 
When you have a lot of people go to the same place(Website). It's got a script on it, bam! They're all sgetting nailed
''

DOM-based
# What is it?
''
- With DOM-based, this is more of an advanced type of cross-site scripting attack. And what it does is it basically allows the attack, essentially what's gonna happen is there's gonna be a processing of untrusted information. 

- Document object model, which really is just a standardized way, the way to represent on format or structure a document within a website. And this is more of the client side attacks. So just be aware of it, that it's one of the more advanced, if not the most advanced of the cross-site scripting attacks. 
''

XSRF
# What is it?
'
- A cross-site request forgery attack, is really a lot like a reflected XSS, where essentially, we're gonna have a website visitor, gonna connect, if you will, via an active login session. (So understand that we now have a trust relationship active with this web server.)

-  Our attacker here essentially will place a malicious HTML into the website that they can control. And they're gonna induce the, let's say, the website visitor, if you will, to visit that website. And then what ends up happening is they can craft an HTTP request, that when that user logs in, (remember, they're already trusted by the server.) 

- And when they click the link. And in there is that forge request. And it's performing some kinda unauthorized action on the website visitor. 

- The victim's behalf that they might not even know it happens, for instance, they click the link. It forwards and requests get sent to the web server, and now we have a fund transfer that happens. 
''

XSRF Types
# How does it work?
''
When we say server-side request, let's think of something like A vulnerable web server. The HTTP request is going to be sent via the attacker it's going to be sent into the server and essentially attacking So think about this, right? We've got a web server that typically communicates with a lot of back end technologies, right? Those back end technologies, a lot of times are sitting behind a firewall and typically in your land they're gonna have a general less protections. 

- Not all, we don't just do away with protections. But I can tell you that a resource that sitting behind a firewall is not gonna be probably buttoned up as much as something in a DMZ, right? So your web server is in the DMZ, and that's what the attacker has access to. But the point is to attack that vulnerable server
- The Vulnerable web server, and then what they can do is since that web server is talking to some kind of back end asset. They can essentially abuse that trust and kinda leapfrog off into the back end server, which normally they wouldn't have access to. But notice what's happening they're attacking the server itself, and then that's where that request forgery attack is happening, and that's the big thing with this one.

Client-side vs. Server-side
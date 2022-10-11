# We are finally in the juicy stuff!! 
Application security


Input validations
- Ensure date inputs are valid
    Syntactic validation
    * Syntactic validation, this is really just making sure like the input types, if you will, and the links are what we want.
EX: 
Think about a social security number right there. So social security number has a clearly defined format.
So we don't want anything else other than a format we would expect for Social Security Numbers. So a date format 09/10/1414 would not be allowed in our xxx-xx-xxxx SSN format. 
Think about currency. Right or symbols, if you will, we wanna make sure that it's what we expect.

Semantic validation
# Suammary
So we wanna make sure that we that any information that we enter is the information is entered in a way that we expect it and if it isn't, we discarded, we throw it away.


- Use of Schemes 
schemas if you will. And again, schemas in general just define that, hey, this is gonna be the struggle. Structure right defines the structure and the content, how the attributes and elements are going to be formed and making sure, that we stick to that

FYI: Input validation is very, if you think about things like SQL injection attacks, right? They can happen if we allow additional things that we weren't expecting. 

-------------------------------------------------------------------------------------------------------------------------------

# Summary
Blacklisting it comes down to basically banning certain things, not allowing certain things. And in this case, we're talking about banning characters,

Blacklisting and Whitelisting
- Banning Characters (like ', ", $ , etc) this helps stop SQL injection attacks (Blacklisting)
- Hard to maintain: This can have issues if you don't account for every single character and permutaion of every language so it can be BYPASSED

Whitelisting
- Acceptable character list
- Can break things ( So if you leave a character out of the acceptable list you could break an application. i.e. it wont function correctly anymore)

FYI: really good idea to use, like parameterized statements that say, you wanna do this. Let me go ahead and grab that prepared statements. Let me grab that prepared statement. And do the thing you asked me to do.



Hypertext Transfer Protocol (HTTP) headers
- They can be used to upload files
- Can leak information
    Internal hostnames
    Backend servers/applications

FYI: valid attacks that were used and quite devastatingly. So you think of shell shock, shell shock used HTTP headers to send the payload to get access to the system. And right there anybody could do it. All you had to do is know how you gain access. Also things like local file inclusion vulnerabilities. They can be used through HTTP headers. If you have access to certain areas of the file system, I can just type right into those HTTP headers, send them along the way gain access to that page. And now I have access to the system if it seems crazy, like.

Code signing
If you're working in a windows environment, you ever download an application. It's essentially using certificates. And what those certificates do is when they're applied to our code, It allows us to do things like validate the origin we can we know that it came from the software vendor that says it did. And the other thing is that it has maintained its integrity and it's you.
- Uses certificates
- Software
- Code Integrity
- Digital signature



Secure Cookies
- Do not include/store sensitive information in cookies
- HTTPS vs HTTP
- Secure cookie flag
- Cookie integrity
- Can be bypassed

FYI: Just remember, the biggest thing is use HTTPS over HTTP. And make sure that you don't include that information in the cookies and then you're good.



Static code analysis
- Automated scan
- you can google tools
- Code/software is not running
- Good for source code
- Early detection is SDLC (Software Developemnt Life Cyle)


Dynamic code analysis
- Automated scan
- Code/software is running
- Analyzing code behavior/interaction

# Summary
This is another automated scan, but it's a little bit different here because what's happening is. Your software is actually sitting inside of a runtime environment. It's actively running. And what we wanna do here is we wanna find out how is it interacting? How is it behaving? All right, is it acting up.

And by that, I mean, if you have an application that's using other applications, maybe a back end database server, how is it interacting with that server? Is it leaving us open to attack the database itself? Is it corrupting the database right? The integrity of the information too?


Manual code review
- Very Very Slow process
- Line by Line analysis
- Not Automated
- Open to interpretations
- It can be very effective because it brings in the human element

You should perform ALL types of scans when working in any environment

Fuzzing
- Automated process
- Inputs
    Random data
    Invalid
    Unexpected data
How does the software respond?
    Error Messages
    Memory leaks
    Crashes
    Buffer Overflow

FYI: If you throw all of that information have you now spilled that information and unprotected places within memory. Well, now we can put our code in there potentially. Right, so, again, futzing is just throwing all the random information you can and just see how does the application behave



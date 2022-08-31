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

And then, that query happens and then whatever of those undesired actions might be. The SQL server happily accepts it because that's its whole reason for living. Right, I get a SQL query, I look at the database, I generate that output and I send it back to you. Again, for the purposes of the manipulation of the information, modification of the information, exfiltration of the information, or just bringing the server offline. That's essentially what the SQL injection attack is doing

# What is it doing? Whats going on?

Well, I am injecting into the SQL query, I am adding more SQL. And if I can actually inject into that query, where I can modify what's going on and therefore, just like a database admin would be if they were sitting behind the hood of that database server, 
''



Lightweight directory access protocol (LDAP)

- lightweight directory access protocol, that is how we query against directory service servers. 

Extensible markup language (XML) or XXE attack

-  

Dynamic link library (DLL)


Command Injection


Inject commands into the web app that are then executed by the OS.
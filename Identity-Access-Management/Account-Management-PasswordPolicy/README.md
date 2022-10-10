

Password Policies
- A password policy is really gonna be defined by whatever your corporate security policy is
- They're just a collection of required attributes that are applied to passwords, and they really define how the past how you can construct a password.
- They also define in sometimes what type of passwords you can use. So let me give you an example of some of the components of a password policy,

Examples

Complexity
A-Z uppercase
a-z lowercase
0-9 numbers
$-# Special Characters

History/reuse
Password history and Password Reused
-  So history is just how many unique passwords do you have to cycle through before you can reuse a password.

Length
- length as well. How many characters has to be involved? It's as simple as that.
- Do you need to use seven characters eight characters etc ...

Expiration
- Set a 30 day 10 day 2 day expiration time on your passwords



# How does it work?

EX: 
Here is a Windows Server 2019 box and we've already got active directory services installed and that is where we can actually set these passwords policies. 

You can find this information in Windows 10 or Windows 10 Pro, type in your little search field down here on your task bar, secpol, S-E-C-P-O-L. And you'll see an edit the local security policy and you can find the same settings there.

# So for centralized administration we are on the server manager Dashboard
1. Select the 'Tools' drop down tab in the upper right hand corner
2. Select 'Group Policy Managment' in the list
3. Go to the 'Group Policy Objects' tab
    - Select 'Default Domain Policy'
*****New Window****
1. Select the 'Policies' tab
2.      Select 'Windows Settings'
3.          Select 'Security Settings'
4.              Select 'Account Policies' 
5.                  Select 'Password policies'
EX: Passwor Policy Window
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
-           Policy                                                                   |    Poicy Setting                           -
-                                                                                    |                                            -
-   # Enforcement pasword history ** 6.                                              |   24 Passwords remembered                  -
-   # Maximum password age                                                           |   42 days                                  -
-   # Minimum password age              ** 7.                                        |    1 days                                  -
-   # Minimum password length                                                        |    7 Characters                            -
-   # Minimum password length audit                                                  |      Not Defined                           - 
-   # Password must meet complexity requirements                                     |      Enabled                               -
-   # Store passwords using reversible encryption                                    |      Disabled                              -
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
#Reccommended Actions

6. Right click Enforcement Password history and select properties
    you will see options 
        Keep password history for:
        24 | passwords rememebered
EXPLAIN button gives great definitions

7. The password age says hey, in this case it says, change your password. But now you have to use it for a day before you can change it again.
- Which means the way this password policy is now currently set up, I have to wait 24 days, maybe 25 days before I can reuse a password, so I can change it, I'm gonna use it for a day. I could change it again, gotta use it for a day. I could change it right up until 24 passwords remembered









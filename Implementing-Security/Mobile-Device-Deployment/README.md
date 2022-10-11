(MDM) Mobile devices Management

Unified Endpoint Management
- Unified Endpoint Management combines these 3 elements
- Single point of management MDM, EMM and MAM
    Mobile Device Management
    Enterprise Mobility Management
    Mobile Application Management

- Manages
    Traditional and non-traditional devices
    PCs
    Laptops
    Tablets
    Smartphones

Unified Endpoint Management Examples

- Used to be Microsoft Intune  
- Malwarebytes UEM
- IBM Security MaaS360
- Ivanti UEM

SEAndroid ( security Enhanced Android)
- A part of android security
- Uses SELinux
- Implements implicit deny
- Application sandboxing
SE android is the fact that it does application sand boxing, alright. Remember what Sand boxing is, right? Sand boxing isn't quarantining, Sand boxing says we're gonna give this application its own isolated space to operate in, so that if it causes any problems,
- Two Modes

    Permissive mode: Now permissive says, hey I'm gonna warn you Dan, you shouldn't have done that, you shouldn't have done that, but I'm gonna go ahead and let you do it anyways

    Enforcing mode: So enforcing mode says, hey, I'm gonna warn you but then I'm gonna shut whatever that operation is down. 
# How does it work?
EX:
Enforcing is where we need that security, right? And depending on some of the deployment models, we'll see coming up enforcing would be where you need strong security. Your company has personally identifiable information they've got very sensitive information, that they don't want going anywhere.



But I want you to think about the hardware security model, it can be a dedicated device that is actually racked and stacked inside of your data center. Or it could be something that puts is literally like a graphics card placed in a server in a Pc I E slot


MicroSD HSM(Hardware Security Module)
- Secures Mobile Devices
- Functions
    Network Authentication
    Data storage encryption
    key generation, rotation and protection
    End-to-end communication

# Summary 
So it's a really, really good thing to have and the last thing to keep in mind is that it's really super tiny, right? Have you ever seen one of the microSD cards, never seen them in things like raspberry, pi some of the IOT devices, your phones as well to expand storage. Well now we can expand the security of the device just by putting one of these SD cards in there.

So basically they are able to take that, server level hardware service module(TPM), slap it down into the little microSD.



Deployment models

Bring your own device (BYOD)
- Employee assume complete responsibility
- Security management can be difficult
- Less sensitive data
- Least expensive upfront

Choose your own device (CYOD)
- Choose your own device ( Choose from a pre approved device)
- Limited selection
- Preconfigured security controls
- Reduces veriety
- Streamlined support
- Slow deployment
- Increases upfront cost

Corporate-owned personally enabled (COPE) Company chooses it for you
- Most expensive model
- Company assumes complete responsibility
- Paid for by company
- Greatest Company Control
- Speeds up deployment time
# Summary
We've got one platform. These are the phones that you use. We stood up a blackberry server. You use this, or you don't get a company phone.

Virtual desktop infrastructure (VDI)

# How does it work?
- This is an extension of the VDI solutions that we've really already talked about. So when we talk about virtual desktop infrastructure, we can use things like thin clients. And thin clients can connect to a centralized server and they can view their desktop. They can work with it. They can log into the desktop, use the product that line of business applications that they need to use. 

- And there's a centrally managed server there and all of the desktops are basically running there, but we're basically reviewing them remotely. It gives your company centralized administration. Well, you can also do that in a mobile based situation too. And what I mean by that when we talk about virtual desktop infrastructure, it's the same thing. The desktop infrastructure is kind of like desktop as a service, if you will. You can be connected to cloud based infrastructure. 

- And you can connect with your virtualized device, you have the application sandbox, cuz it's really nothing more than what you would say is like a browser. It's running on a centralized location. But somewhere else you still have that centralized management, and deployment of applications over the entire desktop experience. And it's viewed locally, if you will, on the mobile device itself


Virtual desktop infrastructure (VDI)
- Running Remotely
- Viewing locally
- Desktop environment is fully managed
    Persistence 
    
    non-persistent: And we talked about non persistent. That means the moment the user logs off, the entire desktop environment is scrubbed, or if you will reset. And the next time we connect back to it, we're gonna have a new fresh clean and environment.


    
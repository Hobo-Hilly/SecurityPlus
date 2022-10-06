IAAA
- Identity = Who are you?
- Authentication = prove it
- Authorization = What can you do?
- Accounting = What did you do?



Authorization and Authentication


- Identity: So identification is about establishing who you are
- Identity is something separate, that actually comes before we authenticate
- Could be your name/ username/ Identification Number

How do I prove that I am who I say I am?

- Password
- Fingerprint
- Smartcard

Authentication doesn't prove, truly you are who you say you are. What it is, is really a validation of a set of credentials

Authentication: 

Authorization Factors (Something you know)
(KBA)Knowledge-based authentication
    - Static KBA
    - Dynamic KBA

Authorization Factors (Something you have)
    - Smart Card
    - Jump Drive

Authorization Factors (Something you are)
    - Fingerprint
    - Facial Recognition
    - Retina scanner

FYI: If you combine two or more of these, you get multi factor authentication. You might hear it abbreviated MFA. Most commonly we hear to FA, that's a two-factor authentication. If you combine three, three factors, right, it's a multi factor, it's more than one


Authorization Factors (Somewhere you are)
- Geo Location
- Specified Networks/Ports allowed/not allowed


-Authorization
- What can you access?
- Log on to a workstation
- Print to a printer



-Accounting
What have you done?

Event logs

Security Logs

Audit logs


Account Management - Password Keys
- YubiKey (external)
- Mobile Devices (external)
- Biometrics (internal)
- FIDO U2F, UAF, CTAP and FIDO2

FIDO = Fido is Fast Identity Online
- It's a set of open standards, if you will, that allows you a fast log-on experience across websites and applications
These are some of the standards below

U2F = Universal Second Factor

UAF = Universal Authentication Framework

CTAP = CTAP Is another one out there that's part of the W three C's web auth and FIDO2 combine


Authentication Management - Password Vaults
                            Online Banking
                            Shcool login
                            online email
                            company portal
Authentication Management - TPMs Trusted Platform Modules 
                            This is an embedded crypto-microcontroller i.e. it's a CPU that holds cryptographic information
                            It can store things like authentication artefacts, platform configuration registers, passwords, encryption keys, Certificates , Platform configuration states

                            And it is physically in the device if that module or that chip if you will, that CP. You type microcontroller gets removed or altered in any way. You can't log into the system, the system is considered compromised and what will happen is this little chip right here will actually do something known as crypto shredding. It'll shred all the information. And lock you out of the system.

                            That's a configuration state. We use things for Trusted Platform Modules to do like things like attestation. Alright, so Dan says, Hey, I'm the administrator. All of my workstations for security purposes need to have this security baseline. If I start that computer up and I send that configuration to another server and it checks it and it says. Hey, this is the policy Dan's configured, but what I'm seeing here doesn't match that system shuts down or worse. Gets kicked to a remediation network where you can come into compliance. Or maybe even worse, it fails closed and you don't gain access at all until you remedy that situation.

                            So that's what a TPM is. It's a processor chip that's stored somewhere, or embedded somewhere on the motherboard.

Account Management - HSMs Hardware Security Module
                            It is a hardware based appliance that can be very expensive and it does a lot of the same things. If you will That a TPM does, but it's not tied to a specific machine.

                            It does this for all your machines. An application goes to run, it needs to check the HSM for a matching certificate before it can execute.

                            These are good for doing things like securing keys. Encryption and decryption, authentication and even going as far as things like digital signing.

                            So think of the hardware security module as kind of like a removable or a mobile TPM.







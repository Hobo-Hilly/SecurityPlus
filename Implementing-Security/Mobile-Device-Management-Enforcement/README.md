Home > Devices > Configuration Profiles > SY0-601 Mobile Device Configuration Policy

Mobile device management (MDM)
- From Microsoft's (Microsoft Endpoint Manager Admin Center)
- This is a very Robust Option and used in a lot of environments today
FYI: Microsoft Offers a 1-month free trial of this product as of 10/12/222

Apps
We don't want just random APKs, and the Android installer files, right, randomly installing iOS based files too. So let's go ahead and show. What you do is, you can create some policies that'll allow you to manage these devices, and then enforce those configuration settings
# How does it work?

EX: From Microsoft Endpoint Manager admin center

1. (From the menu on the FAR left) Select Devices
2. (From the menu 2nd from the left) Scroll down and select 'Configuration policies'
3. Select the configuration policy you wish to work with. (We are selecting the example Mobile Device Coonfiguration Policy)
EX: What you will see... 
Profile Name                            Platform                   Profile Type               Assigned
SYO-601 Mobile Device Configu...        Windows 10 and later       Device restrictions        No

4. Select Properties
... Dashboard > Devices >
EX: What you might see

|   Search (Crtl+/)   |

! Overview

|Manage|
Properties

|Monitor|
Device status
User status
Per-setting status

5. Select Edit under 'Configuration settings'

... Dashboard > Devices > SYO-601 Mobile Device Configuration Policy
EX: What you might see

|   Search (Crtl+/)   |

! Overview

|Manage|
Properties  ***  This tab is in grey because it should be highlighted

|Monitor|
Device status
User status
Per-setting status

After Selecting edit

... Dashboard > Devices > SYO-601 Mobile Device Configuration Policy >

EX: Of what you might see

Device Restrictions
windows 10 and later


1. Configuration settings  |   2. Review and save

^ App Store
^ Cellular and Connectivity
^ Cloud and Storage
^ Cloud Printer
^ Control Panel and Settings
^ Display
^ General
... you can scroll down further

|Review + save| |Cancel|

# Under the ^ App Store tab

    App store(mobile only)              Block || Not configured
    Auto-update apps from store         Block || Not configured
    Trusted app installation            Not configured  (Vendors that use code signing)
    Developer unlock                    Not configured
    Shared user app data                Allow || Not configured
    Use private store only              Allow || Not configured
    Store originated app launch         Block || Not configured

|Review = save|  |Cancel|

# How to get to controls on sideloading apps && how to get to User Devloper Features
1. Rt click start button and select settings
2. Select update and security
3. Go down to 'For Developers'


# Use Cases
We can control that as well through the cellular options. >> Definitely, so let's take just a second here and say, well, what might we wanna control? Well, maybe I don't want you to be able to do things like carrier unlocking and changing carrier plans, right? If you've got one of those corporately owned, personally enabled devices, or maybe it's just corporately owned, right? They have a vetted carrier that they wanna use, right? Do you want to allow your end users to connect, or automatically connect to things like hotspots, right, to Wi-Fi base networks? Well, we can control that to some of these policy settings as well.

# Cellular and connectivity tab
    Cellular data channel
    Data roaming
    VPN over the cellular network
    VPN roaming over the cellular network
    Connected devices service
    NFC (Near Field Communications)
    Wi-Fi
    Automatically connect to Wi-Fi hotspots
    Manual Wi-Fi Configuration
    Wi-Fi Scan interval (Mobile Only)

    Bluetooth
    Bluetooth discoverability
    Bluetooth pre-pairing
    Bluetooth advertising
    Bluetooth proximal connections
    Bluetooth allowed services

# General Tab

Screen capture (mobile only)
Copy and paste (Mobile only)
Manual Unenrollment
manaul root certificate installation
camera
OneDrive File sync
Removable Storage
Geoloaction
Internet sharing
Phone reset
USB connection
AnitTheft mode (Mobile only)
Cortona
Voice Recording(Mobile only)
Device name modification (Mobile only)
Add provisioning packages
Remove provisioning packages

# Messaging Tab
Message Sync
MMS 
RCS Rich Communication Service) This will be taking over SMS soon

-------------------------------------------------------------------------------------------------------------------------------------

Application management

Third-party locations
Trusted installation sources
Sideloading(Show Update and Security)
Cellular

NFC, Hotspots, WiFi, Bluetooth
General

Camera
External(removable media)
Geolocation
USB connection(tethering, USB-to-go)
Microphone (Voice recording)
Messaging

MMS and RCS

-------------------------------------------------------------------------------------------------------------------------------------

# Password Tab

Required password type 
Minimum Password Length
Number of sign-in failures before wiping
Maximum minutes of inactivity until screen locks
password expiration (Days)
Prevent reuse of previous passwords
Passwords, PINs, Biometrics, Screen Locks
Endpoint Security Manger Dashboard - Apps

Application management
Home > Devices > SY0-601 iOS Compliance Policy

Content management
Rooting/jailbreaking
Push notifications
Home > Devices SY0-601 Android Compliance Settings

Third-party application stores
Home > Devices - Compliance Policy Settings (When leaving, marked as non-compliant)

Geofencing
Remote wipe

Devices > pick a device > wipe
Discussion

Containerization
Storage Isolation
Carrier unlocking
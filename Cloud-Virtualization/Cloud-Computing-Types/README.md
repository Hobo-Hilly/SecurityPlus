NOTE: 


Cloud Computing
# How does it work?
EX:
Cloud computing providers network, they have all the resources. They process the information, they store the information. And then the information is typically returned to us in a form of a web browser.

IoT devices, there can be billions of them scattered everywhere entire sensor Nets. Little remote telemetry units, in things like scada based systems if you will which for the most part have been air-gapped. But now we're connecting them and have been for a while to TCP IP based networks.

Now when we talk about cloud computing and the concept of IoT devices, a lot of times we need real-time analysis, right? We need that information to be computed and we need it given back to us, so that we can do real-time analysis on it. 
 
So for instance, think about sensors if you will, that control the heat to a certain factory, right? Or maybe a sensor that's detecting water that raises or lowers some kind of floodgate, if you will, right? We don't want that information taking a long time. 
 
And if you look at the fact that a lot of times these data centers can have a great geographical distance between them, that can introduce a little bit of latency by sending that information into the cloud waiting for it to be processed and then returned to us

Edge Computing
- What we wanna do is we wanna keep the cloud completely out of it

Because if you need that true real time analysis, any delay sending that information up to the cloud, letting it be processed and then returned to you, might be detrimental to what you're trying to accomplish with those IoT devices

So if we can keep that information being calculated on our internal networks, then what we can do is potentially free up some of the time get better performance.

# Summary
''
So that's edge computing, essentially allows the devices do their own calculations and then we can store that information locally. And we can get that real time information back to us, rather than some of the delay or the latency, if you will, by sending it over the public networks, getting it routed all the way up over the internet, if you will, into the cloud providers network and then coming back and returning that information to us
''
- Edge computing probably one of the fastest, from a security standpoint. What you should know is that edge computing are gonna be a lot easier to secure.


Fog Computing
- Fog computing what it uses is what is known as an IoT gateway.

- And that information is sent to the IoT gateway. Now in between, if you will, abstractly between the cloud providers network and the edge network, we have what are known as fog nodes.

- The IoT, gateway collects and aggregates all that information and then it sends it to the fog nodes

- Now the fog nodes, they're gonna do the processing. 

- And then they return that information back to the IoT gateway, 

- which then can be stored and used in order to meet whatever your company necessities are

- - - - - - - -  -                                                  - - - - - - - - - - - - - - - - - - - - - 
- Cloud Provider -   <>=======<>  * * * * *                        -   Company's Internal Network
- - - - - - - -  -                * FOG   *                      -   
                                  * NODE  *                     -
                                  * * * * *                   -  
                                                            -
                                * * * * *               * * * * * *           # # # # # # # # # # #   
                                * FOG   *               * IoT     *         #       All 
                                * NODE  *  <>=======<>  * Gateway * <---->  #   IoT   Devices
                                * * * * *               * * * * * *         #     On Co. Internal
                                                           -                #  Network
                                * * * * *                  -       * * * *  # # # # # # # # # # # # #
                                * FOG   *                  -       * IoT *
                                * NODE  *                  -       * DB  *
                                * * * * *                   -      * * * * 
                                                             -
                                                                - - - - - - - - - - - - - -

Managed Service Providor (MSP)


Managed Security Servicer Provider (MSSP)


Software-defined networing (SN)


So that's edge computing, essentially allows the devices to do their own calculations and then we can store that information locally. And we can get that real time information back to us, rather than some of the delay or the latency, by sending it over the public networks, getting it routed all the way up over the internet, if you will, into the cloud providers network and then coming back and returning that information to us
# Computer Networking(8E)

![rw-book-cover](https://readwise-assets.s3.amazonaws.com/media/reader/parsed_document_assets/35725828/PY-QNxgm5s6Zfay4hK6Ac422aTF_UspwnxR5rT5Qdx0-cover_tDUecj4.png)

## Metadata
- Author: [[James Kurose]]
- Full Title: Computer Networking(8E)
- Category: #articles
- Document Tags: [[computer science]] [[network]] 
- Summary: This book provides an overview of modern computer networking, including protocols, technologies, and underlying principles. The book examines ISPs and their interconnection, end systems, packet switches, and other components of the internet. Different protocols are used to achieve different communication tasks. The book covers topics such as protocol layering, service models, reliable data transfer, TCP, congestion control, and the Internet Protocol.

## Highlights
### Chapter 1. Computer Networks and the Internet 
#### 1.3 The Network Core 
##### 1.3.1 Packet Switching
- Most packet switches use store-and-forward transmission at the inputs to the links. Store-and-forward transmission means that the packet switch must receive the entire packet before it can begin to transmit the first bit of the packet onto the outbound link. ([View Highlight](https://read.readwise.io/read/01k0g04g4hbs5ryhq8e9kbzpwj))

- Each packet switch has multiple links attached to it. For each attached link, the packet switch has an output buffer (also called an output queue), which stores packets that the router is about to send into that link. ([View Highlight](https://read.readwise.io/read/01k0h43pa642pxc600tgb2pby2))

- Thus, in addition to the store-and-forward delays, packets suffer output buffer queuing delays. ([View Highlight](https://read.readwise.io/read/01k0h4kq525ypbt5tjy0khp8n8))

- Since the amount of buffer space is finite, an arriving packet may find that the buffer is completely full with other packets waiting for transmission. In this case, packet loss will occur—either the arriving packet or one of the already-queued packets will be dropped. ([View Highlight](https://read.readwise.io/read/01k0h4mc238p2vnep6vzp3dh17))

- More specifically, each router has a forwarding table that maps destination addresses (or portions of the destination addresses) to that router’s outbound links. ([View Highlight](https://read.readwise.io/read/01k0h510b5vd24t7h2zqsphrg8))

- But to whet your appetite here, we’ll note now that the Internet has a number of special routing protocols that are used to automatically set the forwarding tables. ([View Highlight](https://read.readwise.io/read/01k0h52ppkh4dmggnay9hs4gf3))


##### 1.3.2 Circuit Switching
- There are two fundamental approaches to moving data through a network of links and switches: circuit switching and packet switching. Having covered packet- switched networks in the previous subsection, we now turn our attention to circuit- switched networks. ([View Highlight](https://read.readwise.io/read/01k0h5p4e61ar0ksqes3yh35xt))
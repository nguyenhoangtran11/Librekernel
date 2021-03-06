![librerouter - logo](https://cloud.githubusercontent.com/assets/13025157/14472862/85e49ae0-00f5-11e6-9591-163f1acd5098.png)

![servidor personal v03b](https://cloud.githubusercontent.com/assets/13025157/22333399/505bcd5c-e3d6-11e6-9f6c-9acf2d2f4bff.jpg)

#***Services that run in Librerouter***

![servicecomparison](https://github.com/Librerouter/Librekernel/blob/gh-pages/images/15.png)

|App|Decentralized|AnonymInsid|Ncryptclientside|Ncryptservrside|PubPrivF2F|ExposepubIP|
|:---|:---|:---|:---|:---|:---|:---|
|OwnCloud|Yes|No|No|Yes|PrivtFederation|Yes|
|Mailpile|Yes|No|4096DSAelg|No|Private|Yes|
|Rouncube|Yes|No|4096DSAelg|No|Private|Yes|
|Diaspora|Yes|No|No|EncFS|Public|Yes|
|Friendica|yes|not|not|EncFS|Public|yes|
|YaCy|Yes|No|EncFS|Public|Yes|No|
|TahoeI2p|Yes|Yes|Yes|owncloud|Public|No|
|ProsodyTOR|Yes|No|Yes|No|Public|No|
|RTCio|Yes|No|Partially|No|Public|Yes|
|TOR|No|Yes|No|May Be|Public|No|
|I2P|Yes|Yes|No|Yes|Private|Yes|
|Dovecot|Yes|No|?|Public|Yes|No|
|Postfix|Yes|No|?|Public|Yes|No|
|:---|:---|:---|:---|:---|:---|:---|

#***Overview of Linux Libre and Libre Kernel for personal cyber security and privacy***

##***The need for this technology***

- Traffic Sniffing: those that are monitoring your traffic (e.g. government spy/monitoring institutions)
		
		-passive actions: collecting general data from worldwide. 
- Malicious Internet nodes: better known as blackbones. 
- Your Internet provider (ISP): may attempt to misuse your data in ways such as DNS spoofing, traffic shaping, DPI.
- Back-doors in software (i.e. Windows, favourite of the NSA) and hardware (Cisco, Huawei,Fortinet,TP-Link) to achieve one or more of the the following malicious objectives: Control, Espionage, Privacy spooks, politics, police interception, apply bigdata to your cloud for marketing, law enforcement, market research, or simply hacking outbreaches.

##Overview of Libre Kernel components:

##***Introduction to what is called a 'Pseudo Backdoor' (a secret entry door in the program's code)***

Software components with no available source code (how the program was made) are called binary blobs (Binary Large Objects) or a collection of binary data stored as a single obscure object. As such, they are mostly used for proprietary firmware images in the Linux kernel like hard drives, Ethernet, USB controllers, graphic cards etc. Though generally redistributable, binary blobs do not give the users the freedom to review the source code, or any other programmer the ability to check the program itself, audit, scrutinize, modify or, consequently, redistribute any further evoluted version.
[Blob Example](#blob-example)


##***How does Libre Router protect us?***

Libre router, combined with Linux Libre and the hardened OS configuration shown above, protects us in many ways, as follows:
 
- With our OS, a secured open operating system with the hardened version based on
  Debian Libre and LFS  https://cageos.org/index.php?page=technical#kernel
- Decentralizing the services you consume from the cloud at local alternatives (making it impossible to 
  apply big data enemy corps.) 
- A decentralized anonymous Search Engine with admin rights.  
- A filter-connector for your Social Networks in one single place using decentralized social network Friendica.
- Secure decentralized video conferences based in XMPPoverTOR or WebRTC. 
- A secure Storage System with collaborative tools based in TahoeLafs over i2P and blocksnet.
- Transparent Email encryption for your actual email. 
- Anonymous web traffic enforcer Ad-blocker, intrusion prevention system, anti-virus and anti-tracking technology 
  for your web browsing, filtering viruses, exploits, malware, ads, bad reputation IPs, and tasteless content. 
- Protection from different services that track data transactions like Internet proxy, clamav, surikata proxy, snort unbound DNS lists, iptables, etc.
- Self hosted obfuscated authentication (dissolves the legal relation between user-human and legal-name), forcing encryption in transport and in rest data.
- Network filtering the MetaData that expose you, like scripts, cookies, browser info, docs meta, etc.  

The following security pyramid diagram explains the different components that make our network secure.

![mempro](https://github.com/Librerouter/Librekernel/blob/gh-pages/images/6.png)

The following image shows how Libre Router protects you by sitting between the outer Internet and your private network

![metapollas](https://github.com/Librerouter/Librekernel/blob/gh-pages/images/13.png)

#Technical Overview

Libre Router uses technologies like Free Open Source hardware, Linux Libre, hardened Linux, encryption and many others to protect the end user or clients against intrusions, malicious attacks, and unwanted advertisements creating a LAN (Local Network area) inside another LAN (your internet router LAN)

###***Using Libre Router to build a secure network***

####From inside secureLAN
Imagine you're at home and you use the services locally (local server, local services)

![from home](https://github.com/Librerouter/Librekernel/blob/gh-pages/images/7.png)

From being routed through any Darknet 
Imagine you're at work, then you use the services in your home through Darknets (remote server, remote services in TOR, I2P, and other VPNs). In your company it's just https traffic so nobody can see inside. You can use your personal storage, social network and everything with security and obscurity. 

![10](https://cloud.githubusercontent.com/assets/13025157/18872250/c8db5f30-84b9-11e6-8f2f-1e1d7be0b42b.png)

The following diagram shows the current issues, safeguards against them, and the open source components that help us get rid of them. 

![Issues_Safegaurds](https://github.com/Librerouter/Librekernel/blob/gh-pages/images/14.png)


#***Decentralized collaboration and makerplaces***

https://cageos.org/index.php?page=apps&section=Collaborative

https://openbazaar.org

#***A decentralized anonymous  Search Engine with admin rights.***

![data center or decent-ralization](https://github.com/Librerouter/Librekernel/blob/gh-pages/images/11-12_v2.png)

![search engine](https://github.com/Librerouter/Librekernel/blob/gh-pages/images/31_v2.png)

https://cageos.org/index.php?page=apps&section=SearchEngine

A filter-connector for your Social Networks in one single place using decentralized social network Friendica.

https://cageos.org/index.php?page=apps&section=SocialNetworks

![socialnetworks](https://github.com/Librerouter/Librekernel/blob/gh-pages/images/33.png)

#***Secure decentralized video conferences based in XMPPoverTOR or WebRTC.***
- 
https://cageos.org/index.php?page=apps&section=Collaborative

![rtcio](https://github.com/Librerouter/Librekernel/blob/gh-pages/images/8-9_v2.png)


#***A secure Storage System with collaborative tools based in TahoeLafs over i2P and blocksnet.***

https://cageos.org/index.php?page=apps&section=StorageOwnCloud

https://cageos.org/index.php?page=apps&section=DecentralizedBackup

#***Transparent Email encryption for your actual email.***
- 
https://cageos.org/index.php?page=apps&section=SecureEmail

![34-35](https://cloud.githubusercontent.com/assets/13025157/19035791/0cc2588c-896c-11e6-88a2-fbf83dc3abfe.png)

#***Service: The Decentralized Social Network***

Librerouter can act as a unified entry and outgoing point for all of your posts across social networks, as well as a filter for what is important to you. For example, do you hate cat videos? (Really? Can I get you some help?)
You can use Librerouter to filter them out when it automatically imports posts from Facebook, Twitter, and Pinterest!
You control your incoming and outgoing posts, and push your posts from a single place to everywhere with no need to open each social network in a separate tab. We aren’t asking you to give up on social media, instead we offer you a way to be in the captain’s chair.

##Service: The Decentralized Video Conference

With federated XMPP servers for authentication, yet perfect for discovering users outside the Librerouter network with security from the normal web.  
Unauthenticated and decentralized web browser video conferencing through anonymous links to create fast video conference rooms without third parties or middlemen involved.

##Service: Decentralized Indestructible Storage; the RockStar app

Imagine all the important information you have stored on the hard drive of your computer. You are just one hardware failure away from disaster. After all, when did you do your last backup? Unfortunately, centralized storage solutions such as Dropbox and Google Drive also present a variety of risks:

• Data kidnapping: A real example was Mega. (FBI closed it in 2009). 
• Disaster: Your external hard disks fail or stolen. (no disaster recovery)   
• Privacy: You're at risk of having your data hacked and stolen if it’s not encrypted.

![gridstorage](https://github.com/Librerouter/Librekernel/blob/gh-pages/images/16.png)

The decentralized (i2p) version of Tahoe LAFS-Grid (with protections against Sybil attacks and upload Dodos) is a new way to make your data indestructible. A grid splits your files up into little pieces, encrypts them, and spreads them out geographically, making the data immune to any disaster or service outage.
In our decentralized system your valuable information is encrypted three times:
1. Before it even leaves your computer, in the web browser
2. In the collaboration tool before the data goes to the hard disk
3. When backing up to the grid, the slices will also be encrypted. 

![tahoe](https://github.com/Librerouter/Librekernel/blob/gh-pages/images/17.png)

The decentralized (i2p) version of Tahoe LAFS-Grid (with protections against Sybil attacks and upload Dodos) is a new way to make your data indestructible. 

![storage](https://github.com/Librerouter/Librekernel/blob/gh-pages/images/18-19.jpg)

A grid splits your files up into little pieces, encrypts them and spreads them out geographically, making it immune to any disaster or service outage.

![grid4](https://github.com/Librerouter/Librekernel/blob/gh-pages/images/20.png)

You can also sync your home Librerouter with all of your portable devices to have the same files and receive the same alerts in real time. If someone steals your cube or for some reason it is destroyed, you can simply buy a replacement Librerouter server and recover your lost data automatically from the Grid. In minutes you’re up and running again!
- https://cageos.org/index.php?page=pilarservices
![espacioblanco](https://cloud.githubusercontent.com/assets/17382786/14488687/b41768ba-0169-11e6-96cd-80377e21231d.png)



##***About Linux Libre***

Linux Libre is a free/Libre version of the Linux kernel suitable for use with the GNU Operating System.
It removes non-free components from Linux that are disguised as source code or distributed in separate files. It also disables run-time requests for non-free components, shipped separately or as part of Linux, and documentation pointing to them. The GNU Linux Libre project takes a minimal-changes approach to cleaning up Linux, making no effort to substitute components that need to be removed with functionally equivalent free/Libre ones.

As explained earlier, it's an operating system kernel and a GNU package whose aim is to remove from the Linux kernel any source code with blobs, with obfuscated source code, or proprietary licenses. Software components with no available source code are called binary blobs and, as such, are mostly used for proprietary firmware images in the Linux kernel.

##Ways of Proprietary firmware removal and its good effects

1. Deblobbing : This is the cleaning up and verification of Linux tarballs and patches for non-Free blobs. This is done using the script files deblob-check for verifying the Vanilla Linux kernel tarball for any non-free proprietary blobs. Similarly, for removing the blobs there is a scripts deblob-* where * represents the Kernel version it's tested and applicable for. The script can be found here <http://www.fsfla.org/svn/fsfla/software/linux-libre/scripts/>

2. VRMS(Virtual Richard M. Stallman)
A program that analyzes the set of currently-installed packages on a Debian-based system, and reports all of the packages from the non-free tree which are currently installed. Software gets categorized in the non-free tree when it is agreed not to be too problematic for 
Debian to distribute but does not meet the Debian Free Software Guidelines and, therefore, cannot be included in their official distribution. For each program from "non-free" installed, VRMS displays an explanation of why it is non-free, if one is available. More information about VRMS can be found at <https://alioth.debian.org/projects/vrms/>

3. Keep the base deblobbed kernel compilation clean:
Use clean basement and don't allow installation of 3rd party software that is established by trust control as free of blobs. An example of this for Linux Libre can be found at <http://www.linux-libre.fsfla.org/pub/linux-libre/releases/LATEST-4.6.N/> 

###Kernel

The Linux kernel is a Unix-like computer operating system kernel. The Linux operating system is based on it and deployed both on traditional computer systems such as personal computers and servers, usually in the form of Linux distributions[9], and on various embedded devices such as routers, wireless access points, PBXes, set-top boxes, FTA receivers, smart TVs, PVRs and NAS appliances. The Android operating system for tablet computers, smartphones and smartwatches is also based atop the Linux kernel.
The Linux kernel was conceived and created in 1991 by Linus Torvalds[10] for his personal computer with no cross-platform intentions, but has since expanded to support a huge array of computer architectures, many more than other operating systems or kernels.

Debian vanilla kernel:
- Doesn't include any non-free firmware (bugs aside), but it allows users to load non-free firmware if they wish to do so, which might pose the same kind of threats as Trojans, tracking, kernel training with malicious software, sniffing, etc.
	
Linux Libre kernel:
- The Linux Libre kernel doesn't include any non-free firmware or anything looking like firmware, and it prevents users from loading non-free firmware even if they wish to do so.
- Is built by running a deblob script on the kernel source code. This goes through the kernel source code and makes various firmware-related changes. 
- Any firmware for which source code is available is preserved, but the script must confirm that the source code is available. 
- Any module requiring firmware is stripped of the ability to load it. 
- Any source code which looks like firmware (sequences of numbers) is removed. 
- Any file containing only firmware (e.g. the contents of firmware/radeon) is removed. 
	
##Libre Router

In the previous section we talked about Linux Libre which is a Linux based operating system kernel and a GNU package.
In this and the following few sections we are going to talk about its counterpart called LibreRouter which is no more than an Open Source hardware with no malignant backdoors in the used programs, with source code for kernel logic as well as firmware where Open Source developers will have as much control as possible to bypass the censorship and ensure security for the users.

After a series of tests requested, I must say that we are not using any type of non-free package, passing vrms does not detect any.

root@librerouter:~# vrms

No non-free or contrib packages installed on librerouter!  rms would be proud.
root@librerouter:~# 

DPKG
checking contrib/non-free

root@librerouter:~# dpkg-query -W -f='${Section}\t${Package}\n' | grep ^non-free
root@librerouter:~# dpkg-query -W -f='${Section}\t${Package}\n' | grep ^contrib
root@librerouter:~# aptitude search '~i ?section(non-free)'
root@librerouter:~# aptitude search '~i ?section(contrib)'

BLOBS

The blob-check script has found one blob in the current kernel of debian jessie, it is related to the free driver of nvidia, maybe it is a false positive but it will be removed when the free kernel (fsfla) is implemented in its entirety.

root@librerouter:/usr/src# /bin/bash deblob-check linux-source-3.16.tar.xz 
linux-source-3.16/drivers/gpu/drm/nouveau/core/engine/xtensa.c within
linux-source-3.16.tar.xz
root@librerouter:/usr/src# 


In the simplest terms it's a GNU Free and Open Source Hardware (FOSH) running GNU software.

A unique integration of open source hardware by GNU software maintained by the Open Source community.
With minimal training and simple documentation you can achieve a decrease in cyber risks levels and increase your privacy.
The aim is to make it really very easy to use for all people, even those without technical computer and networking knowledge, while serving as a simple plug and play system to make your traffic untraceable and secure. It is the future of home networking and only privacy viable data center infrastructure. 

##Open Source Hardware

![ddvdvdvd](https://github.com/Librerouter/Librekernel/blob/gh-pages/images/correction_bulk.jpg)

It consists of physical artifacts of technology designed and offered by the open design movement. Both free and 
open-source software (FOSS) as well as open-source hardware are created by this open-source culture movement and 
apply a like concept to a variety of components. It is sometimes, thus, referred to as free and open-source hardware (FOSH). The term usually means that information about the hardware is easily discerned so that others can make it - coupling it closely to the maker movement. Hardware design (i.e. mechanical 
drawings, schematics, bills of material, PCB layout data, HDL source code and integrated circuit layout data), 
in addition to the software that drives the hardware, are all released under free/Libre terms. The original 
sharer gains feedback and potentially improvements on the design from the FOSH community. There is now significant 
evidence that such sharing can drive a high return on investment for investors.

### Licenses for being open

####LGPL (Lesser General Public License):
The GNU Lesser General Public License (LGPL) is a free software license published by the Free Software Foundation (FSF). 
The license allows developers and companies to use and integrate software released under the LGPL into their own 
(even proprietary) software without being required by the terms of a strong copyleft license to release the source 
code of their own components. The license only requires software under the LGPL be modifiable by end users via source 
code availability. For proprietary software, code under the LGPL is usually used in the form of a shared library such 
as a DLL, so that there is a clear separation between the proprietary and LGPL components. The LGPL is primarily used 
for software libraries, although it is also used by some stand-alone applications. Please visit <https://en.wikipedia.org/wiki/GNU_Lesser_General_Public_License> 

####CC (Creative Commons) License:
A Creative Commons (CC) license is one of several public copyright licenses that enable the free distribution of 
an otherwise copyrighted work. A CC license is used when an author wants to give people the right to share, use, 
and build upon a work that they have created. CC provides an author flexibility (for example, they might choose 
to allow only non-commercial uses of their own work) and protects the people who use or redistribute an author's 
work from concerns of copyright infringement as long as they abide by the conditions that are specified in the 
license by which the author distributes the work.

###***Hardware openess license and confusing "open" terms***

The market is full of crowdfunded projects where the funders claimed that the project is based in open hardware.
What becomes evident following extensive research is that they require the operation of a full range of so-called binary blobs (possible backdoors), chipset restrictions (software required to be signed by the manufacturer), and questions about missing or obfsucated documented parts or schemas/diagrams. The result could be any of these possibilities:

- ARM Trustzone is a blackbox: TrustZone technology within Cortex-A based application processors is commonly used to run trusted boot and is a trusted OS to create a Trusted Execution Environment (TEE). Typical use cases include the protection of authentication mechanisms, cryptography, key material and DRM. As you can imagine this is a big antiopen market mechanism.

- Device drivers: the controllers or chipset may not be opensource (https://en.wikipedia.org/wiki/Device_driver)
- No source code or the compiler is not opensource
- https://en.wikipedia.org/wiki/Source_code 
- https://en.wikipedia.org/wiki/Compiler
- http://unix.stackexchange.com/questions/89897/how-to-compile-the-c-compiler-from-scratch-then-compile-unix-linux-from-scratch
- https://en.wikipedia.org/wiki/Bootstrapping_(compilers)#The_chicken_and_egg_problem
- https://en.wikipedia.org/wiki/Bootstrapping_(compilers)
- https://www.win.tue.nl/~aeb/linux/hh/thompson/trust.html

- No documentation: no schematics on the components of the circuit board.
- Not using free booting boot system. 
- https://en.wikipedia.org/wiki/Coreboot 
- https://www.phoronix.com/scan.php?page=news_item&px=Coreboot-U-Boot-Payload


###***Which are the licenses and certifications that show openness in the hardware?***

- http://www.ohwr.org/documents/294
- http://www.ohwr.org/projects/cernohl/wiki
- http://www.gnu.org/licenses/quick-guide-gplv3.en.html
- http://www.tapr.org/OHL
- http://www.opengroup.org/accreditation/o-ttps
- http://www.fsf.org/resources/hw/endorsement/respects-your-freedom

###***Which are the certifications for privacy and security?***

- www.vub.ac.be/LSTS/pub/Dehert/481.pdf
- https://www.truste.com/business-products/dpm-services/
- https://www.european-privacy-seal.eu/EPS-en/Certification
- http://www.iso.org/iso/catalogue_detail.htm?csnumber=61498
- http://www.tuv.com/en/corporate/business_customers/information_security_cw/strategic_information_security/data_protection_certification/data_privacy_certification.html
- http://www.export.gov/safeharbor/
- https://safeharbor.export.gov/swisslist.aspx
- https://www.tuvit.de/en/privacy/uld-privacy-seal-1075.htm
- http://www.prismintl.org/Privacy-Certification/privacy/about-the-privacy-plus-program.html
- https://www.esrb.org/privacy/
- http://www.privacytrust.org/certification/privacy/
- https://www.datenschutzzentrum.de/zertifizierung/
- http://www.edaa.eu/certification-process/trust-seal/

###***Which are security product certifications?***

- http://www.dekra-certification.com/en/cyber-security
- http://www.exsolutiongroup.com/blog/various-types-of-iso-certification-uae-has-to-offer/
- https://digital.premierit.com/all-about-iso-27001-certification
- https://www.apcon.com/apcon-certified-applications?gclid=CMrqsaCTt8wCFcQp0wodJokNQg
- http://www.cyberark.com/awards/
- https://czarsecurities.com/security-seal
- http://www.teletrust.de/en/itsmig/
- https://iapp.org/certify/cipt/
- http://www.cdse.edu/certification/become.html
- https://en.wikipedia.org/wiki/Evaluation_Assurance_Level
- https://en.wikipedia.org/wiki/Common_Criteria
- http://www.asd.gov.au/infosec/aisep/crypto.htm



[![4954401_orig](https://cloud.githubusercontent.com/assets/18449119/14941752/a885d1f2-0fa7-11e6-883a-317ceb75aff6.jpg)](https://www.youtube.com/watch?v=yzyafieRcWE)

The below picture of Software Wars is not relevant, it should be deleted
![microsoftempire](https://cloud.githubusercontent.com/assets/17382786/14495567/578ee6e6-0190-11e6-9c93-016a32a56a93.png)
![paranoia](https://cloud.githubusercontent.com/assets/17382786/14495569/57af9850-0190-11e6-9051-9a4ed5977457.png)
![backdoorrouters](https://cloud.githubusercontent.com/assets/17382786/14653063/894a02f6-0677-11e6-9e34-963c0535858d.png)
![netneut](https://cloud.githubusercontent.com/assets/17382786/14496448/800de600-0193-11e6-885e-5537c8714c58.png)
![9dovoix](https://cloud.githubusercontent.com/assets/17382786/17207521/45ba7c00-54b5-11e6-9f6c-f3236f32b9a1.jpg)


##Blob Example
Example of a blob from vanilla Linux kernel from Linus that gets distributed on kernel.org
Here is one example from Linux-2.6.24/drivers/net/tg3.c 

--------------------------------------------------------------------------------------------
/*
  * tg3.c: Broadcom Tigon3 ethernet driver.
  *
  * Copyright (C) 2001, 2002, 2003, 2004 David S. Miller (davem@???)
  * Copyright (C) 2001, 2002, 2003 Jeff Garzik (jgarzik@???)
  * Copyright (C) 2004 Sun Microsystems Inc.
  * Copyright (C) 2005-2007 Broadcom Corporation.
  *
  * Firmware is:
  *      Derived from proprietary unpublished source code,
  *      Copyright (C) 2000-2003 Broadcom Corporation.
  *
  *      Permission is hereby granted for the distribution of this firmware
  *      data in hexadecimal or equivalent format, provided this copyright
  *      notice is accompanying it.
  */
It then has screenfulls of non-free code like this: 

0x0e000003, 0x00000000, 0x08001b24, 0x00000000, 0x10000003, 0x00000000, 
0x0000000d, 0x0000000d, 0x3c1d0800, 0x37bd4000, 0x03a0f021, 0x3c100800, 
0x26100000, 0x0e000010, 0x00000000, 0x0000000d, 0x27bdffe0, 0x3c04fefe, 
0xafbf0018, 0x0e0005d8, 0x34840002, 0x0e000668, 0x00000000, 0x3c030800, 
0x90631b68, 0x24020002, 0x3c040800, 0x24841aac, 0x14620003, 0x24050001, 
0x3c040800, 0x24841aa0, 0x24060006, 0x00003821, 0xafa00010, 0x0e00067c, 
0xafa00014, 0x8f625c50, 0x34420001, 0xaf625c50, 0x8f625c90, 0x34420001, 
0xaf625c90, 0x2402ffff, 0x0e000034, 0xaf625404, 0x8fbf0018, 0x03e00008, 
0x27bd0020, 0x00000000, 0x00000000, 0x00000000, 0x27bdffe0, 0xafbf001c, 
0xafb20018, 0xafb10014, 0x0e00005b, 0xafb00010, 0x24120002, 0x24110001, 
0x8f706820, 0x32020100, 0x10400003, 0x00000000, 0x0e0000bb, 0x00000000, 
0x8f706820, 0x32022000, 0x10400004, 0x32020001, 0x0e0001f0, 0x24040001, 
0x32020001, 0x10400003, 0x00000000, 0x0e0000a3, 0x00000000, 0x3c020800, 
0x90421b98, 0x14520003, 0x00000000, 0x0e0004c0, 0x00000000, 0x0a00003c, 
0xaf715028, 0x8fbf001c, 0x8fb20018, 0x8fb10014, 0x8fb00010, 0x03e00008, 
0x27bd0020, 0x27bdffe0, 0x3c040800, 0x24841ac0, 0x00002821, 0x00003021, 
0x00003821, 0xafbf0018, 0xafa00010, 0x0e00067c, 0xafa00014, 0x3c040800, 
0x248423d8, 0xa4800000, 0x3c010800, 0xa0201b98, 0x3c010800, 0xac201b9c, 
0x3c010800, 0xac201ba0, 0x3c010800, 0xac201ba4, 0x3c010800, 0xac201bac, 
0x3c010800, 0xac201bb8, 0x3c010800, 0xac201bbc, 0x8f624434, 0x3c010800, 
0xac221b88, 0x8f624438, 0x3c010800, 0xac221b8c, 0x8f624410, 0xac80f7a8, 
0x3c010800, 0xac201b84, 0x3c010800, 0xac2023e0, 0x3c010800, 0xac2023c8, 

we call these Hexadecimle numbers as blogs and it's hard to impossible 
to know its purpose and effect on our system.  



![milestones](https://cloud.githubusercontent.com/assets/17382786/14495088/46ff610e-018e-11e6-960a-b9725c7f6127.png)

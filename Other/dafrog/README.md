# removed v4.7 by Unknown

## ⁉️ This is part of an mIRC script archiving project. Please read the [README](https://github.com/sorzkode/mirc_scripts_archive/blob/main/README.md) file located in the [main project repository](https://github.com/sorzkode/mirc_scripts_archive) for more information / disclaimers

## ⚠️ Important Disclaimers

- **I am not the original author** of this script and do not claim any ownership or authorship
- **Historical Preservation Only**: This script is archived for historical and educational purposes
- **No Support**: I cannot provide support, updates, or fixes for this script
- **Not Thoroughly Tested**: The script has not been thoroughly tested in modern environments
- **Use at Your Own Risk**: Any use of this script is entirely at your own risk
- **Potentially Outdated/Incompatible**: This script was designed for much older versions of mIRC and Windows
- **Educational Value**: This archive serves to document the evolution of IRC scripting and early internet culture

## 🔍 Script Information (metadata parsed from files)

**Script Name:** removed  
**Version:** 4.7  
**Category:** game  
**Authors:** Unknown  
**Email(s):** <x@channels.undernet.org>, <sstone@blag.net>, <michael@advtel.net>, <khaled@mardam.demon.co.uk>, <xhlec@jaguar.wmin.ac.uk>, <thedog@Cust16.Max4.Seattle.WA.MS.UU.NET>, <fil@ihug.co.nz>, <X@channels.undernet.org>  
**Website(s):** [http://directory](http://directory), [http://home1.gte.net/bmk415/](http://home1.gte.net/bmk415/), [http://hightec.com/heaven/index.html](http://hightec.com/heaven/index.html), [http://www.unseen.org/~simpson/plut/](http://www.unseen.org/~simpson/plut/), [http://www.geocities.com/SiliconValley/Park/6000](http://www.geocities.com/SiliconValley/Park/6000), [http://www.nauticom.net/www/keith/gts](http://www.nauticom.net/www/keith/gts), [http://www2.axi.net/mirc](http://www2.axi.net/mirc), [http://www.yahoo.com/Computers_and_Internet/Internet/Chatting/IRC/Channels/](http://www.yahoo.com/Computers_and_Internet/Internet/Chatting/IRC/Channels/)  
**Release Year:** 1997  
**Tags:** wav, trigger, remote script, protection, notify, fserver, rejoin, toolbar, ascii art, nicklist, auto-join, auto-op, slap, timer, alias, dcc, sockets, auto msg, bot, popups, auto voice, interface, swear, greet, kickban, ctcp replies, file server, dialog, coloured text to ease reading., popup  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/Other/dafrog/dafrog.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "dafrog.zip",
  "file_count": 41,
  "file_types": [
    ".exe",
    ".hlp",
    ".ini",
    ".txt",
    ".wav"
  ],
  "max_file_date": "1997-01-19",
  "min_file_date": "1995-10-26",
  "total_size": 1692.11,
  "largest_file": "DAFROG/MIRC.EXE",
  "text": [
    "DAFROG/VERSIONS.TXT",
    "DAFROG/README.TXT",
    "DAFROG/FINGER.TXT",
    "DAFROG/CHANNELS.TXT",
    "DAFROG/ASCII/YUMC1.TXT",
    "DAFROG/ASCII/USA.TXT",
    "DAFROG/ASCII/TRAIN.TXT",
    "DAFROG/ASCII/SNOOPY.TXT",
    "DAFROG/ASCII/SMILEY.TXT",
    "DAFROG/ASCII/SETUP.TXT",
    "DAFROG/ASCII/MUPPETS.TXT",
    "DAFROG/ASCII/HOME.TXT",
    "DAFROG/ASCII/FROG.TXT",
    "DAFROG/ASCII/ELMO.TXT",
    "DAFROG/ASCII/DRAGON.TXT",
    "DAFROG/ASCII/COFFEE.TXT",
    "DAFROG/ASCII/CANADA.TXT",
    "DAFROG/ASCII/BRB.TXT",
    "DAFROG/ASCII/BHEART.TXT",
    "DAFROG/ASCII/BERRY.TXT",
    "DAFROG/ASCII/BEARSC.TXT",
    "DAFROG/ASCII/BBL.TXT",
    "DAFROG/ASCII/BACK.TXT"
  ]
}
```

## 📋 Text Content (from DAFROG/README.TXT)

```text
 mIRC v4.7 documentation, Khaled Mardam-Bey 09/12/96

 Welcome to mIRC v4.7, an Internet Relay Chat Client.

 For those of you new to the internet, IRC stands for Internet
 Relay Chat. The IRC network is a virtual meeting place where
 people from all over the world can meet and talk.

 mIRC attempts to provide a user-friendly interface for use
 with the IRC network.

 It has the following features:

  Coloured text to ease reading.
  Uncluttered display.
  Comprehensive Alias definitions.
  Configurable multi-level popup menus.
  DCC Send/Get/Chat/Resume.
  Scripting commands.
  Finger client.
  Remote CTCP tool.
  Simple Event handler.
  Some basic fonts.
  Ident server.
  Simple File-server.
  URL Catcher.
  Command history.
  Function Key definitions.
  Toolbar with tooltips.
  Finger server.
  Window Switchbar.
  A handful of options.
  Many other useful bits and pieces.

 The various parts of this client have been designed with the aim of
 simplifying and speeding an IRC session.


 To be able to use mIRC, you need several things:

 1. Access to the internet.
 2. Software for your machine that connects you to the internet.
    mIRC requires a WINSOCK.DLL, of which several versions are
    available. You will need this before you can use mIRC.


 Since you're reading this file, then I assume you've already
 run the install program and it has installed all the files
 for you automatically.

 This package should contain the following files:

 16-Bit Installation:

 mIRC.exe               16-bit mIRC
 mLink.exe              16-bit mIRCLink


 32-Bit Installation:

 mIRC32.exe             32-bit mIRC
 mLink32.exe            32-bit mIRCLink


 Both 16bit and 32bit Installations:

 mIRC.hlp               the help file
 IRCIntro.hlp           the IRC Intro file

 readme.txt             this file
 versions.txt           version history

 mIRC.ini               the main configuration file
 aliases.ini            the aliases file
 popups.ini             the popups file
 remote.ini             the remote file
 servers.ini            the irc servers file
 urls.ini               the urls file

 These should all remain in the mIRC directory together.

 To use the 32-bit version you must be running a 32-bit operating
 system and a 32-bit winsock.

 Once you have installed mIRC, you can run it, fill in the required
 setup information, and connect to the IRC server.

 Good luck and have fun!
  -Khaled

 ----------------------------------------------------------------------------
 mIRC v4.7 Internet Relay Chat Client
 Copyright  1995,1996 Khaled Mardam-Bey and mIRC Co. Ltd.
 All rights reserved.

 mIRC is a Shareware program, which means that you can use it legally for 30
 days free of charge to evaluate it. If during, or at the end of, that period
 you decide that you would like to continue using it, please register your
 copy. Your registration will license you to use your copy of mIRC, will
 support work on future versions, new features, and bug fixes, and will
 provide you with technical support via email.

 Please see the Registration section to find out how you can register.

 mIRC may be freely distributed subject to, but not limited to, the following
 terms: mIRC may not be sold or resold, distributed as a part of any
 commercial package, used in a commercial environment, used or distributed in
 support of a commercial service, or used or distributed to support any kind
 of profit-generating activity, even if it is being distributed freely.

 If you would like to distribute mIRC as part of a shareware distribution,
 magazine, internet book, CD ROM, etc. please contact me for permission.

 All commercial use interests in mIRC should be
 directed to khaled@mardam.demon.co.uk

 The integrity of the original mIRC distribution file as distributed by
 Khaled Mardam-Bey is essential. mIRC and all of its related files must be
 distributed together in the original format. The mIRC distribution file may
 not have files added to it or removed from it, and none of its contents may
 be modified, decompiled, or reverse engineered.

 mIRC is provided "AS IS" without warranty of any kind, either express or
 implied, including but not limited to the implied warranties of
 merchantability and fitness for a particular purpose. In no event shall
 Khaled Mardam-Bey be liable for any damages whatsoever including direct,
 indirect, incidental, consequential, loss of business profits or special
 damages, even if Khaled Mardam-Bey has been advised of the possibility of
 such damages.

 mIRC is a registered trademark of mIRC Co. Ltd.
 ----------------------------------------------------------------------------
```

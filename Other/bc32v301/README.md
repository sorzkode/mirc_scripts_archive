# bc32v301 v3.1 by Unknown

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

**Script Name:** bc32v301  
**Version:** 3.1  
**Category:** game  
**Authors:** Unknown  
**Email(s):** <avalon@coombs.anu.edu.au>, <zen@rogerswave.ca>, <mengerle@hotmail.com>, <mirc@dds.nl>, <ircd-three-request@eff.org>, <weehawk@cyber-dyne.com>, <fredde@mbox301.swipnet.se>, <fermanah@enterprise.net>  
**Website(s):** [http://tolson.oulu.fi](http://tolson.oulu.fi), [http://www.mirc.co.uk/index.html](http://www.mirc.co.uk/index.html), [http://www.top.net/zorbac/#Omaha.motd](http://www.top.net/zorbac/#Omaha.motd), [http://www.adelaide.net.au/~nene/ajas.html](http://www.adelaide.net.au/~nene/ajas.html), [http://www.netcom.com/~w_tone/ipa/ipahome.html](http://www.netcom.com/~w_tone/ipa/ipahome.html), [http://www.geocities.com/SiliconValley/5117/](http://www.geocities.com/SiliconValley/5117/), [http://home.earthlink.net/~byondf1/ircfriends.htm](http://home.earthlink.net/~byondf1/ircfriends.htm), [http://www.cris.com/~flipr/rngds/](http://www.cris.com/~flipr/rngds/)  
**Release Year:** 1997  
**Tags:** wav, insult, trigger, remote script, protection, notify, fserver, rejoin, away system, toolbar, ascii art, nicklist, auto join, trivia, auto-join, auto-op, script pack, slap, timer, alias, dcc, access list, dice, sockets, greeter, uptime, bot, interface, uno, swear  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/Other/bc32v301/bc32v301.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "bc32v301.zip",
  "file_count": 50,
  "file_types": [
    ".dll",
    ".ex",
    ".exe",
    ".hlp",
    ".ico",
    ".inf",
    ".ini",
    ".log",
    ".lst",
    ".stf",
    ".txt"
  ],
  "max_file_date": "1997-01-31",
  "min_file_date": "1997-01-31",
  "total_size": 2446.62,
  "largest_file": "BC32v301/mirc32.exe",
  "text": [
    "BC32v301/channels.txt",
    "BC32v301/finger.txt",
    "BC32v301/mirccmds.txt",
    "BC32v301/mircfaq.txt",
    "BC32v301/readme.txt",
    "BC32v301/rfc1459.txt",
    "BC32v301/versions.txt",
    "BC32v301/blank1.txt",
    "BC32v301/blank2.txt",
    "BC32v301/pager.txt",
    "BC32v301/blank.txt",
    "BC32v301/7.txt",
    "BC32v301/default.txt",
    "BC32v301/nickchan.txt",
    "BC32v301/notes.txt",
    "BC32v301/opnotes.txt",
    "BC32v301/rules.txt",
    "BC32v301/scriptno.txt"
  ]
}
```

## 📋 Text Content (from BC32v301/readme.txt)

```text
 Blue-Chip  for DALnet 1997 Version 3.01



Please read the changes to 3.01 below.



If you did not accept the DEFAULT Directory c:\BCscript Please

re-install otherwise it will not work.



Thank you for using Blue-Chip for DALnet 1997.



Introduction



My wife and I have been an OPs in Funfactory on DALnet for sometime

now. It became obvious very fast that the channel could not be 

controlled effectively without the use of Scripts.  It was also

evident that flood protection scripts were also required in 

Funfactory in order to retain our server connection.  Therefore 

I have been working slowly on Scripts to fill the needs of Funfactory.



Please pardon my french and spelling mistake.



Rights and Liability.



This Script package is the Property of Blue-Chip.  Please do not distribute

portions of it or alter my routines without my prior consent.  I have spent

a large amount of time designing and testing in order to please friends.

Feel Free however to distribute the entire package.. files called 

bc32v30.zip(win95) or bc16v30.zip(win3.1).  In using these Scripts, you are

agreeing to exampt me from any liability/responsibility for Damages or

virus or others which may occur with or by the use of these scripts. 



NOTE1: These Scripts are VIRUS FREE in its original installer.  I wrote the 

above, simply to protect myself against anything which could happen beyond

my knowledge or control.  I did not put any Flooding Scrits because

i do not want my scripts to be involved in Lame and Wrong doing to others. 



IMPORTANT:: READ THIS FILE SO THAT YOU KNOW HOW TO USE THESE SCRIPTS.



NOTE2: There are 2 Scripts which i did not write.... the /CT alias 

for the color text and the repeat kick which i got from someone.  I do

not remember from who so i appologize for not being able to give credit

where it is due.



NOTE3: Please be very carefull if you alter the content of the Alias or 

remotes.  Many things are dependant on others, therefore i cannot 

promise that every thing will work if you remove parts. If you do want to 

add Aliases... do so by adding at the bottom.  This will minimize the chance

of affecting the aliases used by the scripts.



NOTE4: Changing the setting on your DCC "Will Affect" how your scripts work.

You are well protected with the DCC's set to auto.  If you wish to receive

DCC's from some one... use the Allow CTCP(can still be kicked) or add him/her

to your friends list.



mIRC v4.72 Internet Relay Chat Client

 Copyright  1995-1997 Khaled Mardam-Bey and mIRC Co. Ltd.

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







******* Latest change**********

***Version 3.01

Fixed a typo preventing friendlist to work with action and notices

when you are beat to a kick (using popup) it no longer kick the top OP

Updated all the 3.0 to 3.01



***Version 3.0

Updated this package with mIRC4.72 executable and help 13 Jan 97

Updated this package with mfaq.hlp version 30 help format 13 Jan 97

Fixed a bug in the Chanserv Register Popup

The /b and /ub now does a type 3 ban

The multiple clone now shows the address being filtered out

The time bans in the Nicklist menu.. all kicks are now all 30 Seconds

Removed the +i so that not everyone becomes +i auto.

Added a "Add Telnet (NOT CLONE)" menu selection under the User menu to allow adding addresses

Added a Line so that it will not kick an op who may have ghost or a second copy running

Changed the Ignore DCC .. Turn off so that it goes back to auto instead of ask

I have increased the single clone timer to 30 minutes to compensate for lag services





******* The General Scripts....

These scripts are not designed to kick ops while they are ops.  If you do 

run a channel which gives ops to everyone... remove all the statements

stating $nick isop $chan  NOTE: Do not attemp this if you are unsure.

These Scripts are also not affected by the Colors. (eg text lenght)



Running all these Scripts at once may seem harsh oping because you 

wont let too much go through but in some channel they are all 

required.



This Script uses the Internal Address List to load up all the
```

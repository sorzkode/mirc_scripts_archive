# pnp_422 v1.02 by Unknown

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

**Script Name:** pnp_422  
**Version:** 1.02  
**Category:** game  
**Authors:** Unknown  
**Email(s):** <pai@pairc.com>, <P@cservice.planetarion.com>  
**Website(s):** [http://www.pairc.com/donate.html](http://www.pairc.com/donate.html), [http://.$iif(u](http://.$iif(u)  
**Release Year:** 2004  
**Tags:** wav, trigger, remote script, protection, notify, fserver, rejoin, away system, toolbar, ascii art, nicklist, auto-join, auto-op, font control, timer, alias, auto away, dcc, away log, last seen, auto-away, access list, auto-deop, channel protection, dice, sockets, addon, uptime, bot, uno  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/kegdoctor_archive/pnp_422/pnp_422.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "pnp_422.zip",
  "file_count": 111,
  "file_types": [
    ".bat",
    ".bmp",
    ".dat",
    ".ico",
    ".ini",
    ".lis",
    ".mrc",
    ".mtp",
    ".mts",
    ".pif",
    ".png",
    ".ppa",
    ".txt"
  ],
  "max_file_date": "2004-08-10",
  "min_file_date": "2002-02-28",
  "total_size": 1637.13,
  "largest_file": "script/newtheme.mrc",
  "text": [
    "addons/SERVICES.TXT",
    "kicks.txt",
    "pp-faq.txt",
    "pp-readme.txt",
    "quits.txt",
    "whatsnew.txt"
  ]
}
```

## 📋 Text Content (from pp-readme.txt)

```text


PnP 4.22

mIRC 6.01





This script *requires* and is designed for mIRC 6.01, not included.

Using an earlire version of mIRC will not work. Please see

http://www.pairc.com/ for updates and other PnP-related information.



See pp-faq.txt for frequently asked questions and known issues with

other software.



--- WHAT IS PnP? ---



PnP is designed to be a good choice for anyone looking for a mIRC

script. All of it's features are highly configurable, so you don't

need to settle for what someone else thinks is best. Most features

work quietly in the background- and those that don't can be turned

off. You can keep yourself and your channels safe, and have a much

nicer overall IRC experience.



PnP doesn't have the sleek, fancy look that some scripts have-

instead, all development time goes into making useful, flexible,

and powerful features. Browse through configuration and the popups

for just a glimpse of the many features available... or just run it

with the default configuration and learn as you go.



Have a bug report, problem, or feedback? Just type /bug, hit Enter,

and send it off!



--- WHAT'S NEW? ---



4.22 includes a new Spam Blocker addon that allows you to selectively

block unwanted spam and queries, options to show raw/revents to

active and cycle channels when alone and opless, and a new

Configuration Wizard for first-time users or for easy configuration

of common options. Select PnP -> Configure -> Configuration Wizard

to run it at any time. (It will automatically run the first time

you install PnP)



A few more theme variations have also been included- Nothing

spectacular, just some more basic options to choose from.



A lot of bugs have also been fixed from 4.20 and 4.21. Everything

seems to be fairly stable at this point- I think the majority of

the bugs from the mIRC 6.01 changes and multi-server revamps have

been fixed. As always, let me know if you find anything.



If you missed 4.20, then you're in for a treat. Since 4.06, a LOT of

major changes have been made. PnP is now fully mIRC 6.01 compatible.

Everything is multi-server aware and compliant. Favorites can now

include networks/servers to connect to on startup. The theming system

has been replaced with a sleek, MTS-compatible system, all in one

dialog. (/theme) All of the smaller configuration dialogs are now part

of a single, revamped, easy-to-use dialog. (/config) PnP fully

supports Halfops and odd channel prefixes, such as !chans. Many more

new features include new away options, sound addon improvements,

/viewpic, expanded topic popups, etc. 



See WHATSNEW.TXT for a full list of changes, additions, and the

ever-present bug fixes.



--- WHAT'S COMING? ---



Expect to see an updated addons page on www.pairc.com soon.

I'm also working on automated upgrade/patch support within the script

itself. I've also started on writing documentation- it's coming

slowly, but something should be ready for the next major version.



At some point I will be making the userlist and more of the options

network-specific, but this may be a while.



A number of hard-working individuals are working on translations for

PnP- look for these on www.pairc.com sometime in the near future. 

(see Script\Trans\English.ini for details on translating PnP.)



--- TO UPGRADE AN EXISTING INSTALLATION OF PnP ---



If you don't have mIRC 6.01 installed yet, download it

from http://www.mirc.com/get.html. Install it over your

existing PnP/mIRC. When prompted, elect to *keep* existing

settings. Note that PnP 4.22 will *not* work with mIRC

versions prior to 6.01.



Then, just unzip (or copy) all of the PnP files to your existing PnP

directory. Make sure you retain the directories, and overwrite

any existing files. In WinZip, this option is called "Use folder

names". Make sure mIRC is NOT RUNNING when you do this. mIRC may

restart once or twice the first time you run it, to clean up any

new settings.



When upgraded properly, you will not lose any of your existing

settings. Do not install this over a copy of PnP earlier than

4.00.



--- IF THIS IS A NEW INSTALLATION ---



1) Make sure no copies of mIRC are running. This is simply a

   safety precaution- PnP only installs to the mIRC directory

   you place it in.

2) If you like, make a backup of your mIRC directory.

3) If you don't have mIRC 6.01 installed yet, download it

   from http://www.mirc.com/get.html and install it. Note that

   PnP 4.22 will *not* work with mIRC versions prior to 6.01.

4) Unzip or copy all files into your mIRC directory.

   Retain all directories. In WinZip, this option is called

   "Use folder names". You should now have SCRIPT, ADDONS, and

   THEMES directories within your MIRC directory. If you do not,

   you did something wrong.

5) You should now have all of the above directories, as well

   as mirc.exe in the directory. You will also have other mIRC

   files such as mirc.ini and servers.ini- this is normal and

   n
```

# Peace-and-Protection-master v1.02 by Unknown

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

**Script Name:** Peace-and-Protection-master  
**Version:** 1.02  
**Category:** game  
**Authors:** Unknown  
**Email(s):** <areels@msn.com>, <P@cservice.netgamers.org>  
**Website(s):** [http://aucs.oz.org/](http://aucs.oz.org/), [http://apply](http://apply), [http://_off:target=$rr.pretty($gettok(%old,1-2,32))]](http://_off:target=$rr.pretty($gettok(%old,1-2,32))]), [http://cservice.undernet.org/live/](http://cservice.undernet.org/live/), [http://.[popups_chan:cs_keeptopic]...:cs](http://.[popups_chan:cs_keeptopic]...:cs), [http://r_view]...:pager](http://r_view]...:pager), [http://n*.dat,0,_prepseen](http://n*.dat,0,_prepseen), [http://www.kristshell.net/pnp/forum/](http://www.kristshell.net/pnp/forum/)  
**Release Year:** 2018  
**Tags:** wav, trigger, remote script, protection, notify, fserver, rejoin, away system, toolbar, ascii art, nicklist, auto-join, auto-op, font control, timer, alias, auto away, dcc, away log, last seen, auto-away, access list, auto-deop, channel protection, dice, sockets, addon, dns lookup, uptime, bot  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/Peace-and-Protection-master/Peace-and-Protection-master.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "Peace-and-Protection-master.zip",
  "file_count": 166,
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
    ".png",
    ".ppa",
    ".ptm",
    ".txt"
  ],
  "max_file_date": "2018-08-02",
  "min_file_date": "2018-08-02",
  "total_size": 3447.85,
  "largest_file": "Peace-and-Protection-master/script/trans/nederlands.ini",
  "text": [
    "Peace-and-Protection-master/addons/SERVICES.TXT",
    "Peace-and-Protection-master/kicks.txt",
    "Peace-and-Protection-master/pp-faq.txt",
    "Peace-and-Protection-master/pp-readme.txt",
    "Peace-and-Protection-master/quits.txt",
    "Peace-and-Protection-master/whatsnew.txt"
  ]
}
```

## 📋 Text Content (from Peace-and-Protection-master/pp-readme.txt)

```text


PnP 4.22.8

mIRC 7.46





This script *requires* and is designed for mIRC v7.46 or later, not included.

Using an earlier version of mIRC will not work. Please see:



http://www.kristshell.net/pnp/ 

or

https://github.com/solbu/Peace-and-Protection



for updates and other PnP-related information.



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



Have a bug report, problem, or feedback? Our forum is:

http://www.kristshell.net/pnp/forum/

Also, issues can be raised over at:

https://github.com/solbu/Peace-and-Protection/issues



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

been fixed. As always, let us know if you find anything.



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



So far the only translation files available are Turkish, Dutch and 

English. If you are fluent in a language other than these and wish

to help translate, please see Script\Trans\English.ini for details on 

translating PnP.



--- IF THIS IS A NEW INSTALLATION ---



1) mIRC installs itself in the %programfiles% folder or the 

   %systemdrive%\Program Files (x86) folder if you are running

   a 64 bit version of windows.

2) Unzip the contents of the ZIP file and copy everything (the ADDONS,

   SCRIPT, THEMES folders including the files kicks.txt, pp-faq.txt

   pp-readme.txt, quits.txt and whatsnew.txt) to your 

   %appdata%\mIRC folder.

3) Turn off script confirmation warning. In Options>Other>Confirm...

   Uncheck "Confirm when using a command that may run a script."

4) In your status window, type /load -rs script\first.mrc

   (and press Enter)

5) Any time mIRC asks if you'd like to run initialization

   commands, click "Yes".

6) mIRC will restart once or twice while installing PnP.

   Then you are ready to go!

   

If mIRC crashes any time during this installation, you should

be able to start it and PnP will pick up where it left off.

You will not lose any of your mIRC settings when you install

PnP.



--- TO UNINSTALL PnP ---



Simply delete the SCRIPT and ADDONS directories and everything

in them. Do not do this while mIRC is running. You may also safely

delete the CONFIG directory, if you don't want to save your

configuration for later. (this won't affect your mIRC settings.)



--- IF YOU HAVE PROBLEMS ---



Most importantly-

DO NOT ADD YOUR OWN SCRIPTS/EVENTS TO PNP'S SCRIPT FILES. If you want to

add stuff, go to File->New or File->Load to create your own script file.

If you add your own stuff to PnP's files, it can very easily cause problems.



For a detailed list of changes, see WHATSNEW.TXT. For answers

to common questions, see PP-FAQ.TXT.



Feel free to visit #peace&protection on EFnet for help and questions.



Bug reporting and feedback features are not working currently.

Please raise your issue on the kristhshell foru
```

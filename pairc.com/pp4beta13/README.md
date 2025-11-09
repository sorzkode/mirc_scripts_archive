# pp4beta13 v1.00 by mspai

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

**Script Name:** pp4beta13  
**Version:** 1.00  
**Category:** game  
**Authors:** mspai  
**Email(s):** <pai@pairc.com>, <feedback@pairc.com>, <pnp@pairc.com>  
**Website(s):** [http://cservice.undernet.org/](http://cservice.undernet.org/)  
**Release Year:** 1999  
**Tags:** wav, roulette, trigger, protection, notify, fserver, rejoin, away system, toolbar, ascii art, nicklist, auto join, auto deop, auto-join, auto-op, font control, timer, weather, custom theme, alias, auto away, repeat protection, away log, last seen, auto-away, dcc, access list, auto-deop, channel protection  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/pairc.com/pp4beta13/pp4beta13.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "pp4beta13.zip",
  "file_count": 141,
  "file_types": [
    ".bat",
    ".bmp",
    ".dat",
    ".ico",
    ".ini",
    ".lis",
    ".mrc",
    ".ppa",
    ".ppt",
    ".rct",
    ".txs",
    ".txt"
  ],
  "max_file_date": "1999-08-11",
  "min_file_date": "1998-07-31",
  "total_size": 1254.83,
  "largest_file": "SCRIPT/PP400TITLE-B.BMP",
  "text": [
    "ADDONS/GENRE.TXT",
    "ADDONS/services.txt",
    "KICKS.TXT",
    "pp-faq.txt",
    "pp-readme.txt",
    "quits.txt",
    "WHATSNEW.TXT"
  ]
}
```

## 📋 Text Content (from pp-readme.txt)

```text


PnP 4.00

Beta 13 (Build 900)





This is the last BETA release of PnP 4.00.

This requires mIRC 5.6, not included.

This will be the last beta release, and I am no longer working on PnP

very much. When and if I get time, I will do a pre-final, then a

'final' 4.00 release, with documentation, etc. but I just don't have

the time right now, unfortunately, and wish to pursue other projects.





** IF THIS IS AN UPDATE PACKAGE **

Just install over a previous beta, and answer 'yes' to any

file overwrites.





** IF THIS IS A FULL INSTALL **

If you are installing this for the first time, just unzip to a

directory. *Make sure you use/retain directories* in the zip.

Then simply copy mirc32.exe (version 5.6) into the directory.

(just the .exe- no .inis or anything.)



If you already have a previous beta configured the way you like,

you then copy your old mirc.ini and CONFIG dir to the new beta.

You can also use /profile to import settings from 4.00 or plain mIRC.

(3.20-specific settings not imported YET)





NOTE: If you find a bug, use /bug to report it, or /feedback to

report general feedback. Both options are in the P&P menu.





IMPORTANT NOTE: Although I try to make this as bug free and usable

as possible, there will definately be bugs, and many features

either aren't complete, aren't in, or are in but undocumented.



For a detailed list of changes from beta to beta, see whatsnew.txt.





** Important new stuff in beta 13 **



1) Some nuke 'detection' added to login addon. /nukes and /arp.

   These are somewhat technical features, but very convenient for

   those who can understand the output.



2) Can set the popup marker and horizontal line character in

   /display. (this is not treated as part of the theme..)



3) Some protection changes- you can now set to change to a random

   nick on a personal flood, intense channel floods should not

   trigger 'tokenize' errors, and ezping has simple flood protection



4) /stopic resets the channel's topic to your stored /strict topic



5) /textopt lets you specifically set where x/w/etc notices go



6) /route (or via channel popups) now lets you route events

   specifically, channel by channel



7) /addon has a delete button to delete addons permanently



8) Added a second, hard-to-find easter egg to the /scan dialog

   (the original easter egg is in the /about dialog)



9) ChanServ addon requires you to declare your access in a

   channel using popups or /csa, and will only show applicable

   popups



10)/popups lets you fully configure which popups show; note that

   hidden popups can still be shown by holding down CTRL



11)/ctcpedit added to edit CTCP replies



12)Fixed a ton of errors, in sound addon as well as elsewhere,

   and some minor additions not worth mentioning individually

   (see whatsnew.txt as usual)





** Slowly increasing commands list **



/spawn [server [port]]

/aidle (extras)

/ezping (extras)

/colorwin (extras)

/ns (nickserv)

/kickstat [on|off|quiet|clear|nickname]

/defld

/atopic

/rtopic

/about

/bug

/feedback

/update

/strict [#chan]

/count [#chan]

/black [-r|*|#chan] nick|addr [=nick] [reason]

/blackedit

/repjoin

/protedit [#chan]

/prot

/config

/unban [-s] nick|addr

/serverlist [+|- network] ...

/theme

  /fontfix

  /nickcol [on|off]

  /nickcol edit

  /display

  /linesep

  /msgs

  /sounds

  /text [file.ext|on|off|mirc]

  /text edit

  /text cfg

/fav [params]

/tome

/addon

/clones [#chan] [mask]

/scan [#chan] [flags]

/notif [nick]

/ign [[-r] nick|addr]

/userlist [#chan|*]

/user [-r|-v] nick|addr [editing stuff...]

/xw command (x/w)

/cs (chanserv)

/away

/back

/awaylog

/pager

/awaycfg

/fontfix

/umode

/profile

/authlist

/auth

/scfg (sound)

/sopt (sound)

/playlist (sound)

/loc (sound)

/squeue (sound)

/spanel (sound)

/scont (sound)

/inv [#chan] [nick]

/rec [v|n [d|f]]

/mtn

/forcecs (chanserv)

/ame/amsg/aame/aamsg/acme/acmsg

/rn/urn (extras)

/lagbar (extras)

/saycolor/showcolor (extras)

/rle/sle/rlm/slm/rln/sln (extras)

/country/usa (extras)

/xdcc (xdcc)

/op/fop/dop/deop/fdop/fdeop/kick/ban/unban (etc)

/onotice/ovnotice/o/ov/wall/allbut/fnotice/peon/rnotice/nnotice





** The following major stuff is still missing **



1) All documentation

2) Some popup cleanup, and popup config

3) Misc stuff

4) Planning on redoing theme section/dialog

(plus various addons such as cdplayer, nickserv, etc.)
```

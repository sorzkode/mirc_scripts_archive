# bizotch v138.87.1.6 by ACiDANGeL on 19th

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

**Script Name:** bizotch  
**Version:** 138.87.1.6  
**Category:** game  
**Authors:** ACiDANGeL on 19th  
**Email(s):** <Dalfd@ts1-d145.mby.atcon.com>, <cash@usamoney.com>, <bleeeeeeeh@ppp-207-104-100-10.sndg02.pacbell.net>, <Bizotch@bizotch.com>, <nexozeoon@user-37kb9en.dialup.mindspring.com>, <bleh@dialup-164-169.insync.net>, <madcrew@mindcryme.com>, <vanessa5@all-pa1-01.ix.netcom.com>, <melen@mindcryme.com>  
**Website(s):** [http://www.mindcryme.com/~spyke/bizotch.html](http://www.mindcryme.com/~spyke/bizotch.html), [http://www.ciaccess.com/~kjlapris/dadink.html](http://www.ciaccess.com/~kjlapris/dadink.html), [http://service.eshores.com/mcparty/](http://service.eshores.com/mcparty/), [http://208.139.0.155/core](http://208.139.0.155/core), [http://www.mindcryme.com/~spyke/mirc](http://www.mindcryme.com/~spyke/mirc), [http://www.mindcryme.com/madcrew](http://www.mindcryme.com/madcrew)  
**Release Year:** 1997  
**Tags:** wav, trigger, protection, notify, rejoin, mass op, nicklist, timer, alias, color scheme, dcc, away log, dice, bot, greet, kickban, gui, dialog, popup, flood protection, fserve, xdcc, mass kick, highlight, auto-voice, popups, mp3  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/Other/bizotch1/bizotch1.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "bizotch1.zip",
  "file_count": 24,
  "file_types": [
    ".ini",
    ".nfo",
    ".txt",
    ".wav"
  ],
  "max_file_date": "1997-02-17",
  "min_file_date": "1992-04-14",
  "total_size": 133.67,
  "largest_file": "aliases.ini",
  "text": [
    "uploads/mc.nfo",
    "finger.txt",
    "notes.txt",
    "titlebar.txt",
    "whois.txt",
    "channels.txt",
    "text/help.txt",
    "text/ahelp.txt",
    "text/awaylog.txt",
    "text/ranaway.txt",
    "text/ranback.txt",
    "text/friendhelp.txt",
    "text/ophelp.txt",
    "text/ractions.txt",
    "readme.txt"
  ]
}
```

## 📋 Text Content (from text/help.txt)

```text
### Help file for Bizotch. #1 ###

This is the help file for Bizotch.

Included in this file are some basic features of the

script and their use, a complete listing of aliases,

and information on how to obtain support for the script.



Please visit

http://www.mindcryme.com/~spyke/bizotch.html

for new versions and update information.



# Basic Features #

-No Bugs! (er... that I know of anyways, if you find

 any, please report them.)

-FIVE totally seperate, yet integrated userlists. Each

 is completely configurable.

-If it's in the popups, there's an alias for it. <--

 Native IRCII users should like this.

-Pop-up reminders and to-do list. (See below)

-Cosmetically enhanced for an easier-to-understand and

 more noticable look.

-Very intelligent XDCC file offering routine.



# Aliases #



      *Basic Commands*

 bhelp	g	n	voc

 bk	h	op	w

 chat	hop	p	whios

 cycle	j	q	whois

 dop	k	send	whosi

 dvoc	kb



             *User Lists*

addfriend	delop		opslist

addop		delshit		shitlist

addshit		delvoice	shitsetup

addvoice	friendlist	voicelist

delfriend	friendsetup



    *Away Stuff*

autoaway	gone

autosetup	pager

back		rec



     *Mass Stuff*

massdeop	massinv

massdvoc	massmsg

massop		massvoc



   *Communications Stuff*

om	relmo	relsm	relw

on	reln	relsmo	rep

relc	relno	relsn	rme

relcr	relsc	relsno	secho

relm



  *Reminder Stuff*

radd		rview

rdelete		tadd

reminder	tdelete



*XDCC Stuff*

xdcc		xdccoffer

xdccclear	xdccsetup

xdccmake	xdccstop



*Channel Protect Stuff*

nhp		mkp

mdp		mkpsetup

mdpsetup



*Miscellaneous*

msgmirc		cconfig

msgbizotch

power





# F-Keys #

F4       - Joins the channel you were last invited to.

F5       - Toggles the XDCC offering system on and off.

F6       - Starts XDCC offering in the active channel.

Shift-F6 - Stops XDCC offering in the active channel.

F8       - Opens your awaylog.

Shift-F8 - Erases your awaylog.

F9       - MassVoc in the active channel.

F10      - MassDvoc in the active channel.

F11      - MassOp in the active channel.

F12      - MassDeop in the active channel.



# Overview of the Reminder #

The reminder might be a little confusing to you at

first. It includes two message types: reminders and

things to do. 

-Reminders are notices that will pop up in notepad on

 the time and date you tell it to. When reminders are

 shown, they are automatically deleted from the list.

-Things to do are shown in the mIRC titlebar. If you

 have more than one, it will cycle through them all

 over and over, changing every ten seconds.

NOTE: When you delete entries in either list, the order

of the entries are changed slightly. To avoid deleting

entries you don't intend to delete, refresh the reminder

listings view window (/rview) before you delete each

one.
```

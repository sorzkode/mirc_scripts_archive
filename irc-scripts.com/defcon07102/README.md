# defcon v5.82 by fiRE_ANGEl aka Ecronika

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

**Script Name:** defcon  
**Version:** 5.82  
**Category:** protection  
**Authors:** fiRE_ANGEl aka Ecronika  
**Email(s):** <fiRE.ANGEl@gmx.net>, <natrak@projectx.mx.dk>  
**Website(s):** [http://www.mirc.com/](http://www.mirc.com/), [http://www.projectx.mx.dk/](http://www.projectx.mx.dk/), [http://www.mirc.co.uk/](http://www.mirc.co.uk/)  
**Release Year:** 2001  
**Tags:** wav, trigger, protection, notify, rejoin, nicklist, timer, alias, mp3 player, auto away, dcc, away log, auto-away, uptime, bot, greet, gui, dialog, popup, xdcc, highlight, popups, mp3  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/defcon07102/defcon07102.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "defcon07102.zip",
  "file_count": 43,
  "file_types": [
    ".bak",
    ".bmp",
    ".dll",
    ".ini",
    ".mrc",
    ".txt",
    ".wav"
  ],
  "max_file_date": "2001-03-02",
  "min_file_date": "1998-02-25",
  "total_size": 589.18,
  "largest_file": "logo.bmp",
  "text": [
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
readme.txt :

- About

  - about

  - credits

  - greets

- Installation

  - install

  - upgrade

- Description

- Manual

  - installation

  - support

  - f-keys

  - commands





-----[ About ]-------------------------------------------------------------------



[about]

=================================================================================



dEfCoN oNe for mIRC 5.82

by fiRE_ANGEl (fiRE.ANGEl@gmx.net)

http://defcon-one.purespace.de



Version      : 0.71.02

Release Date : 02.03.01 (dd/mm/yy)



[credits]

=================================================================================



- mIRC: khaled

- Nicklist Colourer: Projectx

- ideas: the dEfCoN oNe community



[greets]

=================================================================================



- all my IRC Friends (too many to mention here, but if you think you are here,

  then you are)

- to you



-----[ Installation ]------------------------------------------------------------



[install]

=================================================================================



1. Extract everything into a new folder.

   For example: c:\defcon

2. Rename the file 'mirc.bak' to 'mirc.ini'

3. Copy the mirc32.exe to the folder where you extracted those files.

   dEfCoN oNe is tested with mIRC version 5.82.



Note: This script requires mIRC 5.82 and above.  To get the latest version of

      mIRC, visit http://www.mirc.co.uk/



[upgrade]

=================================================================================



WARNING !!! This Version can ONLY upgrade dEfCoN oNe version 0.71 and above



1. Exit mIRC

2. Extract everything to your defcon one directory

That's it



-----[ Description ]-------------------------------------------------------------



[]

-----[ Manual ]------------------------------------------------------------------



[Installation]

dEfCoN oNe 0.71.02 help - Installation

=================================================================================



1. Extract everything into a new folder.

   For example: c:\defcon

2. Rename the file 'mirc.bak' to 'mirc.ini'

3. Copy the mirc32.exe to the folder where you extracted those files.

   dEfCoN oNe is tested with mIRC version 5.82.



Note: This script requires mIRC 5.82 and above.  To get the latest version of

      mIRC, visit http://www.mirc.co.uk/



[support]

dEfCoN oNe 0.71.02 help - Support

=================================================================================



dEfCoN oNe can be downloaded from http://defcon-one.purespace.de and information

about it and other scripts done by me will also be found there.



You can also contact me by e-mailing fiRE.ANGEl@gmx.net with any queries you may

have, or bugs you want to report.



Feel free to contact me anytime at all. Feedback should be in less than 48 hours,

unless I am experiencing difficulties beyond my control.



[f-keys]

dEfCoN oNe 0.71.02 help - Function Keys

=================================================================================



F2         - join channel(s)

F4         - opens dEfCoN oNe setup

F6         - Opens Away Log

F8         - Set Away with reason

F9         - Opens dEfCoN oNe WebPage (German)

Ctrl + F9  - Opens dEfCoN oNe Webboard (German)

Shift + F9 - Download latest version of defcon one



[commands]

dEfCoN oNe 0.71.02 help - Commands

=================================================================================



### /about



Opens the about dialog.



### /act [channel] <text>



Performs an action on the channel.



### /autojoin



Joins the autojoin channels for the current network



### /awayscan [#channel]

 

Scans away users in a channel



### /awaysetup



Opens the away Setup Dialog



### /bye [reason]



Shortcut for /quit



### /cs <command>

 

Sends a command to Chanserv



### /i <nick> [channel]



Shortcut for /invite



### /irc [server] [port] [nick]

 

Opens an IRC session.

 

/irc us.undernet.org 6667 mynick

This will connect you to us.undernet.org using the port 6667 and the nick mynick

 

/irc

This will open a dialog asking you the server, your nick, etc.



### /j <[#]chan1> [[#]chan2...]



Shortcut for /join

Differently than in the original # is not necessary.

Additionally several channels can be entered at the same time.



### /m <channel> <modes>



Shortcut for /mode



### /ms <command>

 

Sends a command to Memoserv



### /n <newnick>



Shortcut for /nick



### /ns <command>

 

Sends a command to Nickserv



### /p

 

Shortcut for /part



### /q

 

Shortcut for /query



### /seen [nick]

 

Tells you the last time he has been seen.



### /v

 

Shortcut for /voice



### /voice [#channel] [nick] [nick]...

 

Voices users in a channel.

 

 /voice Ecronika

  Voices Ecronika in the active channel

 /voice #lamest Ecronika fiRE_ANGEl

  Voices Ecronika and fiRE_ANGEl in #lamest



Commands to open Dialogs :

--------------------------



/nsetup   Network Setup
```

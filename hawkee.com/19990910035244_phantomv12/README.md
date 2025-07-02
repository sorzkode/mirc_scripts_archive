# Phantom Apocalypse Fserv and MP3 v1 by Andi

## ⁉️ This is part of an mIRC script archiving project. Please read the [README](https://github.com/sorzkode/mirc_scripts_archive/blob/main/README.md) file located in the [main project repository](https://github.com/sorzkode/mirc_scripts_archive) for more information / disclaimers  

## ⚠️ Important Disclaimers

- **I am not the original author** of this script and do not claim any ownership or authorship
- **Historical Preservation Only**: This script is archived for historical and educational purposes
- **No Support**: I cannot provide support, updates, or fixes for this script
- **Not Thoroughly Tested**: The script has not been thoroughly tested in modern environments
- **Use at Your Own Risk**: Any use of this script is entirely at your own risk
- **Potentially Outdated/Incompatible**: This script was designed for much older versions of mIRC and Windows
- **Educational Value**: This archive serves to document the evolution of IRC scripting and early internet culture

## 🔍 Script Information (metadta parsed from files)

**Script Name:** Phantom Apocalypse Fserv and MP3  
**Version:** 1  
**Category:** addon  
**Author(s):** Andi  
**Email(s):** <Phantom4@pacbell.net>  
**Website(s):**   
**Release Year:** 1998  
**Tags:** timer, alias, fserve, popups, popup, mp3, trigger, addon, dcc, nicklist, mp3 fserve, file server  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990910035244_phantomv12/19990910035244_phantomv12.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990910035244_phantomv12.zip",
  "file_count": 9,
  "file_types": [
    ".ini",
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1998-07-20",
  "min_file_date": "1998-07-07",
  "total_size": 51.27,
  "largest_file": "sys/phantom1.mrc",
  "text": [
    "data/dccinfo.txt",
    "data/fservaccess.txt",
    "data/fservtxt.txt",
    "data/queue.ini",
    "data/phantom.ini",
    "sys/phantom2.mrc",
    "sys/phantom1.mrc",
    "setup.mrc",
    "Readme.txt"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## Readme.txt

```text
Phantom Apocalypse Fserv and MP3 Offerer
by Andi 
email: Phantom4@pacbell.net

This is a basic MP3 Server addon for mIRC.  It will allow you
to advertise MP3's on a specefied channel and also allow you
to operate an fserv with MP3's or other files. (note- the fserv
will not work with files that have extensions larger than 3 
characters) Users may receive files from you through the Fserv
or through the use of a trigger sent to the channel of your
choice.

I made this for fun, and am offering it to anyone else who would
to try it out.  It may not be the fanciest of MP3 server scripts,
but it gets the job done.  There is just one bug I am currently
aware of: 1) At the very end of setup, if you are currently connected 
to irc, it will give you 5: �HN Unknown command If you are not 
connected you will receive a message: *** Not connected to server, 
please ignore these. You will not see these again, unless you reload 
the script and run setup again. This is the only bug I know of, 
If you find a bug please email me a description with Phantom Bug 
as the email subject.

To install, unzip the contents of phantom.zip into your mIRC directory.
Do not unzip into any other directory, and do not move any of the files
into a different directory.
Then type: /load -rs setup.mrc
When mIRC asks you if you want to run initialization commands, click on yes.
Setup will work the same wether you are connected to IRC or not, so I
suggest you load this offline.
During setup, information will be sent to the status window about
the current function that is being set.

Note: filenames should not have spaces in them so it your have something named:
group name song name.mp3
it should be named to:
group_name-song_name.mp3

Features:

*Version 1.0

-selectable trigger
-slectable amount of dcc send slots limit total amount of dcc 
 sends at one time
-limit fserv to a specefied amount of users
-limit amount of users allowed in the queue
-limit the lowest cps a user can have, if the cps drops below
 the selected rate, the dcc is terminated
-queue list, when the dcc send limit is maxed out, users will be
 added to the queue list and files sent when the next available
 slot is open.
-selectable mp3 location
-selectable fserv location
-selectable channel to advertise to
-kill dcc sends to users who leave the selected channel (selectable on\off)
-song searcher that allows a user to search for a song you have by using
 @locator <search string>
-logs of dcc sends
-ban users
-select time between advertisements (default set to: 350 seconds)
-selectable mp3 list location
-selectable fserv welcome file location
-switches to turn MP3 Server on\off, advertising on\off, 
 advertise on join on\off, @locator on\off, kill dcc sends
 to a user that leaves the selected channel
-trigger commads: help= displays help, list= sends user your mp3 list,
 kill dcc= kills dcc you are sending to user, dcc stats= displays 
 your current dcc stats to user, fserv= will initiate a fserv
 to user

*Version 1.1

-Better Dynamic Popups
-Manual advancement of queue, will overide send limit
-most settings now save to phantom.ini
-improved banning control

*Version 1.2

-DCCstats will now show stats for sends that are over
 the send limit, they will be in red instead of purple.
-A user will no longer be added to the queue list if he/she is
 currently receiving a file.

7-7-98

```

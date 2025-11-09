# MIRC v0 by Unknown

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

**Script Name:** MIRC  
**Version:** 0  
**Category:** game  
**Authors:** Unknown  
**Email(s):** <sdl@iamerica.net>  
**Website(s):** [http://cust2.iamerica.net/sdl/hydro.](http://cust2.iamerica.net/sdl/hydro.), [http://cust2.iamerica.net/sdl/hydro/](http://cust2.iamerica.net/sdl/hydro/), [http://Aliases](http://Aliases), [http://cust2.iamerica.net/sdl/hydro](http://cust2.iamerica.net/sdl/hydro), [http://WAV](http://WAV)  
**Release Year:** 1997  
**Tags:** wav, protection, notify, rejoin, nicklist, timer, does a /stats l and analyzes the returns to find the best, alias, dcc, port scanner, auto-away, addon, dns lookup, bot, interface, uno, dialog, midi, popup, flood protection, highlight, popups  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/Other/hydro20/hydro20.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "hydro20.zip",
  "file_count": 11,
  "file_types": [
    ".bat",
    ".ini",
    ".txt",
    ".wav"
  ],
  "max_file_date": "1997-02-08",
  "min_file_date": "1996-07-17",
  "total_size": 106.2,
  "largest_file": "page.wav",
  "text": [
    "hydrover.txt",
    "hydrosay.txt",
    "hydrohlp.txt"
  ]
}
```

## 📋 Text Content (from hydrover.txt)

```text
]-[ydrobomb

a script for mIRC



This is supposed to be like the versions.txt that is included with each

new release of mIRC. As I release each version, you can see immediately

the problems I've solved, and the new one's i've created. :)



Happy chatting,

Einstein

<sdl@iamerica.net>

---------------------------------------------------------------------------

Version 1.0

Compatible with: mIRC 4.7

-=ORIGINAL BETA RELEASE=-

---------------------------------------------------------------------------

Version 1.2

Compatible with: mIRC 4.7 - 4.72 (not guaranteed for later versions)

Completed: 1-19-97

Released: 1-21-97



Bugfixes:

Fixed clone detect's tendency to go haywire when it doesn't have users'

addresses. If a clone detect is run in a channel before the addresses

have come in, the detect is delayed until every channel member is in the

IAL.

Clone detect now does not work in channels larger than 70 users, this

helps to prevent lockups.

	(Note: the 70-user limit was tested on my machine, a 486 DX2/50.

         If it works on mine, it'll work on your Pentium. If you really

         think your machine can handle more users, feel free to modify

         the script. Remember, though: the number of operations the clone

         detect does is exponential, that is, n!, where n is the number of

         nicks on the channel. This means the computer has to do over

         77,000,000,000,000,000,000,000,000,000,000,000,000 times more

         operations on a 100-user channel than on a 70-user one. Keep

         this in mind if you choose to modify.)



	(Subnote: sorry for the mathnerd talk. What I mean by this is:

	 ALTER THIS FEATURE AT YOUR OWN RISK!)       



Added features:

Port Scanner - does a /stats l and analyzes the returns to find the best

               port on the server, also lists all available ports.

               Thanx to LoKi128 for the concept. Mess around with this,

               some servers have ports they don't tell you about...

Channel CTCP detect - shows when a user sends a CTCP to the entire channel.

                      Good for seeing channel pings and/or malicious CTCP's

                      like DO and DCC SEND.

Stealth mode chanping - a way around the above feature. Sends a PING to all

                        users in a channel instead of the channel itself.

Direct Ping & Trace Route - interfaces with Win95's built-in utilities

                PING and TRACERT.  Only works with Win95. Useful to

                determine lag along a DCC connection.

Mail client - logs in to your POP3 server and checks your mail.

/rev command - cute feature, speaks backward



Improved:

Method of getting addresses upon joining a channel. Now uses /who instead of

mass /userhost. No longer shows users' addresses on join.

Method of determining idle time. Now uses $idle instead of /whois.

Ban lister. Now shows the time of ban, also the table display was improved

slightly.

---------------------------------------------------------------------------

]-[ydrobomb 2.0



Completed: 2-6-97

Released: 2-7-97



Improved:

On Join Clone warning now in bold - more attention getting. Also displays

address without asterisks.

Other displays spruced up to use bold for attention-getting purposes

Self Ban protect now uses ISWM to catch ALL banmasks that match you.

Note that this will deop people who ban with masks like *!*@*

Moved more channel-associated warnings into the channel's window instead

of the active window. Examples: on join clone, perv detect "pass"

notification



Added:

Hyperaccurate pings. This uses $ticks instead of $ctime to give a more

precise ping reply.

Titlebar updater - shows your server lag, idle, time, and wether you

are away.

Channel statistics command. Try /stat for the current chan or /chanstat

#channel. Displays number of users, ops, nonops, away, and average number

of hops.

DCC CHAT flood protect. If a DCC CHAT registers 100 lines received in under

a minute, a flood is assumed and the chat is closed.

Speech with the /speak command for important events such as perv detects,

on join clone detects, and pages. You must have Text Assist or Monolog

to run this feature. If you disable it, page.wav will be used instead of

speech for pages.

CTCP Wall feature - simple script, ignores all CTCPs. Useful when being

flooded.



Removed:

Mail client. Was taking up too much space in the script for limited reward.



Fixed:

Perv Detect not tripping on unrecognized users when On Join Clone Detect

is on. Bug was caused by a misrouted if/else pair.

Behind the Back bug fixed - now works even if the behinded person is at the

top of the list.

Channel Flood Protect is now a lot less skittish, more reliable and won't

kick users that don't deserve it.

---------------------------------------------------------------------------

]-[ydrobomb 2.0 bug fix



Completed: 2-8-97

Released: 2-8-97



Fixed:

Added extra safeguards into on join clon
```

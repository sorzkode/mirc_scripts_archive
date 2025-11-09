# removed v4.72 by Unknown

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
**Version:** 4.72  
**Category:** game  
**Authors:** Unknown  
**Email(s):** <khaled@mardam.demon.co.uk>, <emploth@hotmail.com>  
**Website(s):** [http://directory](http://directory), [http://a.add](http://a.add), [http://www.geocities.com/SiliconValley/Park/6000](http://www.geocities.com/SiliconValley/Park/6000), [http://www.hawkee.com](http://www.hawkee.com), [http://www2.axi.net/mirc](http://www2.axi.net/mirc), [http://www.yahoo.com/Computers_and_Internet/Internet/Chatting/IRC/Channels/](http://www.yahoo.com/Computers_and_Internet/Internet/Chatting/IRC/Channels/), [http://bernet.net](http://bernet.net), [http://co.za:/server](http://co.za:/server), [http://www.ctfire.com](http://www.ctfire.com)  
**Release Year:** 1997  
**Tags:** wav, trigger, remote script, protection, notify, rejoin, away system, toolbar, nicklist, auto-join, auto-op, timer, alias, dcc, away log, channel protection, sockets, bot, auto voice, interface, uno, swear, greet, ctcp replies, dialog, popup, flood protection, auto op, color text, fserve  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/Other/emploth/emploth.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "emploth.zip",
  "file_count": 44,
  "file_types": [
    ".exe",
    ".ini",
    ".txt",
    ".wav"
  ],
  "max_file_date": "1997-03-14",
  "min_file_date": "1995-08-12",
  "total_size": 442.12,
  "largest_file": "versions.txt",
  "text": [
    "xdcc.txt",
    "versions.txt",
    "url.txt",
    "tips.txt",
    "server.txt",
    "alhelp.txt",
    "raw.txt",
    "n-notes.txt",
    "msg.txt",
    "keys.txt",
    "floodnet.txt",
    "flood.txt",
    "finger.txt",
    "faq.txt",
    "e-notes.txt",
    "dcc.txt",
    "ctcps.txt",
    "credits.txt",
    "clones.txt",
    "awaylog.txt",
    "away.txt",
    "aliases.txt",
    "readme.txt"
  ]
}
```

## 📋 Text Content (from alhelp.txt)

```text


                  *********************************



                     Emploth v1.0 Aliases Help 

 

                  **********************************



/akick <nick> <reason>  Kicks nick from all channels youre op in

/aop <nick>  Gives nick op on all channels youre op in

/adeop <nick>  Deops nick in all channels youre op

/aunban <nick>  Unban nick from all channels youre op in

/aban <nick>  Bans nick from all channels youre op in

/kewl <text>  Use this command to write with kewl letters

/color <text>  Use this command to write with random color text

/rannick  Gives you a random nickname

/setup  Use this command to setup Internet utils directories

/www  Runs your www browser ( only if /setup have been done )

/ftp  Runs you ftp client ( only if /setup have been done )

/email  Runs your email client  ( only if /setup have been done )

/takeover  Makes a takeover in the channel window you typed it in

/c  To clear the window

/ca  To clear all windows

/restart  Sets everything in the script to the original modes

/minvite <invite channel>  Invites everyone in the channel to the gives channel name

/ina <nick>  Invites the given nickname to all channels youre op in

/set-away  Use it to set away

/set-back  Use it to set back from away

/lc <1-10>  Loads clones. 1-10

/kc  Kill clones

/check  Check clones

/cstop  Stop all clones from flooding etc.

/clonejoin <channel>  To make clones join the gives channel

/clonepart <channel>  Clones part the gives channel

/cpartall  Clones part all channels theyre on

/killchan  Use it in a channel window where youre a op to kill the channel

/clo  To count the clones

/cdis  Disconnects all clones

/slowjoin <channel>  Clones slowjoin the gives channel

/online  Your online time on the current IRC server

/clones [-e|-c]  Clone scan. -e = echo. -c = send to channel

/mop  Ops all in the current channel

/mdeop  Deops all in the current channel

/mb  Bans all in the current channel

/mbn  Bans all NonOps in the current channel

/mk  Kicks all nick from the current channel

/mkn  Kicks all NonOps from the current channel

/mkb  Kick and bans all in the current channel

/time  The time

/fulldate  Fulldate

/day  Day

/date  Date

/rankick  Kicks a random person from the channel

/rankicknop  Kicks a random Nonop from the channel

/ranop  Gives a random person op

/randeop  Deops a random person

/fkick <channel> <wildcard> <reason>  This command will filterkick 

all in the wildcard.

/dcclog  Dcc log in echo

/acm <msg>  Send the msg to all channel youre on

/aqm <msg>  Send the gives msg to all querys

/acom <msg>  Sends the msg to all channel ops

/acnm <msg>  Send the msg to all channel nopnicks

/mm <msg>  Send the msg to all users on the current channel

/ircopscan  Scans for IRCops

/stats [-e|-c]  Channel stats echo or msg to channel

/pstats  Protection stats

/ostats  Echo with text how all options are set

/mstats  mIRC Stats. Numbers of DCC send etc...

/wstats  War stats

/ctcp1 <nick/chan>  Clones ctcp flood nick/chan with level1

/ctcp2 <nick/chan>  Clones ctcp flood nick/chan with level2

/ctcp3 <nick/chan>  Clones ctcp flood nick/chan with level3

/ctcpon <nick/chan>  Clones ctcp flood nick/chan with no stop

/msg1 <nick/chan>  Clones msg flood nick/chan with level1

/msg2 <nick/chan>  Clones msg flood nick/chan with level2

/msg3 <nick/chan>  Clones msg flood nick/chan with level3

/msgon <nick/chan>  Clones msg flood nick/chan with no stop

/echo1 <nick>  Clones echo flood nick with level1

/echo2 <nick>  Clones echo flood nick with level2

/echo3 <nick>  Clones echo flood nick with level3

/kam <nick/chan>  Clones kamikazee flood nick/chan

/mix <nick>  Clones echo flood nick
```

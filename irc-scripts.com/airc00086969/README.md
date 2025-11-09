# aIRC v0.8.69.b69 by tabo

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

**Script Name:** aIRC  
**Version:** 0.8.69.b69  
**Category:** game  
**Authors:** tabo  
**Email(s):** <creg@jupiter2.irc-hispano.org>  
**Website(s):**   
**Release Year:** 2001  
**Tags:** idle kick, wav, trigger, log viewer, 100, protection, notify, fserver, rejoin, away system, toolbar, nicklist, trivia, auto-op, slap, timer, alias, mp3 player, color scheme, repeat protection, auto-kick, last seen, queue system, dcc  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/airc00086969/airc00086969.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "airc00086969.zip",
  "file_count": 272,
  "file_types": [
    ".aan",
    ".bak",
    ".banner",
    ".dat",
    ".dll",
    ".fsts",
    ".help",
    ".ico",
    ".ini",
    ".jpg",
    ".lang",
    ".log",
    ".mdx",
    ".motd",
    ".mrc",
    ".mrcn",
    ".nft",
    ".rep",
    ".scheme",
    ".sts",
    ".theme",
    ".txt",
    ".xdccts"
  ],
  "max_file_date": "2001-02-27",
  "min_file_date": "2000-02-09",
  "total_size": 2639.46,
  "largest_file": "etc/help/pl_main.help",
  "text": [
    "etc/help/coms.help",
    "etc/help/main.help",
    "etc/help/pl_all.help",
    "etc/help/pl_extra.help",
    "etc/help/pl_filesys.help",
    "etc/help/pl_howto.help",
    "etc/help/pl_main.help",
    "etc/help/pl_modules.help",
    "etc/help/pl_msg.help",
    "etc/help/pl_set.help",
    "etc/asciit.txt",
    "etc/FINGER.TXT",
    "etc/portstcp.txt",
    "etc/portsudp.txt",
    "etc/tips.txt",
    "airc.txt"
  ]
}
```

## 📋 Text Content (from etc/help/coms.help)

```text
[help_/ping]

### /ping [nick|#channel],[nick|#channel],...



Sends a CTCP PING to the specified nicks & channels.



 /ping tabo

  Sends a CTCP Ping to tabo



[help_/ver]

### /ver [nick|#channel],[nick|#channel],...



Sends a CTCP VERSION to the specified nicks & channels.



 /ver tabo

  Sends a CTCP Version to tabo



[help_/xlist]

### /xlist [nick|#channel],[nick|#channel],...



Sends a CTCP XDCC LIST to the specified nicks & channels.



 /xlist tabo

  Sends a CTCP XDCC LIST to tabo



[help_/xget]

### /xget [nick|#channel],[nick|#channel,... [pack]



Sends a CTCP XDCC SEND request to the specified nicks & channels.



 /xget tabo 1

  Sends a "CTCP XDCC SEND #1" request to tabo



[help_/rnick]

### /rnick [seconds]



Changes to a random nickname for X seconds. If seconds isn't specified, The nickchange is permanent.



 /rnick 60

  Changes to a random nickname for 60 seconds.



[help_/j]

### /j



Shortcut for /join



[help_/p]

### /p



Shortcut for /part



[help_/n]

### /n



Shortcut for /nick



[help_/m]

### /m



Shortcut for /mode



[help_/q]

### /q



Shortcut for /query



[help_/nws]

### /nws



Removes the 'ws' modes from you.



[help_/wi]

### /wi



Shortcut for /whois



[help_/wii]

### /wii [nick]



Sends a /whois nick nick



[help_/d]

### /d



Shortcut for /describe



[help_/t]

### /t



Shortcut for /topic



[help_/sc]

### /sc



Shortcut for /names



[help_/w]

### /w



Shortcut for /who



[help_/ww]

### /ww



Shortcut for /whowas



[help_/dban]

### /dban



Shortcut for /unban



[help_/ub]

### /ub



Shortcut for /unban



[help_/ws]

### /ws



Adds the 'ws' modes to you.



[help_/send]

### /send



Shortcut for /dcc send



[help_/chat]

### /chat



Shortcut for /dcc chat



[help_/k]

### /k



Shortcut for /kick



[help_/i]

### /i



Shortcut for /invite



[help_/b]

### /b



Shortcut for /ban



[help_/brb]

### /brb



Shortcut for /away brb



[help_/bye]

### /bye



Shortcut for /quit



[help_/signoff]

### /signoff



Shortcut for /quit



[help_/leave]

### /leave



Shortcut for /quit



[help_/reconnect]

### /reconnect [quit message]



Reconnect you to your current server.



[help_/ascii]

### /ascii [file]



Sends line by line the text file specified to the current window (channel, query). If no file is specified, you will be asked for one.



[help_/minvite]

### /minvite [op|nop] [#channel]



Invites users from the current channel to another you specify.



 /minvite #lamest

  Invites all the users in the current channel to #lamest

 /minvite op #lamest

  Invites all chanops in the current channel to #lamest

 /minvite nop #lamest

  Invites all drones in the current channel to #lamest



[help_/sv]

### /sv



Sends a script ad to the current window (channel, query)



[help_/repeat]

### /repeat [text]



Says the specified text 20 times in a single line.



 /repeat hi

  Send: hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi hi



[help_/tbar]

### /tbar [ON|OFF]



Turns ON|OFF the titlebar updating every second



[help_/scriptsize]

### /scriptsize



Shows you the total lines&bytes of code currently loaded



[help_/aircdebug]

### /arcdebug [ON|OFF]



Mainly for development/betatesting



[help_/partyline]

### /partyline [on|off] [port]



Turns on|off the partyline.



 /partyline on 3333

  Turns on the partyline using the port 3333



[help_/addons]

### /addons



Opens the addons dialog. From here you con load/unload/manage your addons.



[help_/away]

### /away [away reason]



If you specify an away reason, sets you away.

If you don't specify an away reason, sets you back.



 /away food

  Sets you away

 /away

  Sets you back



[help_/awaysetup]

### /awaysetup



Opens the away Setup Dialog



[help_/back]

### /back



Sets your back from away



[help_/pager]

### /pager [a[way]|h[ere]] [on|off]

### /pager [f[lush]]



Manages your pager.



 /pager away on

  Sets your pager ON when away

 /pager here off

  Sets your pager OFF when not away

 /pager away

  Tells you if the pager is ON|OFF when away

 /pager flush

  Remove all the messages from your pager



[help_/pages]

### /pages



Shows you the stored pages



[help_/awaylog]

### /awaylog [on|off]



Sets the awaylog ON|OFF



[help_/enforcebans]

### /enforcebans [#channel]



Kicks all users that are currently banned in the channel



[help_/unban]

### /unban [#channel] [mask] [flags]



 Flags:

   -n[ick] banner

   -f[irst] N

   -l[ast] N

   -b[efore] ctime

   -a[fter] ctime



Removes ban entries from a channel.

If you don't specify any parameters, a dialog will popup.



 /unban #lamest *

  Removes all bans

 /unban #lamest *!*@*.fr -n tabo

  Removes all bans matching *!*@*.fr set by tabo

 /unban #lamest -f 10

  Removes the first 10 ban entries



[help_/upgrade]

### /upgrade



This used to upgrade the script automagically, without closing mIRC, but has been disabled for a few months.



[help_/rehas
```

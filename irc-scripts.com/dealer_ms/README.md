# dealer_ms v1.0 by CoolMaster

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

**Script Name:** dealer_ms  
**Version:** 1.0  
**Category:** game  
**Authors:** CoolMaster  
**Email(s):** <coolmaster@aeiou.pt>, <coolmaster@gameover.co.pt>  
**Website(s):** [http://www.mirc.co.uk](http://www.mirc.co.uk), [http://re.other](http://re.other), [http://re.voice](http://re.voice), [http://coolmaster.org](http://coolmaster.org), [http://<gameover.PTlink.net>](http://<gameover.PTlink.net>), [http://p.other](http://p.other), [http://PTnet.org](http://PTnet.org), [http://p.voice](http://p.voice), [http://coolmaster.org](http://coolmaster.org)  
**Release Year:** 2001  
**Tags:** dialog, nicklist, dcc, popup, sockets, timer, addon, protection, channel control, highlight, notify, alias, popups  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/dealer_ms/dealer_ms.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "dealer_ms.zip",
  "file_count": 9,
  "file_types": [
    ".ini",
    ".mrc",
    ".thm",
    ".txt"
  ],
  "max_file_date": "2001-03-31",
  "min_file_date": "2001-02-04",
  "total_size": 62.65,
  "largest_file": "mserv.mrc",
  "text": [
    "mservers.txt",
    "theme.txt",
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
-> Dealer Multiserver (ms) 1.0 (First RELEASE) by CoolMaster



Files:

readme.txt -> This file

loadme.mrc -> Load file, just load this file /load -rs path\loadme.mrc

mserv.mrc -> First multiserver file

mserv1.mrc -> Second multiserver file

multiserver.ini -> MultiServer configurations

mirc.thm -> mIRC Theme by CoolMaster

exodus.thm -> Default eXodus theme by _method_

mservers -> Multiserver servers, you can edit your servers

theme.txt -> Help to create your own theme's for multiserver





/mserv opens multiserver dialog /mserv [<server> [port]] connect to server







FAQ:



1. What MS is?

2. Uhm, ok ok!! but HOW DOES MS works?

3. Ok, I'VE GOT it! So what's the PURPOSE of MS?

4. HAS IT GOT many bugs?

5. Ok ok, GIMME some TIPS

6. Great! So show me some MS's commands

7. About



1. What MS is?

-- First OF all, I WANNA explain what MultiServer really is.

-- MS LETS you be on one parallel network with THE same mIRC.

-- In this MS version, just one network is supported! 

-- But i will improve it to endless networks.



2. Uhm, ok ok!! but HOW DOES MS works?

-- It's very easy to explain that. MS works with mIRC sockets 

-- and mIRC windows.

-- You might wonder " UuUuUuU but is it two clients on one?! 

-- NO! It's one client on two ;)



3. Ok, I'VE GOT it! So what's the purpose of MS?

-- Read answer number 1 :]



4. HAS it got many bugs?

-- Note, this is the first RELEASE, it's normal HAVING a few bugs

- unknown for me.

-- The notify(Watch) DOESN'T work on PTnet =(

-- Bug on DCC send and get: 

- The other user who SENT or RECEIVED the file maybe HASN'T the

- confirmation, the mIRC graphic for DCC Send and Get COULD NOT 

- work for the other user.

-- If tou connect with AN Erroneus NickName or a nick ALREADY in

- use YOU WILL need to reconnect and choose another nick.



5. ok ok, GIMME some TIPS

-- First i WANT to SUGGEST the use of MS on your secondary network

- because the MS HAS some features but DOESN'T replace Dealer Script

- TOOLS. Just like protection and other...

-- After one or two hours on a channel i SUGGEST UPDATING the 

- Nicklist, cycling or executing the /names command. 

- Some errors may happen on the nicklist.

-- You have some EXISTING commands like /kick #channel nick reason.

-- PROBABLY, isn't NECESSARY DOING that. 

-- I'LL explain this, for example, the format of PRIVMSG is 

- "privmsg Nick|#Channel :msg goes here" 

- If you forgot the ":" only "msg" goes to THE Nick|#Channel. Easy?

-- If some user TRYS to resume a file, it WON'T happen and the file

- shall not be resumed.

-- The notify(watch) and Ignore(Silence) WILL only WORK if the

- network supports those commands.

-- You can specify the Usermodes, ajoin and auto-login of Dealer's

- by selecting that on MS dialog. You can edit your networks, just 

- open docs\mservers.txt and edit it :]

-- ALMOST raw are halted



6. Great! So show me the MS's Commands

NOTE: <needed> [not OBLIGATORY] j(oin) MEANS that can be like this

- /J #channel or /Join #channel :]



/J(oin) <#Channel> [key] "Note: local &channels aren't SUPPORTED"

/P(art) [#Channel] [reason] "DOESN'T need to PUT the channel if is on active"

/Ircop "Scans IRCops IN THE active channel"

/Names <#Channel> "Names Command"

/Cycle or /Hop "CYCLES active channel"

/Q(uery) <nick> "OPENS A query window with nick"

/OP <nick> "GIVES nick op stauts on the active channel"

/De(o)p <nick> "DEOPS nick on the active channel"

/Voice <nick> "GIVES voice to nick on the active channel"

/Devoice <nick> "DEVOICES nick on the active channel"

/Topic <new topic> "CHANGES topic on the active channel"

/Me <msg> "sends an action to active channel or private"

/Ame <msg> "sends and action to all the channels you are in"

/Amsg <msg> "Sends a message to all channels you are in"

/Ctcp <nick> <type> "SENDS a CTCP to nick"

/Ping <nick> "SENDS a CTCP ping to nick"

/Say <msg> "SAYS something to the active channel or private"

/Msg <nick|#Channel> <msg> "SENDS a message to the chosen channel or private"

/W(hois) [nick] "/Whois on the chosen nick, if you don't specify /whois is on you!"

/Away [reason] "If reason isn't specified you RETURN from being away, when 

 you enter the reason you'll be away" -nao percebi aki-

/Notice <nick|#channel> <msg> "SENDS a notice to the nick or channel"

/Quit [reason] "If you don't specify the reason, the script will quit

 with a random reason"

/Raw <command> and /Quote <command> "SENDS a command to the server

 like /raw join #Script3rs"

/Links "OPENS a windows with al network links"

/Echo <something> "Echo Something"

/Notify [-r] <nick> [comment] "if you enter parameter -r you'll del

 a nick and remove it from watch, OTHERWISE ADDS a global notify

 user and watch"

/Ignore [-r] <nick> "ADDS or REMOVES ([-r]) silence for nick on network"

/K(ick) <#Channel> <nick> [reason] "KICKS nick from channel"

/Ban <mask> "BANS the chosen mask from channel"

/Unban <mask> "UNBANS the chosen mask from channel"

/Chat <
```

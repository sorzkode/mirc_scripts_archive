# ha v108.124.204.62 by Unknown

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

**Script Name:** ha  
**Version:** 108.124.204.62  
**Category:** game  
**Authors:** Unknown  
**Email(s):** <1teistum@monet310.telepost.no>, <1bah@du58-7.ppp.algonet.se>, <1Maverick@namsos2-7.ppp.sn.no>, <1herlofso@ti01-0147.dialup.online.no>, <1gautem@oslo2103.online.no>, <1Drange@Suldal124.robin.no>, <1Biff@drago-2.ibf.hist.no>, <1brumm@muffin.lakenet.no>, <1esoppeda@haugesund205.online.no>, <1gutolsen@tromso4-7.ppp.sn.no>  
**Website(s):** [http://www.mirc.co.uk](http://www.mirc.co.uk), [http://hazzard.base.org](http://hazzard.base.org), [http://hazardous.base.org](http://hazardous.base.org)  
**Release Year:** 1997  
**Tags:** t1 backbone, wav, protection, notify, rejoin, nicklist, slap, timer, alias, dcc, hangman, last seen, free ops., uptime, bot, interface, gui, kickban, no lag, midi, popup, flood protection, auto op, color text, xdcc, popups, mp3  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/Other/ha_11/ha_11.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "ha_11.zip",
  "file_count": 33,
  "file_types": [
    ".aft",
    ".cfg",
    ".dll",
    ".exe",
    ".hlp",
    ".ini",
    ".txt",
    ".vbx",
    ".wav"
  ],
  "max_file_date": "1997-05-08",
  "min_file_date": "1980-01-05",
  "total_size": 1122.23,
  "largest_file": "EXTRAS/NICKTRAC.EXE",
  "text": [
    "EXTRAS/COIN.TXT",
    "EXTRAS/LEIAME.TXT",
    "EXTRAS/MIRCPNT1.TXT",
    "HELP/RAW.TXT",
    "HELP/WARTAC~1.TXT",
    "README.TXT",
    "STARTUP.TXT",
    "TITLE.TXT"
  ]
}
```

## 📋 Text Content (from HELP/RAW.TXT)

```text

      401     ERR_NOSUCHNICK
                        "<nickname> :No such nick/channel"

                - Used to indicate the nickname parameter supplied to a
                  command is currently unused.

        402     ERR_NOSUCHSERVER
                        "<server name> :No such server"

                - Used to indicate the server name given currently
                  doesn't exist.

        403     ERR_NOSUCHCHANNEL
                        "<channel name> :No such channel"

                - Used to indicate the given channel name is invalid.

        404     ERR_CANNOTSENDTOCHAN
                        "<channel name> :Cannot send to channel"

                - Sent to a user who is either (a) not on a channel
                  which is mode +n or (b) not a chanop (or mode +v) on
                  a channel which has mode +m set and is trying to send
                  a PRIVMSG message to that channel.

        405     ERR_TOOMANYCHANNELS
                        "<channel name> :You have joined too many \
                         channels"
                - Sent to a user when they have joined the maximum
                  number of allowed channels and they try to join
                  another channel.

        406     ERR_WASNOSUCHNICK
                        "<nickname> :There was no such nickname"

                - Returned by WHOWAS to indicate there is no history
                  information for that nickname.

        407     ERR_TOOMANYTARGETS
                        "<target> :Duplicate recipients. No message \
                        delivered"

                - Returned to a client which is attempting to send a
                  PRIVMSG/NOTICE using the user@host destination format
                  and for a user@host which has several occurrences.

        409     ERR_NOORIGIN
                        ":No origin specified"

                - PING or PONG message missing the originator parameter
                  which is required since these commands must work
                  without valid prefixes.

        411     ERR_NORECIPIENT
                        ":No recipient given (<command>)"
        412     ERR_NOTEXTTOSEND
                        ":No text to send"
        413     ERR_NOTOPLEVEL
                        "<mask> :No toplevel domain specified"
        414     ERR_WILDTOPLEVEL
                        "<mask> :Wildcard in toplevel domain"

                - 412 - 414 are returned by PRIVMSG to indicate that
                  the message wasn't delivered for some reason.
                  ERR_NOTOPLEVEL and ERR_WILDTOPLEVEL are errors that
                  are returned when an invalid use of
                  "PRIVMSG $<server>" or "PRIVMSG #<host>" is attempted.

        421     ERR_UNKNOWNCOMMAND
                        "<command> :Unknown command"

                - Returned to a registered client to indicate that the
                  command sent is unknown by the server.

        422     ERR_NOMOTD
                        ":MOTD File is missing"

                - Server's MOTD file could not be opened by the server.

        423     ERR_NOADMININFO
                        "<server> :No administrative info available"

                - Returned by a server in response to an ADMIN message
                  when there is an error in finding the appropriate
                  information.

        424     ERR_FILEERROR
                ":File error doing <file op> on <file>"
                - Generic error message used to report a failed file
                  operation during the processing of a message.

        431     ERR_NONICKNAMEGIVEN
                        ":No nickname given"

                - Returned when a nickname parameter expected for a
                  command and isn't found.

        432     ERR_ERRONEUSNICKNAME
                        "<nick> :Erroneus nickname"

                - Returned after receiving a NICK message which contains
                  characters which do not fall in the defined set.  See
                  section x.x.x for details on valid nicknames.

        433     ERR_NICKNAMEINUSE
                        "<nick> :Nickname is already in use"

                - Returned when a NICK message is processed that results
                  in an attempt to change to a currently existing
                  nickname.

        436     ERR_NICKCOLLISION
                        "<nick> :Nickname collision KILL"

                - Returned by a server to a client when it detects a
                  nickname collision (registered of a NICK that
                  already exists by another server).

        441     ERR_USERNOTINCHANNEL
                        "<nick> <channel> :They aren't on that channel"

                - Returned by the server to indicate that the target
                  user of the command is not on the given channel.

        442     ERR_NOTONCHANNEL
                        "<channel> :You're not on that channel"
```

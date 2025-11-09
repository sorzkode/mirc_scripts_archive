# basic v6667 by default windows open

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

**Script Name:** basic  
**Version:** 6667  
**Category:** game  
**Authors:** default windows open  
**Email(s):** <belf@usa.net>, <dub@wildfire.moo.net>, <bdc@tm.net.my>  
**Website(s):** [http://sort.2](http://sort.2), [http://www.geocities.com/basic_mirc/](http://www.geocities.com/basic_mirc/), [http://www.geocities.com/basic_mirc](http://www.geocities.com/basic_mirc)  
**Release Year:** 2000  
**Tags:** wav, trigger, protection, notify, rejoin, toolbar, nicklist, auto-join, auto-op, timer, alias, mp3 player, auto away, repeat protection, away log, color scheme, auto-away, theme manager, dcc, channel protection, addon, uptime, bot, auto voice, uno, popups, swear, kickban, gui, midi  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/basic09282000/basic09282000.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "basic09282000.zip",
  "file_count": 28,
  "file_types": [
    ".ini",
    ".thm",
    ".txt"
  ],
  "max_file_date": "2000-09-28",
  "min_file_date": "1998-09-30",
  "total_size": 670.43,
  "largest_file": "SYS/popups.ini",
  "text": [
    "SYS/quits.txt",
    "SYS/help.txt",
    "SYS/fkeys.txt",
    "SYS/names.txt",
    "readme.txt",
    "changes.txt"
  ]
}
```

## 📋 Text Content (from SYS/help.txt)

```text
###########################################################################

# 

#  Help file for BASIC (final)

#

#  by blue-elf

#

# *** MODIFY AT YOUR OWN RISK!!! ***

#

###########################################################################

 

[topics]

1=aban abot about adcc addbot addlame addshit addtopic adduser addword ajoin amode atopic autoaway autobot away b back banstat bc boot c ca cbans chanset checkbans clone ck ckb cmod country ctcp cycall dcc deop display dop drot dv explorer filterkick fk fka fkb gb getidle gk gkb hop ie ig ircop j k kb lb lj lm ln lq lu

2=match mbans mdop mdv mk mkb mkbl mknv mkv mlk mok mop mp3 mpx mrot msend multi mv n netscape notepad op ov p pab ping pnop q rbot rejoin relc relcr relm reln relsc relsm relsn relq remf remword rjoin rmp3 rot sb sc send theme topic uban ulevel umod unbot undo unig unlame unshit untheme unuser uptime userlist v vk vnop w wall wallex whereis wi ww wx xget xhelp xlist



[commands]

aban=/aban <parm1-parmN>;address ban. Example: /aban .com .org .my -- will ban *!*@*.com *!*@*.org *!*@*.my

abot=/abot <-c|-j> <server|#channels> <botnick> <hostmask> <command>;adds <botnick> to list of "auto" bots;-c means trigger <command> on connect;-j triggers <command> upon joining a channel;For example:;/abot -c coins.dal.net NickServ *!*@* /NickServ IDENTIFY password;will automatically send the command to NickServ upon connecting to the server coins.dal.net;/abot -c *.undernet.org X *!x@channels.undernet.org /msg x@channels.undernet.org login #channel password;will automatically login yourself upon connecting to Undernet.;/abot -j #mychannel OurBot *!*bdc@*.tm.net.my /.ctcp OurBot GIMMEOPS now;will send the ctcp request to OurBot after you join #mychannel.

about=/about;tells some information about the script. 

adcc=/adcc <nick>;Allows <nick> who is not in your userlevel to;have a DCC transaction with you within 5 minutes.

addbot=/addbot <nick> <chan> <pass>;adds <nick> to auto-op request list in <chan> using <pass>.

addlame=/addlame <nick> <chan(s)>;adds <nick> to the banned nicks in channels given (if banning a nick in more than one channel, use a comma to separate the channels).

addshit=/addshit <level> <nick|hostmask> <#channels|*> [reason];adds <nick|hostmask> in <#channels|*> for [reason] with <level>.;Levels are:;1 - Offender will be deopped if opped.;2 - Automatically kick offender on join.;3 - Automatically ban/kick offender on join.;4 - Permanently ban offender at all times.;5 - Ignores nick permanently.

addtopic=/addtopic <topic>;appends <topic> to the current channel topic.

adduser=/adduser <+|-flags> <nick|hostmask> <#channels|*> [pass] [nick];adds <nick|hostmask> to userlist for <#channels|*>;Available flags:;o ctcp op;O auto op; v ctcp voice; V auto voice; c accept chats; s accept sends; u ctcp unban; i ctcp invite; I ctcp ident;x exempt user from channel protections;Example: /adduser +oci *!*@*.tm.net.my *;Adds the hostmask *!*@*.tm.net.my to all channels;with CTCP OP access, DCC Chat access, and CTCP INVITE access.

addword=/addword <word> <#channel1,#channel2...|*>;adds <word> to the banned words in channels specified.

ajoin=/ajoin <network> <#channel> [password];adds <#channel> to the autojoin list with [password] if there is one, for <network>.

amode=/amode <+spmtilmk>;changes all channels (that you are opped in) to the same <mode>.

atopic=/atopic;changes the topic in all channels that you are opped in with <topic>.

autoaway=/autoaway <on [N]|off>;toggles autoaway on or off. If N is not specified, defaults to 10 minutes.

autobot=/autobot <on|off>;toggles auto-op request to eggdrop bots.

away=/away [reason];sets yourself away with [reason].

b=/b <nick> [ban type] [ban duration];No help available.

back=/back;sets yourself back from being away.

banstat=/banstat [#channel];views the banlist of [#channel]; will default to current channel if [#channel] is not specified.

bc=/bc <calculation>;performs Basic Calculation;eg. /bc 1 + 2 will show 1 + 2 = 3

boot=/boot;see /MULTI

c=/clear [window];clears [window]

ca=/ca;clears all windows

cbans=/cbans;clears all bans in current channel.

chanset=/chanset ;brings up the channel settings dialog.

checkbans=/checkbans;checks the current channels for users that are in your personal banlist.

clone=/clone [echo];scans for clones in a channel, echo echoes the result

clonekick=/clonekick;scans for clones in a channel and kicks them.

clonekickban=/clonekickban;scans for clones in a channel and kickbans them.

cmod=/cmod <+|-spmtnlik>;changes modes for current channel.

country=/country <code>;tells you what country is <code>;eg. /country my will echo Malaysia

ctcp=/ctcp <nick> <request>;sends a ctcp <request> to <nick>.

cycall=/cycall;cycles all the channels you are in.

dcc=/dcc [history|send|chat <nick>];if used without the normal parameters, will show status of all DCCs open.;dcc history shows logged DCC transactions

deop=/deop <nick1 nick2..>;takes away op status from
```

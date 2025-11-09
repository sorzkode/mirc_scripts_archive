# NetLandScriptv2. v2.0 by  message being

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

**Script Name:** NetLandScriptv2.  
**Version:** 2.0  
**Category:** game  
**Authors:**  message being  
**Email(s):** <gh0st@home.se>, <netland@arabians.i-p.com>, <khaled@mardam.demon.co.uk>, <b@c.org>, <kline@dal.net>  
**Website(s):** [http://www.yahoo.com/Computers_and_Internet/Internet/Chat/IRC/](http://www.yahoo.com/Computers_and_Internet/Internet/Chat/IRC/), [http://_182-Don't_Leave_Me.MP3](http://_182-Don't_Leave_Me.MP3), [http://)_-_All_I_Want_To_Do_Is_Make_Love_To_You_[Live].mp3](http://)_-_All_I_Want_To_Do_Is_Make_Love_To_You_[Live].mp3), [http://)_-_River_[Live].mp3](http://)_-_River_[Live].mp3), [http://www.mirc.co.uk/get.html](http://www.mirc.co.uk/get.html), [http://n_it_all.mp3](http://n_it_all.mp3), [http://www.yahoo.com/Computers_and_Internet/Internet/Chat/IRC/Channels/](http://www.yahoo.com/Computers_and_Internet/Internet/Chat/IRC/Channels/), [http://_saw.mp3](http://_saw.mp3), [http://www.mirc.co.uk.](http://www.mirc.co.uk.)  
**Release Year:** 2000  
**Tags:** wav, trigger, log viewer, remote script, protection, notify, idle timer, rejoin, away system, toolbar, state, nicklist, media player, auto-join, auto-op, bad word, slap, timer, weather, alias, dcc, hangman, mdi, access list, dice, title, sockets, $window().x, addon, dns lookup  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/kegdoctor_archive/NetLandScriptv2.0/NetLandScriptv2.0.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "NetLandScriptv2.0.zip",
  "file_count": 63,
  "file_types": [
    ".bmp",
    ".gid",
    ".hlp",
    ".ini",
    ".lag",
    ".mrc",
    ".txt",
    ".wav"
  ],
  "max_file_date": "2000-01-28",
  "min_file_date": "1996-11-17",
  "total_size": 2797.49,
  "largest_file": "pic/black.bmp",
  "text": [
    "versions.txt",
    "download/BossJoe.txt",
    "cool.txt",
    "pages.txt",
    "messages.txt"
  ]
}
```

## 📋 Text Content (from versions.txt)

```text
03/06/99 - mIRC v5.6



Fixes/Additions:

1.Fixed on midiend being triggered when you try to play a midi while

  one is already playing.

2.Fixed /window -g not working on hidden windows.

3.Fixed popup menu - separator bug.

4.Fixed on servermode/usermode events.

5.Fixed bug with Ctrl-Shift-Home shifting display text when trying to

  highlight text in editbox.

6.CTCPs sent to a channel are now displayed in the status window, not

  in the channel window.

7.Fixed wave sounds not playing properly if a wave sound was currently

  being played.

8.Fixed not being able to Control-K in a combo editbox.

9.Fixed $mask() bug.

10.Long lines in the /stats reply are now wrapped.

11.Fixed /flash not resetting tray icon.

12.$isfile/isdir/exists now return $false if provided with a

   $null value.

13.$chr(26) EOF is now stripped from lines written to log files.

14.Removed backward-compatible support for the old format of $left,

   $mid, $nick, $right, $snick, $str, where N was specified first.

15.Extended $nick() identifier to $nick(#,N,aohvr,aohvr), to replace

   all of the other $opnick/$nopnick/etc. identifiers.



   Both aohvr parameters are optional. The first specifies which

   nicks you'd like included, and the second specifies the nicks

   you'd like excluded.



   a = all, o = ops, h = helper, v = voiced, r = regular



   Note: the old identifiers are still supported for now.



16.Your away status is now shown in the Status window titlebar.

17.Fixed Channel topic "set by" message being displayed in channel

   when "show topic in channel" was turned off.

18.Fixed URL hotlink bug when over nicknames beginning with non-

   alphabetic characters which matched another nickname on the

   channel.

19.Fixed bug in /background command, wasn't freeing resources

   properly.

20.Added $dccport identifier for DCC Server port.

21.Added /echo -q switch which makes /echo not display any text if

   it is in an alias that was called with the . prefix.

22.Fixed bug when two simultaneous dcc chats by two users resulted in

   an extra dcc chat window that connected to a non-existent socket.

23.Extended switches for /load and /reload to allow -rsN where N is

   the script position of the script being loaded. This allows you

   to order/re-order a script.

24.$event now returns "ctcp" for a ctcp event.

25.on input now requires the <*#?=!@> field, and any window name can

   be specified now.

26.Extended on open event when it is triggered by a new query window

   opening:



   on 1:open:?:<wildcard text>:commands



   Where the wildcard text will match the message that the user

   is sending to you, causing a new query window to open. This allows

   you to halt the window opening based on the message.



27.On startup, mIRC no longer checks to see if another application is

   using its DDE Service name, this seems to cause problems. This

   means that if another app is using the mIRC DDE Service name when

   you run mIRC, the new mIRC will take over the DDE service name.

28.The date logfile names option now uses the full 4-digit year.

29.Fixed /iline bug.

30.When using /window ... /command, the contents of the @window

   editbox are not reset unless the /command is different from the

   previous /command.

31.Added on PING event, allows you to hide the ping server message.

32.The line "Session Time:" is now output to log files at midnight as

   marker for log files that are open for a long time.

33.Fixed /window -w switchbar buttons display bug.

34.Extended /window -kN switch, where 0 = hide prefix, and 1 = show

   prefix.

35.Fixed bug in /dde CONNECT topic processing.

36.Fixed bug in $did() which sometimes didn't return the text in

   an editbox.

37.Fixed on close event, ^ was triggering in the wrong order.

38.Desktop windows with the "flash" option turned on now have their

   own window icons flashed.

39.Added $crc(filename) identifier, returns 32bit CRC.

40.Added "Track Urls" switch to System menu in Channel/Query windows,

   auto-opens websites as they are mentioned in a window.

41.Added /loadbuf -ttopic switch, loads text in the [topic] section

   in a text file.

42.Added /findtext [-n] <text> command, searches active window for

   the specified text (same as Control-F).

43.For $readini /writeini /remini, can now specify multi-word topics

   in "quotes".

44.Added $initopic(filename,N/topic) identifier, returns [topic]

   name/Nth position in an ini/text file.

45.Can now specify multiple id numbers with one /did command, separated

   by commas, eg. /did -b test 2,12,14,16

46.Added Popup menu to DCC Options toolbar button.

47.Fixed /dde and $dde not freeing memory bug.

48.Added $dde -dN switch, where N is the number of seconds that $dde

   will wait for a reply.

49.Extended $strip(text,burc) where burc specifies the codes you want

   stripped from text.

50.Added $isid identifier, returns $true if an alias was called as an

   identifier, otherwise $fal
```

# canbot v4 by a parked car

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

**Script Name:** canbot  
**Version:** 4  
**Category:** game  
**Authors:** a parked car  
**Email(s):** <stacyluver@hotmail.com>, <worm@usr5-13.mor.nj.webspan.net>, <x@channels.undernet.org>, <DrD_@pc54.sfe.no>  
**Website(s):**   
**Release Year:** 1997  
**Tags:** wav, insult, protection, notify, nicklist, auto-join, slap, timer, weather, alias, dcc, last seen, dice, 8ball, owner commands, bot, popups, interface, guessing game, greet, kickban, gui, uno, popup, flood protection, now playing, mass kick, mass op  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/Other/canbot/canbot.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "canbot.zip",
  "file_count": 31,
  "file_types": [
    ".ini",
    ".txt"
  ],
  "max_file_date": "1997-03-13",
  "min_file_date": "1996-08-29",
  "total_size": 245.4,
  "largest_file": "yomama.txt",
  "text": [
    "yomama2.txt",
    "yomama.txt",
    "who.txt",
    "userchats.txt",
    "Time.txt",
    "startup2.txt",
    "startup.txt",
    "readme.txt",
    "randver.txt",
    "messages.txt",
    "8ball.txt",
    "hostchats.txt",
    "finger.txt",
    "dope.txt",
    "DCC.txt",
    "lame.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
**************Directions for setting up -=((-CaNBoT-))=-****************



***This bot is for Mirc v4.7+

***This Bot is for EXPERTS ONLY



--------------------------------------------------------------------------



1.   Unzip canbot.zip anywhere you want.  Then copy the mirc32.exe file to the

   directory you unzipped ozzbot too. 



--------------------------------------------------------------------------



2. Copy everything here into your Main mIRC Client in Popups/Status or Channel



&CaNBoT 

.&Start CaNBoT:/run %canbotcl $+ mirc32.exe %canbotcl $+ bot.ini

.-

.&Setup:/.writeini %canbotcl $+ bot.ini botchannels autojoin $?="Auto-Join Channels; Separate by Commas" |  .writeini %canbotcl $+ bot.ini botchannels hourschannel $$?="Hours Channel?"

.&Set Join Channels:/.writeini %canbotcl $+ bot.ini botchannels autojoin $?="Channels; Separate by Commas, no spaces"

.&Set Chan for Hours:/.writeini %canbotcl $+ bot.ini botchannels hourschannel $$?="Channel?"

.-

.&Join Current Channel:/dde mircbot command "" /join #

.&Set Command Line:/echo 4 ex. If your command line for CaNbot's mirc32.exe is c:\canbot\mirc32.exe enter c:\canbot\.  It can be anywhere is the computer, just remember to put \ at the end of it. | /set %canbotcl $$?="Where is Ozzbot (ex. c:\canbot\ )?"

.&Bot Disconnect:/dde mircbot command "" /rlevel 500 | /dde mircbot command "" /quit

.&Bot Die:/dde mircbot command "" /rlevel 500 | /dde mircbot command "" /exit



--------------------------------------------------------------------------



3. Copy everything here into your Main mIRC Client in Popups/Query|Chat



&CaNBoT 

.&Start CaNBoT:/run %canbotcl $+ mirc32.exe %canbotcl $+ bot.ini

.-

.&Setup:/.writeini %canbotcl $+ bot.ini botchannels autojoin $?="Auto-Join Channels; Separate by Commas" |  .writeini %canbotcl $+ bot.ini botchannels hourschannel $$?="Hours Channel?"

.&Set Join Channels:/.writeini %canbotcl $+ bot.ini botchannels autojoin $?="Channels; Separate by Commas, no spaces"

.&Set Chan for Hours:/.writeini %canbotcl $+ bot.ini botchannels hourschannel $$?="Channel?"

.-

.&Join Current Channel:/dde mircbot command "" /join #

.&Set Command Line:/echo 4 ex. If your command line for CaNbot's mirc32.exe is c:\canbot\mirc32.exe enter c:\canbot\.  It can be anywhere is the computer, just remember to put \ at the end of it. | /set %canbotcl $$?="Where is CaNbot (ex. c:\canbot\ )?"

.&Bot Disconnect:/dde mircbot command "" /rlevel 500 | /dde mircbot command "" /quit

.&Bot Die:/dde mircbot command "" /rlevel 500 | /dde mircbot command "" /exit

-

&CaNBoT CoMMaNDS

.&OWNeR CoMMaNDS

..Flood Protection

...Text

....Configure:/say .configtext $$?="How many text lines?" $$?="In how many seconds?"

....-

....ON:/say .textprot

....OFF:/say .rtextprot

...Action

....Configure:/say .configaction $$?="How many action lines?" $$?="In how many seconds?"

....-

....ON:/say .actionpro

....OFF:/say .actionpro

...Mass Deop

....Configure:/say .configmd $$?="How many deops?" $$?="In how many seconds?"

....-

....ON:/say .mdpro

....OFF:/say .rmdpro

...Clone/Join

....Configure:/say .configcj $$?="How many Joins?" $$?="In how many seconds?"

....-

....ON:/say .cjpro

....OFF:/say .rcjpro

...AutoGreet

....Configure:/say .protautogreet $$?="Number of Joins?" $$?="In how many seconds?" $$?="Seconds to disable autogreet?"

....-

....Fun Ignore:/say .funig $$?="1 fun command in how many sec?" $$?="Ignore for how long?" $$?="After fun commands exceed?"

....-

....ON:/say .agpro

....OFF:/say .ragpro

...Nick

....Configure:/say .confignick $$?="How many nick changes?" $$?="In how many seconds?"

....-

....ON:/say .nckpro

....OFF:/say .rnckpro

...ServerOp

....ON:/say .hackpro

....OFF:/say .rhackpro

...DCC Text

....Configure:/say .configdcct $$?="How many text lines?" $$?="In how many seconds?"

....-

....ON:/say .dcctpro

....OFF:/say .rdcctpro

..Toggles

...Seen

....ON:/say .seen

....OFF:/say .rseen

...NoOp

....ON:/say .noop

....OFF:/say .rnoop

...AutoGreet

....Reset Counter:/say .fsreset

....-

....ON:/say .autogreet

....OFF:/say .dautogreet

...ChanGuard

....ON:/say .changuard

....OFF:/say .rchanguard

...Ping Reply

....ON:/say .onping

....OFF:/say .offping

...Beg For Ops

....ON:/say .begon

....OFF:/say .begoff

...Login

....Password:/say .setpassword $$?="Password for login?"

....-

....ON:/say .login

....OFF:/say .rlogin

..Voting Poll

...Total Setup {

  say .pollreset

  say .vptopic $$?="Voting Poll Topic?"

  set %choice1 $$?="First Choice?" | %choice2 = $$?="Second Choice?" | %choice3 = $$?="Third Choice?" | if ($left(1,%choice1) != !) { %choice1 = ! $+ %choice1 } | if ($left(1,%choice2) != !) { %choice2 = ! $+ %choice2 } | if ($left(1,%choice3) != !) { %choice3 = ! $+ %choice3 } | say .choices %choice1 %choice2 %choice3

}

...-

...Topic:/say .vptopic $$?="Voting Poll Topic?"

...Choices:/set %choice1 $$?="First Choice?" | %choice2 = $$?="Second Choice?" | %choice3 = $$?="Third Choice?" | if
```

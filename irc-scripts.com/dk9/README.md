# AciD Script v10 by flipster

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

**Script Name:** AciD Script  
**Version:** 10  
**Category:** game  
**Authors:** flipster  
**Email(s):** <flipster@netegra.com>, <pgeurtz@email.com>, <k9@k9.chatnet.org>  
**Website(s):** [http://dkp.tripod.com/](http://dkp.tripod.com/), [http://dk9.tripod.com/](http://dk9.tripod.com/), [http://members.tripod.com/dk9/index.htm](http://members.tripod.com/dk9/index.htm), [http://dk9.tripod.com](http://dk9.tripod.com)  
**Release Year:** 2000  
**Tags:** script editor, last seen, dialog, nicklist, full script, popup, wav, trigger, timer, addon, bot, protection, alias, popups, uno, interface  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/dk9/dk9.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "dk9.zip",
  "file_count": 8,
  "file_types": [
    ".bmp",
    ".hlp",
    ".mrc",
    ".ppa",
    ".txt"
  ],
  "max_file_date": "2000-03-19",
  "min_file_date": "1997-08-25",
  "total_size": 307.97,
  "largest_file": "dk9.bmp",
  "text": [
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
#BOF

#  Dynamic K9 Popups by flipster <flipster@netegra.com>



#  Install

1. Unzip all files to any folder

2. Type /load -rs drive:\path\dk9.mrc

	eg. /load -rs c:\mirc\scripts\dk9.mrc

3. Or load it within the script editor



#  How to use

Simply authenticate (auth) with k9



#  Commands

/quickauth [$1] [$2] 

	1. $1 and $2 not required, either order password channel or channel 

	    password accepted.

	2. will auth in $1, $2, $active, or will ask.

	3. will use $1, $2, %k9password, or will ask for password to use.

/k9unload - will unload DKP.

/k9custom - will bring up Customize dialog

/k9help - will bring up Help dialog

/k9fix - will clear things up for auth

/qa - quickauth, just quicker (used by other scripts so be careful)



#  About

Dynamic K9 Popups, re-written, and only runs on mIRC 5.61. Built to help deal with K9, Chatnet's channel

	service bot. Just try it, any problems, look for flipster. Bugs, same thing

	Will run with i2, one thing, if you selected "display notices to dqwindow" in the misc. config 

	menu, all of k9's messages will still show up, even the ones meant to be hidden. Works with 

	VirusScript 2000, but is buggy, will not catch anything done using /msg k9 or /msg k9@k9.chatnet.org 

	so if you use VirusScript's popups to do your commands then it will not catch it, and hide K9's

	commands option will not avtivate this addon (all because they must have halted the /msg command 

	somewhere in there). Plus the same bug as in i2, if the channel bot window is open, it will display 

	the info there even the ones meant to be hidden. Will run on Basic, but Basic displays the incoming 

	notices from K9 no matter what, so be ready for screen flyby if you check access or banlist. Very

	buggy on Havok 2k. will not catch any /msg's or /raw's sent to k9 (will catch /raw -q though) and will

	not work using the script's built in k9 popups.



# Compatibility

Dyanimc K9 Popups work flawlessly with:

	Peace & Protection 4.00

	IrcN7.11

	ShowDown v10 Pro

	Leaopard Script 2000

	Elite Script 2000

	[AciD Script] 1.3

	7th SpaRRow 5.0

Dynamic K9 Popups has display problems with:

	I 1.04

	Basic 3.0

Dynamic K9 Popups works, but is buggy:

	VirusScript 2 - Will not respnd to /msg or use script's built in popups

	Havok 2k - Only responds to included popups, raw -q privmsg, and input to channel (eg k9 access)



#  New

Version 4.13 - 3.18.2000

1. Fixed access display bug

2. Added Addmask to access display, it will gather a list of nicks on that channel and let you choose who will be addmasked (must be on the chanel)

3. Added "Sorry master, I don't see that nick on the channel." to the echo list.



Version 4.12 - 3.17.2000

1. Changed banlist to comply with chatnet's new banlist format (now like access).

2. Added autoauth when k9 joins for autoauth channels.

3. Added k9fix to raw 401 (no suck user) in case k9's not online.

4. Changed nicklist popups to show 'op' on nonops, and 'deop' on ops.

5. Added "Thats funny i see a @ by his name" to the other echo list.

6. Changed nicklist popups to show 'voice' on nonvoices, and 'devoice' on voices.

7. Fixed homepage and email in dk9.ppa (peace & protection addon)



Version 4.11 - 3.13.2000

1. Introdueced new command /k9fix. This will fix the auth bug when k9 isnt there and it attempts to auth some time later.

2. Changed email to pgeurtz@email.com. (cuz im movin yall)

3. Fixed pnp addon loading bug



Version 4.1 - 3.11.2000

1. Now supports multichannel autoauths and will not flood k9

2. Fixed dialog bug when typing command in channel (ie k9 access)

3. Changed filenames to dk9.mrc and dk9_dialog.mrc



Version 4.0 - 1.29.2000

1. Redesigned script completely. Moved Popups to seperate optional file. Put all Dialogs in one tabbed dialog

2. Brought back Upgrade via the web feature (not for public release yet, still in alpha testing)

3. Changed Addon help to picture help. Added K9 help dialog to main dialog

4. Added option to display all K9 msgs to dialogs

5. Redesigned Banlist and Access dialogs. Unban check, now can do multiline. Added Suspend and level, remuser

 moduser and level, and remmask to access dialog

6. Added about dialog (all for me =)

7. Changed ctcp from ($findtok(blah,$1,0,46)) to ($istok(blah,$1,46))

8. Removed support for Add-On Organizer and Dialog Progress indicator



Version 3.11 - 10.10.1999

1. Fixed $k9.password

2. Fixed /quickauth bug.



Version 3.1 - 10.4.1999

1. Made Access dialog, similar to Banlist, can be turned off/on the same way.



Version 3.01 - 9.26.1999

1. Added "Unban" check on banlist dialog, will unban the seleceted line when

 close is pressed. Only will show check if you are level 75 or higher in that

 channel.

2. Made P&P4.00 addon file, if you're using this file with Peace & 

 Protwection 4.00, load it in the Addons dialog. (Use the Unload button in

 the Customize dialog to unload the script, not P&P's Uninstall command)

3. Renamed the Level... to its unofficial r
```

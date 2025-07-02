# InfoBloot v1.03 by IceShaman

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

**Script Name:** InfoBloot  
**Version:** 1.03  
**Category:** bot  
**Author(s):** IceShaman  
**Email(s):** <infobloot.addons@icenetwork.co.uk>, <ice@icenetwork.co.uk>, <infobloot.bugs@icenetwork.co.uk>, <infobloot.faq@icenetwork.co.uk>  
**Website(s):** [http://infobloot.icenetwork.co.uk](http://infobloot.icenetwork.co.uk)  
**Release Year:** 2003  
**Tags:** timer, greet, flood protection, rejoin, update checker, alias, irc bot, uptime, dns lookup, dialog, random fact, trigger, addon, bot, protection  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/20070220184725_InfoBloot_1.03/20070220184725_InfoBloot_1.03.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "20070220184725_InfoBloot_1.03.zip",
  "file_count": 5,
  "file_types": [
    ".bmp",
    ".ini",
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2003-11-02",
  "min_file_date": "2003-05-06",
  "total_size": 260.99,
  "largest_file": "InfoBloot.mrc",
  "text": [
    "InfoBloot/ifbtutorial.txt",
    "InfoBloot/ifbreadme.txt",
    "InfoBloot/ifbhelp.ini",
    "InfoBloot.mrc"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## InfoBloot/ifbreadme.txt

```text
InfoBloot Readme

i./Installing
ii./Background Information
iii./Known Issues (Bugs)
iiii./Changelog
iiiii./Todo
iiiiii./Help
iiiiiii./Bugs
iiiiiiii./Scripting help
iiiiiiiii./Mailing list
iiiiiiiiii./Disclaimer
iiiiiiiiiii./Thanks
iiiiiiiiiiii./Copyright


Installing (exactly the same as in the tutorial):

To Install and get going quickly:
1. Unzip infobloot.mrc into your mIRC directory
2. Type /load -rs infobloot.mrc 
3. Click InfoBloot on the menu bar and then click Options and then Options
4. Fill out in the options you want (see the tutorial for further information)
5. Press Ok

*InfoBloot connects using mIRC so to get it to connect just fill in the required
details in the mIRC dialog. Use the /server command to connect (or use the dialog)
and use the /join command to make InfoBloot join a specific channel*

For more detailed information please see the tutorial.


Background Information:

InfoBloot was coded freelance by me, IceShaman. When the project was first launched, it was 
designed to allow easy creation of factoids with optional lock and unlock nothing more nothing 
less...How I laugh at how rubbish it first was. As with all things good it was very hard to get the 
basic hardcoded things in then came the easier part of customisation and addons with the 
exception of dialogs. Finally came the nice lovely protection and extra frilly rubbish for the very
n00biest of n00bs to love and admire. Then I woke up...


Known Issues:

-Occasionally right after a backup hacklog/botask combo boxes ares blank *re-run dialog to fix*
-Sometimes multiple factoids are shown when BotAsk is enabled - affected versions: 1.02 OLD
-Sometimes factoids counter gets reset to 0, to fix just type:
 InfoBloot, factnum synchronise     -  affected versions: pre 0.09


ChangeLog:

Version 1.03 <beta>:

-added describe command
-fixed small hacklog entries bug.
-changed quit access denied message so it actually says quit and not 'quick'
-added announce command for channel and private messages (requires access to channel
 commands).
-made encrypt/decrypt 'leet' code not change 'n' (was causing problems) 
-added join/part commands to private messages so if InfoBloot is on no channels you
 can make it join. 
-changed addon list command so it gives more information like what addons are loaded and avilable.
-changed calling code to addons so , will work i.e. InfoBloot, dict test would only work before
 but now: InfoBloot, dict, test - will work... 
-added support for masters with forbid privaledges being able to say forbidden words (i.e so
 they can unforbid heh)
-added checking for addons so it never shows the same addon as being loaded twice
 in the loaded addons box.
-changed main code to detect commands (on event) to speed things up slightly.
-tweaked documentation a bit
-fixed small bug in help where people could make InfoBloot reply with custom text (minor bug only)
-changed the way addons work (necessary) [note this may cause an incompatibilty]
-added some more options for budding addon makers - see tutorial

Version 1.02:

-made code more coherent for the status command
-fixed minor addon bug where an error would be given when dialog opens
-**MAJOR BUG FIX* fixed an incredibly deadly bug in hacklog, well actually several. Basically I
                  made it check the first letter of a word for $ and % except you could use a 
                  bold character first, and it would evaluate. Also you could use $+ and it 
                  would evaluate due to a bug in setting variables. Thanks to heinz for 
                  'hacking' InfoBloot =) and hopefully everything should be A Ok
-fixed bug where the bot would reply to hi even if custom replys were disabled
-fixed a few typos, thanks to Wedge the hawk-eyed beta tester :P
-added updatecheck command which returns if a new version is available or not remotely.
-added error messages if trying to retrieve news too quickly
-fixed help function so Infobloot, help <topic> works
-changed help script to not need a .txt file for giving status
-fixed karma bug where by a non-master could set karma beyond 10
-made shift decryption so it works basically
-fixed encryption/decryption scripts so they all actually work (after months of neglect)
-fixed reply bug where if you couldn't change from action to reply or vice versa
-fixed another karma bug (in lock/unlock)
-fixed bug where using Infobloot, <factiod> ++ you could edit the karma regardless of locking
-changed forbid command to work from the config file and not ifbforbid.txt
-fixed blatant security vulnerabilities in the <action> code
-took out error checker, it was more useless than useless itself
-added error checker to make sure strings don't exceed 935 characters
-added help implementation for addons
-fixed small bug where anyone can make InfoBloot speak without setting a factoid



Some time in 2003 (0.04-0.09):
-after god knows how long I think InfoBloot is stable and well coded enough for a none-private release!
-built in remote backing up/restoring backups (restricted to the master admin)
-improved backup/restore code to be compatible with remote ussage
-being the kind guy I am I added an emergency ctcp command to clear the ignore list even if *@* is ignored
-debugged a few commands that didn't quite work.
-changed dns to work with the new VeriSign 'resolve to all' page...
-added support for remotely enabing/disabling user commands
-added more options to factnum like synchronise and set
-added masters admin option (so you can enable/disable user commands)
-added masters option to use addon commands
-added remote installing/uninstalling/listing of addons 
-added dialog function to edit the help script
-added full addon implementation apart from help...
-fixed masters dialog part
-messed up rewriting uninstall script and ended up having to rewrite 4 hours work, wahey!
-tweaked dialog code so it actually showed in Windows XP
-finally made addons script work kind of, but its very strict hehehe...
-made more dialog things work like update checker and news
-tested the backup system, realised it never ever worked and recoded it!
-made the backup system coherent with all the new features
-deleted a load of things, for the first time ever coded in a school term I hit 2000 lines yey
-Fixed a few bugs in masters dialog:
 -Errors spilt out for no apparant reason when deleting a master **fixed**
 -When a master was deleted the first master on the list was NOT shown **fixed**
 -When a master was first added they did NOT appear on the list *fixed**
 -After a master was deleted all other masters when selected showed the same ticked boxes as the deleted one **fixed**
-Fixed bug where any user could render a factoid cimpletely useless 
-Screwed up the entire script, thank god I did my 2-monthly backup the day before
-Deleted exists part of factoid storage, can just use != and name instead 
-**BUG FIX** fixed bug against bot lowering internal factoid list by one if a certain string is passed
-Did a lot of work for new functions for release due in a years time, *sigh SATS*
-Fixed dumb ass bug with commands not working due to alias -l being the same as mIRC commands
-With new layout in place added support for access commands from privmsg
-Ripped all code apart and redid layout from using goto to aliases *thew*
-Added dns feature
-Allowed support for $who (I will make custom identifiers if bugged enough)
-Improved Bug Fix to log attempts to use $ and % and added an admin command to read the log, and clear it
-**MAJOR BUG FIX** Added protection against people setting factoids that read from variables and identifiers
-Cleaned up code a bit and began work on dialogs, then gave up
-Added **FULL** support for the infobot protocol, fully described in the tutorial
-Fixed a few bugs
-Added basic support for the InfoBot protocol so it can ask other bots
-Jesus omg all this time using $left to count the chars and then I discover $len (script 183 lines smaller now) hehehe
-Added yet more commands

Some time in 2002 (pre 0.04 and early 0.0 beta a-f) :
-Added total factoid support, basically so it works. 
-Added more commands, see command reference for a huge list. (update - I really did make one)
-Added logging of time author and date for a factoid....so it can be TrAcEd!!!
-Improved how data is stored in the ini so more, useless, information can be added.
-Improved code layout to work better, ish...
-Thought about adding masters, but decided to leave that until the bot is finished (HA!).
-Added an admin variable that can overrule locked factoids (power r0x).
-Updated karma to work with custom messages (why did I bother).
-Added karma factoid rating system (nobody will use it heh).
-Made a variable file for some random reason.
-Wrote a bit of crap for a readme, update later. (update - never happened :P)
-changed ini file workings from all the titles in one section to a section for each factoid.
-Added support for lock/unlock.
-Scraped the idea of variables and decided to use ini files instead.
-Started making a rough bot to accept factoids using variables.

Todo:

-allow users to change flood protection check time (currently hardcoded at 5)
-add more commands to stats such as factoids for each user and user with most factoids e.t.c
-allow users to set factoids on words that are also commands (this will never ever happen :/)
-allow InfoBloot to quickly tell if a person is online (for messaging e.t.c)
-convert from ini files to hash tables (this will never ever happen :/)

Help: 

If you require any help with InfoBloot or wish to provide constructive criticism or
praise please feel free to email either ice@icenetwork.co.uk or visit the website:
http://infobloot.icenetwork.co.uk which provides support and details. 

Bugs:

If you find any bugs please repot them via e-mail to: infobloot.bugs@icenetwork.co.uk


Scripting Help:

There are loads of scripting help and tutorials about, read them before scripting.I am not going to
tell you how to script your own scripts. Do what you want I don't care, really I don't. When I read 
one I had the sudden urge to launch a brick at tabo. Mind you he was right, oh well I don't care.
If you don't like something in InfoBloot or think it breaches basic scripting rules, email me. And
if it somehow is the 1/25 that doesn't redirect to /dev/null I might change my ways, pfft.


Mailing List:

If there is ever one, which I doubt. It will be found at http://infobloot.icenetwork.co.uk 

Disclaimer:

By Running this script in any shape or form you choose by right to agree to the terms and
conditions of this disclaimer. Please read carefully.

1. IceShaman takes no responibility what so ever for your actions. If something goes
   wrong and any damage is caused then you are responsible. There is no purposely put
   dangerous code and nothing should go wrong.

2. You may use this script however you want for any legal purposes as long as you keep
    IceShaman and any other contributors to the code in the code somewhere. This does 
    not have to be visible fom outside the code.

3. Modifying the code and then stating that it is the original is totally forbidden. If you 
    decide to change it then it becomes unofficial by default.

4. If you decide to distribute the code unchanged please keep the full documentation
    with the code and if you wish add a note saying where you got the script from.

5. If you decide to change the code/make addons feel free to contact me and if they are
    any good I will release your code giving you full credit.


Thanks:

At the moment IceShaman is the sole contributor towards 99% of the code but there are 
still a lot of people that need thanking. If you feel you should be added to the list please
e-mail me with an explanation of why. And If I have unknowingly used some of your code
please e-mail me as well...

mircscripts.org  -  Providing a free service and community dedicated to mIRC and scripting,
                           I find it a great help that so many talented scripters allow you to use
                           their scripts and tutorials.

InfoBot Team   - Making (as far as I am aware of) the very first DECENT factoids bot.

BlootBot team  - Making useless addons for InfoBot.

Other People   - See the dialog 


Copyright:

InfoBloot and any sub programs or code in any way related to InfoBloot for mIRC or the
scripting language are copyright 2002-2003 IceShaman unless otherwise stated. You may use the 
script however you want within legal bounderies of your country or any other countries it may 
affect, redistributing changed code as original is strictly prohibited. Also redistributing 
without the full original documentation or using code that may cause harm in any way what so 
ever to a user is also strictly prohibited. All rights reserved.
```

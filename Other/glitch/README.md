# glitch v3.2 by a parked car

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

**Script Name:** glitch  
**Version:** 3.2  
**Category:** game  
**Authors:** a parked car  
**Email(s):** <glitchstudios@hotmail.com>, <w@channels2.undernet.org>, <eagliu@max5-gg-ca-41.earthlink.net>, <x@channels.undernet.org>  
**Website(s):** [http://n144=..Ping](http://n144=..Ping), [http://n98=.echo](http://n98=.echo), [http://channelyouareopin](http://channelyouareopin), [http://home.earthlink.net/~eajliu/teentalk](http://home.earthlink.net/~eajliu/teentalk), [http://amug.org:.SERVER](http://amug.org:.SERVER), [http://n48=.echo](http://n48=.echo), [http://n16=.ctcp](http://n16=.ctcp), [http://n58=.echo](http://n58=.echo), [http://n38=.echo](http://n38=.echo), [http://n68=.echo](http://n68=.echo)  
**Release Year:** 1997  
**Tags:** wav, insult, protection, notify, ascii art, nicklist, timer, weather, alias, auto away, dcc, auto-away, channel protection, dice, bot, auto voice, greet, gui, popup, flood protection, mass kick, auto-voice, popups  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/Other/glitch/glitch.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "glitch.zip",
  "file_count": 51,
  "file_types": [
    ".bat",
    ".bot",
    ".exe",
    ".ini",
    ".txt"
  ],
  "max_file_date": "1997-04-04",
  "min_file_date": "1995-07-02",
  "total_size": 259.8,
  "largest_file": "GLITCH/INI/popups.ini",
  "text": [
    "GLITCH/ASCII/LOGO.TXT",
    "GLITCH/ASCII/BEEF.TXT",
    "GLITCH/ASCII/WEB.TXT",
    "GLITCH/ASCII/TRAIN.TXT",
    "GLITCH/ASCII/STARTREK.TXT",
    "GLITCH/ASCII/SNOWMAN.TXT",
    "GLITCH/ASCII/POLICE.TXT",
    "GLITCH/ASCII/EAGLE.TXT",
    "GLITCH/ASCII/X-WING.TXT",
    "GLITCH/ASCII/UNDERNET.TXT",
    "GLITCH/ASCII/DRAGON.TXT",
    "GLITCH/ASCII/ROSE2.TXT",
    "GLITCH/ASCII/NRGLIST.TXT",
    "GLITCH/BACKUP/backup.txt",
    "GLITCH/CLONES/LOGS/logs.txt",
    "GLITCH/DCC/dcc.txt",
    "GLITCH/LOGS/logs.txt",
    "GLITCH/TEMP/temp.txt",
    "GLITCH/TXT/text.txt",
    "GLITCH/README.TXT"
  ]
}
```

## 📋 Text Content (from GLITCH/README.TXT)

```text
    ----------------------------------------------------------------------------

                          GLiTCH Script v3.2 for mIRC4.72 Readme File

                                    Created on 3/26/97            

    ----------------------------------------------------------------------------



                            (c) Copyright GLiTCH Studios, 1997



		     This file just has some notes on the script because

		     I wasn't up to writing an entire readme file. Please

		     send any question/comments/bugs/flames to my email

		     address at glitchstudios@hotmail.com



-I advise you to unzip the glitch.zip file to C:\GLiTCH because some things 

 might not work right. I'm not sure about that, though.



-The server list isn't quite complete yet. It's missing servers from Dalnet

 and EFnet, but has Undernet and IceNet servers. The missing servers will 

 probably be added in the next update.



-If you're an op in any channel, don't forget to set your home channel by

 typing "/sethome channelyouareopin". This feature updates your user list

 everytime you join that channel. Multiple channels are allowed.



-On slower computers, the trace connections popup might not work on the first

 try. Try it at least twice.



-The Autoop/Noop/AutoVoice/Protect user lists only adds the selected nick to

 the channel that you are in. This is so that if you want someone only to be 

 opped in a certain channel, he'll be opped in only your current channel. If 

 you want to user to have autoops, noop, autovoice, or protect in all channels,

 click "Add to All Channels" in the popup menu.



-The Search command is a usefull feature that scans the channel that you are in

 for the specified string. Type "/search stringtosearchfor" in a channel to activate.



-Preset varibles are variables that are already set to the defauly setting. The default

 setting is what I have found to be the most useful settings. You can leave the settings

 as they are, but you can also change them. The following is a list of 

 preset variables :

	User Autoop = Disabled

	User Protection = Enabled

	User Mode = +i

	Split Detector = Disabled

	On Join Clone Scanner = Disabled

	Massdeop Protection = Enabled; Max deops = 2

	MassKick Protection = Enabled; Max kicks = 2

	Serverop Protection = Enabled

	ChannelMode Protection = Disabled

	NoOp Mode = Disabled

	CTCP Flood Protection = Enabled

	Text Flood Protection = Enabled

	Auto-Away = Enabled; Idle time = 5 minutes



 There are probably more, but I can't remember them at the moment.



-Millennium Bot is just a clone that I made in a couple minutes. It has some of the features

 that GLiTCH Script has, but it also has a spy mode which you can activate from GLiTCH.

 When Millenium Bot first gets onto a server, he dde's GLiTCH Script asking for your address

 so that it can add it as master. If for some reason you are on different servers, it won't

 be able to add you as master, and it might end up adding someone else with the same nick as you.

 It is advised that you run GLiTCH and Millennium on the same server(like Undernet or Icenet).



-Miscellaneous Commands

	"/Bwords thingyouwanttosay" Makes you talk backwords

	"/Piglatin thingyouwanttosay" Turns your text into Piglatin(still some minor bugs)

	"/Split 6667" Switches to the last split server(Split Detector must be on).

	"/Clonesplit 6667" Run Millennium Bot and tells it to connect to the split

		server(Split Detector must be on).

	"/Minvite channelname" Mass invites to the channel you specify(It might flood

		you off)

	"/S hello" Makes Millennium Bot say "hello"

-F1-F12 Buttons

	F1-mIRC Help File

	F2-This readme text

	F3-Backs up INI Files

	F4-Random Nick

	F5-Toggle CTCP Flood Protection On/Off

	F6-Plays Messages

	F7-Clears all Windows

	F8-Un-ignores last ignored nick by flood protection

	F9-Nothing yet

	F10-Toggles Split Detector On/Off

	F11-Runs Millennium Bot

	F12-Kills Millennium Bot



    ----------------------------------------------------------------------------



I can't think of anything else to add, but that probably means I've forgotten something...

So if you want me to add anything else to this file, email me and I'll include it in the next

version. Oh yeah, this script was made in 800x600 resolution mode, so if you aren't 

running windows like that, some of the windows will probably look too big, or too small. So

will this text file.



    ----------------------------------------------------------------------------



email question/comments/bugs/flames to glitchstudios@hotmail.com
```

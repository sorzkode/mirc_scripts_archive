# added continuous v4.0 by a  then

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

**Script Name:** added continuous  
**Version:** 4.0  
**Category:** game  
**Authors:** a  then  
**Email(s):** <adam@ircscripts.com>, <khaled@mardam.demon.co.uk>, <b@c.org>, <email@address.com>  
**Website(s):** [http://www.yahoo.com/Computers_and_Internet/Internet/Chat/IRC/](http://www.yahoo.com/Computers_and_Internet/Internet/Chat/IRC/), [http://www.ircscripts.com/night98](http://www.ircscripts.com/night98)  
**Release Year:** 1998  
**Tags:** wav, trigger, remote script, protection, notify, idle timer, fserver, rejoin, away system, toolbar, state, nicklist, auto-join, auto-op, timer, alias, mp3 player, dcc, mdi, title, sockets, $window().x, addon, dns lookup, bot, interface, uno, greet, gui, ctcp replies  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/kegdoctor_archive/NightShade98 Script/NightShade98 Script.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "NightShade98 Script.zip",
  "file_count": 16,
  "file_types": [
    ".exe",
    ".hlp",
    ".ini",
    ".old",
    ".txt"
  ],
  "max_file_date": "1998-11-21",
  "min_file_date": "1998-02-16",
  "total_size": 1516.51,
  "largest_file": "MIRC32.EXE",
  "text": [
    "README.TXT",
    "VERSIONS.TXT",
    "REDNECK.TXT"
  ]
}
```

## 📋 Text Content (from README.TXT)

```text
NiGhTsHaDe '98 README - www.ircscripts.com/night98 - adam@ircscripts.com

------------------------------------------------------------------------

-Aliases-



	Nuke Nabber has an addon in this script. If you set your nuke nabber program to IDE 

Device 'mIRC' and mIRC's IDE Device to 'mIRC' then on a nuke attack, NiGhTsHaDe '98 will warn

you.



	Here are the aliases in NiGhTsHaDe '98:



/startup	plays the startup animation

/word		displays an ascii 'Word Up' message

/time		displays the time in an ascii box

/op		op a user - usage: /op <nickname>

/dop		deop a user - usage: /dop <nickname>

/j		join a channel - usage: /j #channel

/p		part the current channel

/w		whois a user - usage: /w <nickname>

/k		kick a user from current channel - usage: /k <nickname>

/q		query a user - usage: /q <nickname>

/n		notice a user - usage: /n <nickname> <message>

/o		op notice current channel - usage: /o <message>

/ping 		ping a user - usage: /ping <nickname>



[? = Number from 1 to 8]

/b? 		Talk in a box - usage: /b? <message>

/takeover	takeover current channel

/alist          Tell stats about the channel your in

/aalist         Echo stats about the channel



-Nick Completion-



	To use nick completion, enter the first few characters of the person's nickname

followed by a ':' then a space and then your message.



[People in channel: Adam, [NeF]Red5, [DN]El-Cid, [NeF]ShAnKsTeR]

Input --> ad: hey there

Output -> Adam: hey there



Input --> [ne: wassup yo

Output -> [NeF]Red5: wassup yo



Input --> [NeF]S: hey this is cool

Output -> [NeF]ShAnKsTeR: hey this is cool





-Mp3 Player-

	

	You must run setup first before playing any mp3's. This is to setup your directories.

The Mp3 player built into this will play Mp3's with or without spaces in their filenames. It will

play long filenames. Such as filenames with more than 8 characters. To use the random mp3 player

your going to have to create a playlist via your mp3 player. Also in v4.0 added continuous

random player. It tells you what song it plays. Doesn't work 100% but its very nice feature.





-Away System-



	You must run setup first before using the away system. This is to setup your away 

nickname and timezone. I usually use Vyc|Away so i can use it on irc servers that have that

9 character limit to nicknames. It will display the away message every 15 minutes and whenever

someone notices or messages you. Also displays how long you were gone for when you return. Also

a window appears when you go away, this logs any messages sent to you.





-Ping Responder-



	When someone pings you the NiGhTsHaDe '98 logo is noticed to them. If someone types

'ping me' in any channel your in, you will automatically ping them and send them their ping

response.





-Quake Roster-

        To set the current offense, defense, and unsure lists just highlight the nicknames that

will appear on each list, then right click, goto Quake Match Roster, then goto add. Make sure you

highlight all the nicknames. If you want to add someone else after you set a list, your going

to have to highligt all the names again.





-Text Commands-



	When typed in channel, these commands to the following:

!roster		notices the current quake roster to the person

!time	        notices the current time and date to the person

!date 		notices the current time and date to the person

!redneck        tells the channel a redneck joke



-Cool Talk-



	Just use either Cool Talk 1 or 2 and when the box pops up, type in your message. The

message is then displayed in the current channel in a colorful way.





-Controls-



	Basic IRC channel controls:

Op		Give ops to a user

Deop 		Take away a users ops

Voice 		Give voice to a user

DeVoice 	Take away a users voice

Kick 		Kick a user from the channel

Reason Kick 	Kick a user from the channel with a reason. Box will display so you can give 

		reason

Ban 		Ban a user from the channel

Kick/Ban 	Ban a user from the channel and immediatly kick them

Reason Kick/Ban	Ban a user from the channel and immediatly kick them with a reason. Box will 

 		display so you can give reason

Delay Ban 	Ban a user for 10 seconds, then unban them

Delay Kick/Ban 	Ban a user for 10 seconds, immediatly kick them, then unban them

Reason Delay Kick/Ban 	Ban a user for 10 seconds, immediatly kick them with a reason, then

			unban them. Box will display so you can give reason







-UCentral-

	

	Hightlight a user and press UCentral and various information on the user will be

displayed.





-Whois-

	

	Hightlight a user and press Whois and information about the user will display in the

status window.





-Dns-



	Hightlight a user and press DNS and the users hostname and IP address will be displayed

in the status window.





-DCC Send-



	Hightlight a user and press DCC Send and you will be able to pick and choose a file to

send to the person.





-Notify List-



	Display the peopel online in your notify list [accessible via Optio
```

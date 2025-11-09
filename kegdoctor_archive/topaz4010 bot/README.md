# topaz4010 bot v30 by adding them to

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

**Script Name:** topaz4010 bot  
**Version:** 30  
**Category:** game  
**Authors:** adding them to  
**Email(s):** <topazchat@hotmail.com>  
**Website(s):**   
**Release Year:** 1999  
**Tags:** toolbar, rejoin, popup, trigger, auto-ban, timer, owner commands, bot, interface  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/kegdoctor_archive/topaz4010 bot/topaz4010 bot.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "topaz4010 bot.zip",
  "file_count": 4,
  "file_types": [
    ".exe",
    ".ini",
    ".rtf",
    ".txt"
  ],
  "max_file_date": "1999-05-02",
  "min_file_date": "1999-03-10",
  "total_size": 771.96,
  "largest_file": "TopazChat.exe",
  "text": [
    "Readme.txt"
  ]
}
```

## 📋 Text Content (from Readme.txt)

```text
==========================================================================

TopazChat Version 4.01b

==========================================================================



Version 4 works with a redesigned internal interface, which should make

it more stable.  See version changes below.



Redesigned things a bit for version 3, see version changes below.



Note:  /join on and /join off commands have been changed to 

/joinres on and /joinres off to avoid having the chat "join" the

channel "on"





2.070 now includes user join responses for anyone entering the channel, not

just those on the list.  To set up phrases for any user, set the phrases

for the "ANY USER" section of the standard user join list. It also includes

timer operations, see below for use of this feature.



******* Note: ************************************************************

	As of version 2.060 all whisper commands must begin with "/", such

	as /say, /join, /squelch... this prevents accidental problems when

	another owner is talking to you and begins a sentence with a word

	like "say"



TopazChat is a battle.net chat interface that offers many features not 

normally available in Starcraft or Diablo, making chatting much simpler 

and flexible.  It also has many automatic response features and whisper 

commands, allowing it to be used as a bot, a channel op, or just to annoy 

spammers in general.



To run TopazChat, make a directory and copy the TopazChat.exe file there.  

No other files are necessary to run the program, except those that are 

auto-created by the program when it is first executed.  





--------------------------------------------------------------------------

Logging on to Battle.net

--------------------------------------------------------------------------

To connect, just click [Connect] and then [log on].  You may wish to 

change your name and password to something other than "guest".  This name 

MUST be a name you have already established on Battle.net, either with 

Starcraft or Diablo.



Common problems logging on:



If you are connected and you press [log on] and nothing seems to be 

happening, there are several possible problems:



- if it says "log on failed", but TopazChat is connected, then the server 

you selected may be down.  Disconnect, change servers, and try to connect 

and log on again.



- if it says "logged on" but nothing is happening, not even a channel 

name in the upper right, then you probably entered an incorrect 

name/password combination.  The name MUST be one you have set up with 

Diablo or Starcraft first, otherwise you can only log on as Guest.  This 

can also happen if the server is not responding, try changing servers and 

connecting again.



Sometimes TopazChat will not join the channel you have entered for "home 

channel" in the configuration.  This is particularly true if the server 

you selected is slow in responding that day.  You may need to manually 

change channels with the [channel] button.  I am working on a way to fix 

this problem.



Try to avoid using the [log accounts] and [display accounts] option if 

you have the "/whois on join" turned on in the configuration.  With [log 

accounts] on, every /whois command will store the name and number of the 

person.  With "/whois on join" active, every single person who enters the 

channel will be stored and the list of users will grow quite large.  With 

[display accounts] on, TopazChat searches through its list of saved 

numbers to find the person who you did the /whois on.  If this list is 

huge, it could slow the program down.





********  WARNING: please use the text file feature wisely... if this or

other programs abuse the battle.net chat gateway by excessive advertising 

and/or flooding, Blizzard may decide to remove the chat gateway.



--------------------------------------------------------------------------

Timer Operations

--------------------------------------------------------------------------

You can define certain phrases to be said every so often, ranging from 

every 1 second to every 9999 seconds (avoid using anything less than 3

seconds, otherwise you run into the danger of being flooded off).  As with

all response options, there is no limit to the number of phrases and time

intervals you can define, and the <user>, <random> and <drandom> codes 

work for these phrases.



--------------------------------------------------------------------------

Version information

--------------------------------------------------------------------------

4.01b

	fixed responses an whisper responses not working if the ignore

		code is blank

4.01a	

	fixed problem of connection not responding after cancelled

	reduced size of toolbar

	added specific user banning

	added color support for individual users and easier color setup

	added user-definable flood delay

	added response ignore code

	redesigned help screen

	added ability to reorder custom user list
```

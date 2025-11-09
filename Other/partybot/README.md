# partybot v1.8 by Dude

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

**Script Name:** partybot  
**Version:** 1.8  
**Category:** game  
**Authors:** Dude  
**Email(s):** <matt@snip.net>  
**Website(s):** [http://www.mirc.co.uk](http://www.mirc.co.uk), [http://www.snip.net/users/matt/home.htm](http://www.snip.net/users/matt/home.htm), [http://ml.org/home.htm](http://ml.org/home.htm), [http://unlink](http://unlink), [http://password](http://password), [http://dude.home.ml.org/home.htm](http://dude.home.ml.org/home.htm)  
**Release Year:** 1997  
**Tags:** greet, kickban, dialog, file server, auto kick, auto join, channel protection, popup, flood protection, auto op, irc bot, protection, bot, dcc  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/Other/partybot/partybot.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "partybot.zip",
  "file_count": 4,
  "file_types": [
    ".123",
    ".1st",
    ".exe",
    ".txt"
  ],
  "max_file_date": "1997-03-31",
  "min_file_date": "1997-03-30",
  "total_size": 142.17,
  "largest_file": "PARTYBOT.123",
  "text": [
    "README.1ST",
    "UPDATES.TXT"
  ]
}
```

## 📋 Text Content (from README.1ST)

```text
-=--------------------=----------------------=-

-PartyBOT v1.8 Created By Dude <matt@snip.net>-

-=--------------------=----------------------=-







-=[Table Of Contents]=-





CHAPTER 1 <--> INTRODUCTION

CHAPTER 2 <--> SETUP 16/32BIT

CHAPTER 3 <--> WHAT IS A BOT?

CHAPTER 4 <--> WHAT IS PARTYBOT AND WHAT DOES IT DO?

CHAPTER 5 <--> WHAT IS THE PARTYLINE AND WHAT DOES IT DO?

CHAPTER 6 <--> WHAT IS THIS NEW PARTYBOT IRC MAIL SERVER?

CHAPTER 7 <--> HOW DO I GET DIFFERENT ACCESS TO THE BOT?

CHAPTER 8 <--> HOW DO I LINK BOTS?

CHAPTER 9 <--> BOT COMMANDS

CHAPTER 10 <--> CONCLUSION







 -------------------------------

-- CHAPTER 1 -- INTRODUCTION --

 -------------------------------





Thank you for downloading the latest version of PartyBOT. Alot of work has

been done to make this bot bug free and reliable at all times. This bot

isn't really meant to be used by a newbie, someone who doesn't know much

about scripts, computers, etc... Please distribute this bot to ftps,

web sites based on mIRC script/bots and to all your friends. If you have

any suggestions, comments, questions, and/or notice any bugs in the script

please let me know via email. You are permitted to edit this script for your

own personal reasons aslong as you still give me credit for the original

design and you DO NOT distribute the edited version!





-NEW THINGS ADDED WITH V1.8-



1.  NOW TAKES 100% FULL ADVANTAGE OF MIRC V4.7 AND UP USING BOLD, REVERSE,

    COLOR, AND UNDERLINE CODES!

2.  CONTAINS MANY NEW COMMANDS AND FOR THE FIRST TIME... CHANNEL COMMANDS!

3.  SEVERAL NASTY BUGS HAVE BEEN ELIMINATED!

4.  NEW PARTYBOT IRC MAIL SERVER ADDED AND SEVERAL GAMES/BAR STUFF ADDED FOR

    EXTRA FUN!

5.  NOW WHEN BOTS LINK UP THEY MUST SEND A PASSWORD TO SUCCESSFULLY CONNECT!

6.  SEVERAL COLORS HAVE BEEN ADDED FOR DIFFERENT EVENTS ON THE PARTYLINE

    MAKING IT A COLORFUL EXPERIENCE!

7.  NEW ADDBAN, REMBAN FORMAT ALLOWING YOU TO SET EITHER A GLOBAL BAN OR

    PARTYLINE BAN. GLOBAL BANS INCLUDE AUTO KICKBAN AND FULL IGNORE WHILE

    A PARTYLINE BAN INCLUDES NO ACCESS TO THE PARTYLINE!

8.  REQUIREMENT TO USE THE SHUTDOWN COMMANDS EVERYTIME YOU WANT TO CLOSE

    THE BOT IS NOT REQUIRED ANYMORE!





-REQUIREMENTS-



Requires either the 16 or 32 bit versions of mIRC v4.7 and up but is highly

recommended that you use v4.72 instead or possible problems may occur. If

you do not have v4.72 you can get it at the mIRC Homepage: 



http://www.mirc.co.uk







 ---------------------------------

-- CHAPTER 2 -- SETUP 16/32BIT --

 ---------------------------------





If you have the 16bit version of mIRC then go to 16BIT SETUP or if you have

the 32bit version of mIRC then go to 32BIT SETUP





-=[16BIT SETUP]=-





1.  By now you have successfully unzipped the bot from the partybot.zip and

    now are ready to begin installing it. First make sure your at the DOS

    PROMPT. Then change to the dir where the files that were unzipped from

    the partybot.zip file are located at.



2.  Type "install" to begin installing all the files into the partybot 

    directory on the current drive.

    

3.  Now, make a copy of the mirc.exe file and put that in the partybot

    directory and rename the file to another name, like for example:

    partybot.exe



4.  Now, go into windows, if you arn't already in it to begin with, and run

    your regular mIRC program that you normally run. Then run the copy of

    mIRC that you put in the partybot directory.



5.  As soon as you run partybot the setup dialog will popup. From there

    input a nick and alternative nick for the bot and choose a IRC

    server/network to log onto. Make sure you and the bot log onto the same

    server/network so that you arn't on two different ones and so that you

    can communicate between each other.



6.  Now once you and the bot are logged onto the same IRC server/network

    then you can begin adding yourself to level 300 which is the highest

    access you can have on the bot! Their are two ways to do this:



	       (a) Switch over to the mIRC program running PartyBOT and type

		   /guser 300 <your nick> 3



	       (b) Switch over to the mIRC program running PartyBOT and go

		   up to the Commands Menu and select Passwords and check

		   your status window for the list of passwords and copy or

		   write down the MasterOP password. Then DCC chat with the

		   bot to access it's partyline and type ".pass (masterOP

		   password)" then finally type ".adduser 300 (user@host

		   mask) (optional comment but ain't required)



    I would recommend you go with (a) instead since it's hard for me to

    explain how to do (b) but you will need to learn how to use some of the

    commands mentioned in (b) if you want to get more use out of this bot.



7.  That is the basics of how to install the bot and get level 300 access.

    I will try my best to explain the rest in the next several chapters

    of this readme
```

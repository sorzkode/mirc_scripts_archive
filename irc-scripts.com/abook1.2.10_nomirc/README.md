# answerbook v1.2.10 by buzz

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

**Script Name:** answerbook  
**Version:** 1.2.10  
**Category:** game  
**Authors:** buzz  
**Email(s):** <buzz@black-magic.net>, <buzz@planetbuzz.net>  
**Website(s):** [http://www.black-magic.net](http://www.black-magic.net), [http://www.planetbuzz.net](http://www.planetbuzz.net), [http://www.black-magic.net/answerbook/](http://www.black-magic.net/answerbook/)  
**Release Year:** 2000  
**Tags:** stock quotes, wav, trigger, notify, nicklist, auto-join, timer, weather, alias, simple math calculator, dcc, 8ball, uptime, bot, user levels, dialog, popup, fserve, identd, random number, popups, mp3  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/abook1.2.10_nomirc/abook1.2.10_nomirc.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "abook1.2.10_nomirc.zip",
  "file_count": 14,
  "file_types": [
    ".dat",
    ".dll",
    ".exe",
    ".ico",
    ".ini",
    ".ocx",
    ".txt"
  ],
  "max_file_date": "2000-10-08",
  "min_file_date": "2000-10-08",
  "total_size": 1873.85,
  "largest_file": "msvbvm60.dll",
  "text": [
    "genie.txt",
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
------------------------------------------------------

AnswerBook v1.2.10

By: Lee 'buzz' Liu (buzz@black-magic.net)



Copyright  2000 Blackmagic New Media, Inc.

http://www.black-magic.net/answerbook/

October 2000

README.TXT





==========

WHAT'S NEW

==========





v1.2.10

- fixed US forecaster (this is starting to become a chore)

- added ebonics translator (?? en_eb text)



v1.2.9

- fixed stock quote lookup (again, sorry, silly mistake)

- added ICQ UIN lookup with online status (if enabled) and other info

- added webserver software/OS lookup



v1.2.8

- fixed quote lookup

- mirc5.8 will no longer be used (incompatibility with

  certain msg scripting functions causing problems with abook)



v1.2.7

- fixed US forecaster freezing abook

- fixed calc exploit that crashes abook

- added US & Canada residential phone number lookup



v1.2.6

- added currency converter between 62 countries/currencies

  (updates approx. once every 2 days)



v1.2.5

- fixed some words giving trash definitions

- fixed domain lookup not responding

- added a whole slew of metric/imperial conversions

  (eg: inch-cm, mile-km, ft-m, ga-l, lb-kg, etc)



v1.2.4

- added stock quote lookup for US and Canadian Exchanges,

  type ?? quote for usage information

- added support for more domain registrars other than NSI (not fully tested)

- added support for multi-word custom definitions using _ as space,

  add by using .adddef holy_cow text and use by ?? holy cow

- added ?? f-c and ?? c-f for conversion between Fahrenheit and Celcius

- the update notification is now built into the main program for more efficiency



v1.2.3

- added genie (magic 8ball type) with customizable responses using genie.txt

- fixed some more issues with US forecaster

- fixed using forecaster and spellchecker without parameters causing hang



v1.2.2

- added spellchecker, see Spellchecker section below

- fixed some issues with the US forecaster





============

INTRODUCTION

============



AnswerBook is a bot script written for mIRC, an Internet Relay

Chat (IRC) program. Some key features that separate AnswerBook

from the rest:



- dictionary word definition lookups

- language translator for 5 different languages

- Internic domain/whois lookup (supports Network Solutions and

  a few various registars)

- weather forecast for US, Canada and every major city on this

  planet

- spellchecker

- stock quote lookup for US & Canadian Exchanges

- added currency converter between 62 countries/currencies

  (updates approx. once every 2 days)

- US & Canada residential phone number lookup

- ICQ UIN lookup with online status and white pages info

- Webserver software/OS lookup

- Ebonics translator

- ability to add custom definitions



Other miscellaneous features include:

- simple math calculator

- virtual coin tosser

- random number generator

- genie (customizable 8ball)

- Fahrenheit to Celcius converter and vice versa

- More metric/imperial conversions: inch to centimetre, mile to

  kilometre, feet to metre, gallon to litre, pounds to kilogram,

  kilogram metre to pounds feet



AnswerBook has been tested on mIRC 5.6 and 5.7x and should work

with future versions.





============

INSTALLATION

============



If you downloaded the package that includes mirc32.exe, then

you're already set, just unzip the package into any directory

of your choice (eg. c:\mirc\answer).



If you downloaded the package without the mirc32.exe binaries,

simply unzip the package into any directory (eg. c:\mirc\answer)

then copy only the mirc32.exe into that directory.



File list for Full zip:

abook.ico       - icon file for mirc tray

abooksrv.exe    - AnswerBook server component (it does most of

                  the dirty work)

aliases.ini     - some aliases such as /j for /join

answerbook.dat  - main custom definitions library and variables

                  (all your custom definitions are stored here)

answerbook.ini  - primary AnswerBook script

answerbook2.ini - secondary AnswerBook script

genie.txt       - customizable responses for the genie

mirc.ini        - mIRC settings file

mirc32.exe      - mIRC32 executable (run this to start abook)

popups.ini      - popups file for mIRC

readme.txt      - some mystery file...

remote.ini      - userfile for mIRC



msinet.ocx      - Microsoft Internet Transfer ActiveX control

mswinsck.ocx    - Microsoft WinSock ActiveX control

msvbvm60.dll    - Microsoft Visual Basic Virtual Machine 6.0



The last 3 files above should be copied to c:\windows\system if

your using Win9x or c:\winnt\system32 if your using NT/2K.





===================

SUMMARY OF COMMANDS

===================



First-time run:

/msg AnswerBook owned



This sets you as the owner of the bot.  Type this command from

your regular IRC client.



Public/msg commands:

.adddef <keyword> <custom definition> - adds a custom definition

.deldef <keyword> - deletes a custom definition, if exists



.adddefuser <nick
```

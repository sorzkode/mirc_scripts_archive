# whilefix%5b3.0%5d%5b06-20%5d v3.0 by Bamaboy

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

**Script Name:** whilefix%5b3.0%5d%5b06-20%5d  
**Version:** 3.0  
**Category:** game  
**Authors:** Bamaboy  
**Email(s):** <bamaboy1217@gmail.com>  
**Website(s):**   
**Release Year:** 2005  
**Tags:** notify, alias, timer, interface  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/whilefix%5b3.0%5d%5b06-20%5d/whilefix%5b3.0%5d%5b06-20%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "whilefix%5b3.0%5d%5b06-20%5d.zip",
  "file_count": 6,
  "file_types": [
    ".cpp",
    ".def",
    ".dll",
    ".h",
    ".txt"
  ],
  "max_file_date": "2005-06-20",
  "min_file_date": "2005-03-26",
  "total_size": 70.13,
  "largest_file": "WhileFix.dll",
  "text": [
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
WhileFix.dll 

Version 3.0

By Bamaboy



[Forward]

This helpfile will be a little better lol the last one i

left out a key part by accident and didnt realize it for a couple of months



[Props]

Misanthrop	- PeekMessage idea.. much much better :) thx

Naru/Ami	- taught me this trick forever and a day ago in an application i wrote just it hit me while

			  i was doing nothing that hey this would work great in mIRC :)

			  Also she helped with version 3 with the threading and stuff

#genscripts	- on irc.vidgamechat.net - da^hype, tux` everyone :)



[Change Log]

Version 3.0.1	-	W_FindFile had a nasty parseing bug that caused crazy unexpected problems just randomly when useing the dll (i can personally blame this

					on my string handling skills) 3.0.1 fixed this bug however with a complete rewrite of the parser and should not have any random

					crashs due to W_FindFile also decided against making two different dll versions cause its only a bit bigger, also fixed the only other

					nasty bug that was because some retard(me) made UnloadDll void and not int and didnt return the right values so the shit hit the fan

					when mIRC tried to unload the dll after 10 minutes and this bug was the cause of a lot of frustrations on my part (how... sad...)

Version 3.0		-	Attempted Fix with bug in reference to TheGateKeeper which allowed the closeing of mIRC while a script was processing

					this was bad, not fatal but bad and caused unexpected results when restarting mIRC such as unloading certain script files

					Added W_FindFile fn and W_FindFileFORCEEXIT which provide an interface very similar to mIRC's $findfile identifier which allows

					a user to retrieve files from the operating systems, also in this release there will be two version of the dll one with findfile

					the other without it, findfile stuff takes all of about 8 kbs but some people cringe over size

Version 2.0.2	- 	A readme update nothing spectacular i kept laughing about the readme sucking then i realized i left the

					call to my dll out of the example... no wonder it was complicated to figure out hrmm? shoudl be better...

					wish i had a better reason to update it.... if u have some ideas give me a shout... i coudl always do

					a $findfilecall type thing like $findfile just uses my pseudo-multithreading thing if theres enoguh

					support than i will.

Version 2.0.1	- 	Staticly linked the c runtime library, while this increased the size to 40kbs there shoudl be

					0 in the way of unable to open problems, if this size increases pisses you off recompile it with dynamic

					linkage and distrubute in scripts at your own risk.... you have been warned :)

Version 2.0 	- 	Updating with TranslateMessage, aka what was missing to allow keyboard input, forgot about that.

					ya... my bad :)

Version 1.5 	- 	Updated to use peekmessage instead of getmessage, result... much much faster does not slow

					script processing anymore... :)

Version 1.0 	-	Initial Release



[Functions]

dll WhileFix.dll WhileFix .

Useage is the exact same as before call it in a loop of any kind and it will post messages for mIRC effectivly keeping

it from locking up..

- Example -

while (1) {

  dll WhileFix.dll WhileFix .

  echo -a This loop can go on forever and mIRC appears to act as normal.

  .timerecho 0 4 echo -a This Timer is still working during a while loop

}

- Example -

-------------------------------------------------------------------------------------

dll WhileFix.dll W_FindFile	[-l] c: * -1 somealias [0]

Returns: an identifier for the search that can be sent to W_FindFileFORCEEXIT to immediatly stop search

Parameters or -1 if there was an error with the input

c:	-	The directory you want to search without a trailing backslash (DO NOT INCLUDE trailing backslashes[though i think i fixed that bug])

		so for example c: c:\windows c:\temp c:\windows\temp\some\spyware

*	-	Wild card to match files with, this can include * and ? or neither so you can get some pretty detailed matchs

		so for example b*boy.ext b?m?b*.e?? bamaboy.ext the list goes on

-1	-	is the depth to search 0 means just the directory such as c: it would just search its files, 1 goes 1 subfolder 

		deep 2, two sub folders deep etc.  -1 recurses infinitly through all directories until none are left so -1 would

		search every file on c: in this case

somealias	-	an alias for the dll to return to this is required and the dll will send one of three messages to it

			-	WF_SERROR 0, this means there was a search error aka you did something stupid most notably the folder

				doesnt exist since i think thats the only error checking i implemented (: 

			-	WF_SEARCH # c:\path\to\file.ext, this is sent for every file matching the wildcard; and # is the #

				including this file that have matched and path\to\file.ext is obviously the flie

			-	WF_SDONE #, this is sent once the search is compleated either natually or after a call to force exit 

				and the # is
```

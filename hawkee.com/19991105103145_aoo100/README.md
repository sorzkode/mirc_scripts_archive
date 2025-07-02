# AddOn Organizer v1 by sik0fewl (Ryan)

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

**Script Name:** AddOn Organizer  
**Version:** 1  
**Category:** addon  
**Author(s):** sik0fewl (Ryan)  
**Email(s):** <xxdigitalhellxx@hotmail.com>  
**Website(s):** [http://www.aoo.com/](http://www.aoo.com/), [http://members.tripod.com/~doktorx/](http://members.tripod.com/~doktorx/)  
**Release Year:** 1999  
**Tags:** alias, dialog, popup, addon, trigger, load, files  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19991105103145_aoo100/19991105103145_aoo100.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19991105103145_aoo100.zip",
  "file_count": 3,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1999-02-13",
  "min_file_date": "1999-02-03",
  "total_size": 13.94,
  "largest_file": "aoo.txt",
  "text": [
    "aoo.mrc",
    "aoo.txt",
    "aooex.mrc"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## aoo.txt

```text
Add-On Organizer v1.0 for mIRC
------------------------------
This lil addon will help you find out which addons you want loaded and
which ones you don't. It is easy to install, just type:
	/load -rs aoo.mrc
(Where aoo.mrc is the 'Add-On Organizer v1.0' file. Don't forget to add 
he path if you did not download to your mIRC directory.)

When asked if you want to run initialization for the script click 'Yes' 
nd then choose the directory that all of your scripts are located in
(subdirectories are automatically searched). It is wise to have a
directory designated for scripts so that Add-On Organizer can index
them faster.

After installed, go to your main popup menu and select 'Add-On
Organizer'. A dialog windows pops up and it is pretty much self
explanitory from there:
	1. Click on script file
	2. 'Load', 'Unload', 'View' Script, or View 'Readme'
	3. If the selected script supports iNFO, the information about
	   the script and the author will automatically be displayed.
	4. Click 'Close'

Note that the script file indexer only indexes files with '.mrc'
extensions. If it indexed '.ini' files it would be filled up with
configuration files that are used by scripts.

-----------------------------------------------------------------------

iNFO Format
-----------
This section is for scripters only. If your are not a scripter, please
scroll down to the end and read the rest of the file.
'iNFO' is a lil thing i made to add information about a script into the
main script file. The format is as follows and _MUST_ be in this order,
starting at the very beginning(very first line) of the script file.

;#nfo-start
;#script-mainfile: <file>
;#script-unload: <command>
;#script-readme: <file>
;#script-type: <number> [0=Full Script, 1=Addon, 2='Net Util, 3=Misc Util, 4=Other]
;#script-name: <name>
;#script-version: <number>
;#script-description: <description>
;#script-homepage: <homepage>
;#script-author-nick: <nickname>
;#script-author-real: <name>
;#script-author-network: <network> (<server>)
;#script-author-email: <email>
;#script-author-icq: <UIN>
;#script-author-homepage: <homepage>
;#nfo-end

Now, step by step...
--------------------
;#nfo-start
  This must be the first line of the script, this lets any 'organizer'
  script know that the script is iNFO compatible.

;#script-mainfile: <file>
  <file> is the name the main file for the script (the one
  the user would /load). If specified in a script file that is
  _NOT_ the main file, it should be the only iNFO command given, like
  so:
	;#nfo-start
	;#script-mainfile: <file>
	;#nfo-end
  It must also be specified in the main script file to show that it is
  the main file.
  ie.
	;#script-mainfile: aoo.mrc

;#script-unload: <command>
  <command> is to be one command without any paramters that will
  that will be triggered when a script is unloaded with Add-On
  Organizer so that the script may unset unnecessary variables or erase
  old configuration (.ini) files. The command should be a unique name
  and _cannot_ be a local (-l) command.
  ie.
	;#script-unload: aoo.do-unload

;#script-readme: <file>
  <file> is the name of the readme file for the script.
  ie.
	;#script-readme: aoo.txt
	or
	;#script-readme: docs\aoo.txt

;#script-type: <number>
  <number> is the type of script as specified by the data in []'s.
  "[0=Full Script, 1=Addon, 2='Net Util, 3=Misc Util, 4=Other]" may be
  kept in place after the number in the script for when reading
  manually.
  ie.
	;#script-type: 1 [0=Full Script, 1=Addon, 2='Net Util, 3=Misc Util, 4=Other]


;#script-name: <name>
  <name> is the name of the script, excluding the version.
  ie.
	;#script-name: Add-On Organizer

;#script-version: <number>
  <number> is the version number of the script.
  ie.
	;#script-version: 1.0
	or
	;#script-version: v1.0b

;#script-description: <description>
  <description> is a brief (or detailed, if you wish) description of
  the script and what it does.
  ie.
	;#script-description: This addon allows you to easily organize and choose which scripts you want to use. Additional info can be given by a script author for detailed information about the script.

;#script-homepage: <homepage>
  <homepage> is the script's homepage.
  ie.
	;#script-homepage: http://www.aoo.com/

;#script-author-nick: <nickname>
  <nickname> is the nickname of the author.
  ie.
	;#script-author-nick: sik0fewl

;#script-author-real: <name>
  <name> is the real name of the author.
  ie.
	;#script-author-real: Ryan

;#script-author-network: <network> (<server>)
  <network> is the IRC network the author 'hangs out' in.
  <server> is one of the network's server (usually the random one).
  ie.
	;#script-author-network: DALnet (<irc.dal.net>)

;#script-author-email: <email>
  <email> is the author's email address.
  ie.
	;#script-author-email: xxdigitalhellxx@hotmail.com

;#script-author-icq: <UIN>
  <UIN> is the author's ICQ UIN.
  ie.
	;#script-author-icq: 11342167

;#script-author-homepage: <homepage>
  <homepage> is the author's _personal_ homepage.
  ie.
	;#script-author-homepage: http://members.tripod.com/~doktorx/

;#nfo-end
  Marks the end of iNFO data, a double CRLF will work as well but
  ;#nfo-end _should_ be used.


If '<none>' is specified in any iNFO command it will be handled
properly so that fields that do not have an 'answer' will work
correctly.

	ie.
	;#script-homepage: <none>
	if the script has no homepage.

-----------------------------------------------------------------------

Included:
---------
I included a small file (aooex.mrc) that is an example file of how the
iNFO Format works and so that you may see how Add-On Organizer works.

Notes:
------
I created the iNFO Format and, hence, it isn't the best. It would be
nice if there was some sort of 'iNFO standard' so that all scripts
would use it, and many people could make there own "Add-On Organizer"
scripts that would read the iNFO Format(so mine wouldn't be the only
one).

Known bugs:
-----------
None yet; however, if the specified script directory is large, the
script may take a while to index all of the script files (mrc).

Next Version:
-------------
By the next version:
 - I hope to script in a faster way for reading the iNFO Format from
   files.
 - I hope to script in a faster way for indexing all the script files
   in the script directory.


If you are interested in implementing the iNFO Format into your scripts
or you do not understand something about my script, please let me know
at xxdigitalhellxx@hotmail.com or on ICQ at 1132167. Also, let me know
if any parts of this text file are missing any vital information that
may make something sound confusing. E-Mail all bugs to the address
above, too.
```

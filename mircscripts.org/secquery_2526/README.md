# secquery v1.19 by krazy  Coded

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

**Script Name:** secquery  
**Version:** 1.19  
**Category:** protection  
**Authors:** krazy  Coded  
**Email(s):**   
**Website(s):** [http://bod.clearAll](http://bod.clearAll)  
**Release Year:** 2006  
**Tags:** dialog, nicklist, flood protection, timer, protection, alias  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/secquery_2526/secquery_2526.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "secquery_2526.zip",
  "file_count": 3,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2006-07-12",
  "min_file_date": "2006-07-12",
  "total_size": 22.36,
  "largest_file": "secQuery.mrc",
  "text": [
    "changelog.txt",
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
Beware of Dog: Secure Query 1.18 by krazy :: Coded using mIRC 6.17

CONTACT

---

network: irc.rizon.net

channel: #help



Report any errors or bugs there please ( I will be under alias krazy or turk).

----



Installation:

-----------------------------

	To load the script, place the file "squery.mrc" in your mIRC directory

	(Default C:\Program Files\mIRC\) Once "squery.mrc" is in your mIRC directory, 

	load up mIRC(if currently not running) and type /load -rs squery.mrc If it asks you

	to execute On Load commands, click yes.





Update:

-----------------------------

	Use this command to keep your old settings: /reload -rs squery.mrc





Usage:

-----------------------------

	You can right click a persons name, go under "Secure Query", and allow

	their query(if they are messaging you), decline their query(if they are 

	messaging you), add/remove them to/from your 'white list'.



	When someone messages you, their messages will appear in a window called @messages in the following

	syntax:

	[00:00:00] [NickName]: <message>



	check the window regularly for new messages.





Commands:

-----------------------------

	/squery: Opens the dialog.

	/kAllow: allows the requested query from a certain user. Syntax: /kallow nickname

	/kDecline: declines the requested query from a certain user. Syntax: Syntax: /kDecline nickname

	/kAlwaysAllow: permanently allows this user to msg you without need for accepting(adds to white list). Syntax: /kAlwaysAllow nickname

	/kRemoveAllow: removes a user from the white list. Syntax: /kRemoveAllow nickname

	/blockall: blocks all queries

	/unblockall: unblocks all queries

	/bodactivate: activates the script

	/boddeactivate: deactivates the script

	(all these commands can be executed from the dialog so you shouldn't need to use

	these, I just listed them here so the user may know what they are)



Credits

-----------------------------

krazy - coder

Hera - someone that pushed me to make this. :P

zack^ - suggestions

Nickolay - bug testing
```

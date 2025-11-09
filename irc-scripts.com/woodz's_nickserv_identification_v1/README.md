# woodz's nickserv identification v v1.0 by  right-clicking on

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

**Script Name:** woodz's nickserv identification v  
**Version:** 1.0  
**Category:** bot  
**Authors:**  right-clicking on  
**Email(s):** <the_woodz@hotmail.com>  
**Website(s):**   
**Release Year:** 2000  
**Tags:** dialog, click on the, popup, bot, this script comes with a few options (to change these options right  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/woodz's_nickserv_identification_v1/woodz's_nickserv_identification_v1.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "woodz's_nickserv_identification_v1.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2000-12-31",
  "min_file_date": "2000-12-31",
  "total_size": 9.91,
  "largest_file": "NickServIdentification.mrc",
  "text": [
    "ReadMe.TxT"
  ]
}
```

## 📋 Text Content (from ReadMe.TxT)

```text
WoodZ's Auto-Identification Script version 1.0

ICQ: 36626222

Email: the_woodz@hotmail.com

URL: Not Yet!

Date: 31st December 2000



I (WoodZ) wrote the whole of this script using the mIRC help file. I did not

leech other peoples scripts to make this. I am a 17 y/o male living in England.

I wrote this script for two reasons 1) It's a convenient script 2) I know how!

I did no research in terms of NickServ before I made this script so please send

all bugs and errors (and solutions if you know them) to me so i can fix them.

I am sure I am NOT the only person to make a script that Auto-Identifies but I

hope you still find it useful.



Info:

Research: None (Just used my own knowledge)

Ideas: My own

Scripted in: Notepad and mIRC

Time Taken: 1 - 2 hours (includes reading parts of mirc.hlp)

Tested using: mIRC 5.82 on Windows 98

Beta testers: None

Extra Info: This is the first script I have released. All the others I just made

for myself to use. However, I still wrote this script from scratch.



Intro:

I wrote this script to save you having to keep on typing:

"/msg NickServ IDENTIFY <PASSWORD>" every time you connected to a server that

uses services such as DALnet. Instead this script will identify automatically,

saving you having to type the command.



Features:

This script comes with a few options (to change these options right-click on the

Status window and choose "Set Auto-Identify with Nickserv"):

- Always: This will always send the "/msg NickServ IDENTIFY <PASSWORD>" command

whenever you connect to a server.

- Ask on Connect: This will ask you whether you want the script to identify with

NickServ each time you connect to a server. i.e. Yes or No

- or Never: This will make the script never automatically perform the "/msg

NickServ IDENTIFY <PASSWORD>" command on connect. But you can still IDENTIFY by

right-clicking on the Status window and choosing "Identify with NickServ".



Set-Up:

To load this script put NickServIdentification.mrc in your mIRC root directory

(c:/mirc/ - by default). Then open mirc and type:

/load -rs nickservidentification.mrc

You will the be presented by two dialogs. The first will get you to enter your

NickServ identification password. And the second will ask you when you want the

script to auto-identify with nickserv (see "Features" [above]).



Ideas for future releases of this script:

In future versions I plan to have a full list of commands for both NickServ

and ChanServ. e.g. (Register, Info, Ghost etc.). I just want to see if people

like this script before I develope further versions. If people don't like it

I will continue to just script for myself! 8-)

Please send all your ideas or comments to me via ICQ or Email. ThanX



Advanced:

This script uses the /nickserv command. This works on DALnet but not all other

servers may use the "/nickserv" command. They may only use the "/msg nickserv"

command. If this is the case then you will have to change this script so that

every time "/nickserv" appears you change it to "/msg nickserv" or

"/msg nickserv@services.dal.net" etc. (Change depending on server. If you are

not sure what command to use try typing "/msg nickserv help" when you are

connected to a server.

If you want to know where this script stores your password it stored in your

variables under %nickservpass so remember to remove this if you give your script

to someone else. This is the only place that your password is stored. It is NOT

stored in this file so feel free to pass this on without worrying about users

discovering your password.



Disclaimer:

I take no responsibility for how you use this script. If you are stupid with it

and people discover your password etc. then I will not help you out.



Terms & Conditions:

If you want to distribute this script do it freely just always include an

original copy of this script if you choose to modify it.

YOU WILL ALWAYS BE ABLE TO GET AN ORIGINAL COPY OF THIS SCRIPT BY CONTACTING ME.
```

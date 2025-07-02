# mIRC Link Looker v1 by Dude

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

**Script Name:** mIRC Link Looker  
**Version:** 1  
**Category:** addon  
**Author(s):** Dude  
**Email(s):** <matt@snip.net>  
**Website(s):** [http://www.mirc.co.uk/get.html](http://www.mirc.co.uk/get.html)  
**Release Year:** 1997  
**Tags:** addon, search, dialog  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19970707203557_linklook/19970707203557_linklook.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19970707203557_linklook.zip",
  "file_count": 2,
  "file_types": [
    ".ini",
    ".txt"
  ],
  "max_file_date": "1997-05-09",
  "min_file_date": "1997-05-09",
  "total_size": 9.96,
  "largest_file": "HELP.TXT",
  "text": [
    "HELP.TXT",
    "LINKLOOK.INI"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## HELP.TXT

```text
+----------------------------+
-    mIRC Link Looker v1.0   -
-   By Dude <matt@snip.net>  -
+----------------------------+



--TABLE OF CONTENTS--

  I - Introduction
 II - Instructions On How To Use This Addon
III - Conclusion



---
 |     INTRODUCTION
---

Thank you for downloading one of my latest cool addons! Please add this
addon to as many ftp, and websites related to mIRC as much as possible!
By using this addon you agree not to hold me responsible for anything
that may occur by using this addon. If you use this addon in your own
script designs, please atleast give me credit in your script.

This addon allows you to detect "possible" splits. It does this by
comparing two files. The first file is the server list file that by
default is set to servlist.txt but can be changed to any other name
thus allowing you to have a different server list file for each IRC
Network. For example: dalnet.txt for DALNET, newnet.txt for NEWNET, and
so on. The second file is the server list temp file. It is called
servtmp.txt and is created when you run the link looker to search for
split servers. Once that file is created it starts comparing files by
going line by line down the server list file and then checking if that
server name is listed in the server temp file. If the server isn't in
the server temp file then it is considered a possible split and is
reported on the current active window.

-REQUIREMENTS-

Inorder to run this script YOU MUST have mIRC versions 5.0 or 5.02, 16 or
32bit otherwise this script will not work! If you don't have either version
then i suggest you download the latest mIRC version from the mIRC Homepage:

http://www.mirc.co.uk/get.html



-----
 | |    INSTRUCTIONS ON HOW TO USE THIS ADDON
-----

This addon is easy to install and use. Follow the following steps in order
to activate the addon.

1. Run your mIRC Program

2. Then click the "Remote button" (has a C and a E on it)

3. Next click the file menu. Scroll down and select load/script

4. A dialog box should now pop up. Change to the directory/folder where
   this addon is being kept and double click on the file called LINKLOOK.INI

5. Once you've completed steps 1-4, then click OK and you are finally
   finished installing the addon for use. Remember to type "/REMOTE ON"
   if you haven't already so that remote is turned on (CTCPS, EVENTS,
   AND RAW). This addon should probably work side by side with any script
   such as 7th sphere, etc... because everything the script does is built
   into the LINKLOOK.INI and by loading it, it will work along with the
   rest of the script if your using another script along with it.

Now that you have the addon installed correctly, you need to know how to
use it. Their should be a extra section in the Commands Menu on the top
menu bar. The added section is called LINK LOOKER and has several other
sections in it that allow you to do several things with this addon. These
other sections include ABOUT, SEARCH, LIST FILE SETUP.
Each section is described below:

ABOUT: Gives you a list of information on what the addon is called, the
version number, who created it and how you can contact them for help,
etc...

SEARCH: By clicking this you will activate the link looker. it will
then create a server temp file called servtmp.txt and will use the server
list file, which should have been created by using the LIST FILE SETUP/
CREATE SERVER LIST option, and compare both files. It will browse through
the server list file and check if the server on each line is in the server
temp file. If it isn't then it is considered a possible split server. If
you haven't created the server list file then do that as soon as possible.

LIST FILE SETUP

   SET NAME OF FILE: Allows you to change and/or set a new file name to
   be used as the server list file.

   CURRENT NAME BEING USED: Shows you the current file name being used
   for the server list file.

   CREATE SERVER LIST: Creates a server list from scratch. Records all
   servers connected to the IRC Network you are currently on. The file
   is then used along with the SEARCH option to find possible split
   servers.

   ADD NEW SERVERS TO LIST: Scans the IRC Network you are on and checks
   if any of it's servers are currently listed in the server list file.
   If not then it records the server name in the file.



-------
 | | |   CONCLUSION
-------

Once again, thanks for downloading this addon. This addon is designed to be
a loadable/configurable addon making it one of my most invanced, coolest
addons ever! You are allowed to copy and paste and edit this addon aslong
as you agree to give me credit and not to distribute the edited version
of this addon unless it's part of a script, then you do have permission
to distribute it along with the script but PLEASE ATLEAST GIVE ME SOME
CREDIT. Not giving someone credit where it is due is just as bad as ripping
off a script! Thank you for your time...

Please let me know via email (matt@snip.net) if you have any questions,
comments, and/or suggestions about this addon. C-ya
```

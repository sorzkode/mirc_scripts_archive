# ppfserv v1.5 by Unknown

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

**Script Name:** ppfserv  
**Version:** 1.5  
**Category:** protection  
**Authors:** Unknown  
**Email(s):** <jer@telcomplus.net>  
**Website(s):** [http://www.pairc.com/pnp](http://www.pairc.com/pnp)  
**Release Year:** 1999  
**Tags:** toolbar, midi, file server, nicklist, dcc, popup, wav, trigger, fserve, timer, addon, highlight, alias, bot, popups, mp3  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/pairc.com/ppfserv/ppfserv.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "ppfserv.zip",
  "file_count": 4,
  "file_types": [
    ".mrc",
    ".ppa",
    ".txt"
  ],
  "max_file_date": "1999-04-20",
  "min_file_date": "1999-04-20",
  "total_size": 71.32,
  "largest_file": "fserve.txt",
  "text": [
    "fserve.txt"
  ]
}
```

## 📋 Text Content (from fserve.txt)

```text
==================================

	Version History

==================================



12/98 V1.0 -- First official release.

V1.1 to V1.3 -- Bug fixes.

V1.4 -- Changed how descriptions and downloads are done to make life easier.  Descriptions are now stored as just the filename, and the downloads list is updated when the top downloads is re-compiled for accuracy.  (Update Users of v1.3 or lower:  The conversion to the new format is done when the list is re-compiled, so nothing needs to be done.)

V1.5 -- The des command now can accept parameters from the command line.  Also, some notices were quieted, and some messages were changed to look like P&P messages.





==================================

	Background

==================================



(If you don't want to know about this, please skip to the next session.)

This script is a basic rewrite of Hawkee's File Server script way back when.  (I got permission to rewrite the script like this from him, but I'm giving him credit, because this script wouldn't be here if it wasn't for him.)  After reading the help file of P&P's, I saw that it would be cool to use the features that pai has put for a file server.  All I did was make it look better.  I didn't rewrite the code, except the options window.  I just left most of the code the way it is, so I wouldn't have to spend a lot of time figuring out what I was doing; although, I could have.  I didn't have a lot of time to spend on this.



Also, throughout the time I have been using Hawkee's file server, I have made some changes to the script a little at a time.  I have incorporated these changes and allowed users to turn off options they didn't want.  Features I added:



Changed to allow users to decide which channels to display the join notice.

Allowed the file server to take over leeching.  There are many features with this, and they are explained in the options section below.

Made it so free credits were given to a user when they first open the fserve.

Allowed the owner of the fserve to tell users when they get credits and give them a quick and easy way to transfer credits from one user to another through an alias.

Put more information into the credit INI files, so those files aren't wasting too much space.  This is explained in the Credit Files section below.

Changed the security around a little bit.  This new security isn't a guarantee, but it's a little tougher.  This is explained in the Security section below.

Because the custom mode can cause some lag, I added a feature to where there is a delay between DIR commands.  This is explained in the Options below.



This doesn't work with the Zenith file server add-on--at least, as far as I have tested it.





==================================

	Options

==================================



Active:  Is the fserve on and ready to use?  (Default:  Off.)

Command:  Command that users type to activate the fserve.  (No default setting.)

Directory:  Which directory on your hard drive to use for the fserve.  (Default:  none.)

Welcome File:  This file is displayed when a user opens the fserve.  (Default:  none.)

Ratio:  This number is multiplied by the size of files that are uploaded.  For example, at a ratio of 5 and a file that's uploaded of 2,500 bytes will get 12,500 credits.  This can be turned off if you don't want to deal with credits; although, to me, it defeats the purpose of a fserve.  (Default:  2.)

Mode:  Normal or Custom.  There are two modes.  The normal mode is just a display of files and their sizes that mIRC does by default.  Custom mode allows you to attach a description to each file and to colorize the list.  Custom mode requires that a list is compiled, and it has to be compiled whenever you make changes if you want the changes to be displayed in the lists.  (This has its disadvantages and advantages.)  (Default:  Normal.)

Max Sends and Gets:  This limits how many file transfers a user can do.  (Default:  5 on each.)

Start Credits:  When users activate the fserve for the first time, they are given this many credits.  If you have the fserve handle leeching (explained below) on, you can specify what percentage of this number the user gets.  (Default:  1048576 (1 MB).)

Acceptable File Types:  This feature prevents you from getting files you don't need.  You can easily edit this list (thanks to P&P).  Make sure that each extension is separated by a comma.  (Default:  wav,mid,zip,jpg,txt,exe,gif,mp3)

Deny Files Starting with . . .:  This prevents files that start with a certain character from coming through.  The list is easy to edit, and a comma between each character isn't necessary.  (Default: !@)

Record Number of Top Downloads:  This determines of how many files are in the top downloads list.  (Default:  10.)

Join Notice:  This allows you to advertise your file server to people when they join a channel.  You can specify which channels you want it advertised to (all for all channels and none for none).  (Make sure tha
```

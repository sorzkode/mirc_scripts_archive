# Advanced Search System v1.0 by Unknown

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

**Script Name:** Advanced Search System  
**Version:** 1.0  
**Category:** addon  
**Authors:** Unknown  
**Email(s):** <scab@home.se>  
**Website(s):** [http://scab.irc-scripts.com](http://scab.irc-scripts.com), [http://quakenet.eu.org](http://quakenet.eu.org), [http://scab.irc-scripts.com](http://scab.irc-scripts.com)  
**Release Year:** 2000  
**Tags:** gui, dialog, popup, timer, addon, alias, interface  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/ass/ass.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "ass.zip",
  "file_count": 5,
  "file_types": [
    ".bmp",
    ".ini",
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2000-08-19",
  "min_file_date": "2000-08-18",
  "total_size": 53.15,
  "largest_file": "scab.bmp",
  "text": [
    "ass.readme.txt"
  ]
}
```

## 📋 Text Content (from ass.readme.txt)

```text
 Advanced Search System, by Scab^

 Copyright  2000 Scab^

 All rights reserved



 Note: This document should be viewed with wordwrapping off.



 * INFO/ABOUT



 Advanced Search System (or A.S.S for short) is an addon for mirc,

 made to find files (like the regular windows search feature).

 Sadly, mIRC's got bad limits for searching, but there's nothing I

 can do about that. You can find answers for most question in the

 Help menu once you've loaded the script. Otherwise just mail me

 and ask.



 * INSTALLATION



 First, unzip all files to a directory (prefebly the mIRC dir).

 Now there are two ways of loading the script depending on where

 you've unziped the files. It is possible to put the files anywhere

 on any drive, it should work anyway, so here's the alternatives:



 If the files are in your mIRC dir: /load -rs ass.mrc

 If the files are in any other dir: //load -rs $shortfn($findfile($left($mircdir,3),ass.mrc,1))



 Notes: Don't forget the double slash in the second alternative,

        and be aware, it might lock up mIRC for a while during

        scanning. This is normal and mIRC will turn normal again

        shortly.



 * RUNNING



 Either use the menubar popup, entry 'Search', or type /search in

 any window with an editbox (where you can type stuff), meaning

 any channel, private chat, status window, or whatever. /search

 can be used with the syntax: /search <dir> <criteria> aswell.



 * KNOWN BUGS



 Not a bug really, but when using the /search syntax (read above)

 the search process starts before mIRC gets the time to print out

 all the buttons, combos and so on. The window will look blank

 during search, but unfortnatily there's nothing I can do about this.



 * PLANNING TO ADD



 Disabling/Enabling subdir searching.

 Improved 'old searches list'

 Ability to see filesize next to matches (without opening info window)

 Anything useful I can come up with. Feal free to send it suggestions.



 * CONTACT



 If you for some reason wants to contact me, I can be reached in #eXd

 on irc.quakenet.eu.org, on ICQ UIN 8618410, or by email; scab@home.se



 'Hope you enjoy the addon :)



  Scab^
```

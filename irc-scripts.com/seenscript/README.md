# June 98 v1.2 by Danaria

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

**Script Name:** June 98  
**Version:** 1.2  
**Category:** utility  
**Authors:** Danaria  
**Email(s):** <dany@mindless.com>  
**Website(s):** [http://www.mirc.co.uk/get.html](http://www.mirc.co.uk/get.html), [http://nscript.mrc](http://nscript.mrc)  
**Release Year:** 1999  
**Tags:** last seen, popup, dcc, popups  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/seenscript/seenscript.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "seenscript.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1999-03-05",
  "min_file_date": "1999-03-05",
  "total_size": 10.47,
  "largest_file": "seenscript.mrc",
  "text": [
    "README seenscript.txt"
  ]
}
```

## 📋 Text Content (from README seenscript.txt)

```text


	Seen Script v1.2		June 98



Description:

^~^~^~^~^~^~



  This script is a typical !seen script. Someone other than yourself has to type in any channel that you are on: !seen anynickhere



  Example: !seen Juventas



  The script will then look into the seen.ini file in your mIRC directory to see if that person (in this case Juventas) was spotted while you were running the script.



  This script records the joins, parts, quits, kicks and nick changes of anyone on the same channels as you. It will tell the person who requested the information where the person was seen (in cases or joins, parts or kicks) and how long ago it was. In cases of Quits, it will show you their quit message and in the case of Nick Changes, it will tell you their new nickname. If you joined a channel after someone is already there, it will inform you of the last time the person performed an action or said something in whatever channel.





How to install this script:

^~^~^~^~^~^~^~^~^~^~^~^~^~^



	Your remotes has to be on for any scripts to work. Type:



		/remote on



	In any of your mIRC windows. It should say something like:



		*** Remote is ON (Ctcps,Events,Raw)





***

  If you downloaded this script from a webpage, then move the script to your mIRC directory. Type:



	/load -rs seenscript.mrc



  in your Status Window.



***

  If you got this script via DCC send from someone over IRC, then type:



	//load -rs $getdirseenscript.mrc



***

  You can also load the script manually. Go to the TOOLS menu on the top and choose REMOTES. Once inside Remotes, choose LOAD SCRIPT from the FILE menu. Select seenscript.mrc and press on OKAY. The script should be loaded.







Comments:

^~^~^~^~^



	I used mIRC v5.31 to write this script, but it should be compatible with v5.02 and higher. However, if you really have a copy of mIRC that is that old, I suggest for you to go to http://www.mirc.co.uk/get.html and to download the newest version.

	

	You may distribute this script anywhere you like. All I ask is that you'll always include this Text File (Unchanged please) if you do. It can help many a Newbie to install the script.



	You can even change the messages in the script if you like. It doesn't really matter to me :)





Versions:

~~~~~~~~~



Updates on Version 1.2



- I fixed a bug that caused multiple entries on the same nick in the seen.ini file for those nicks that have [ or ] at the beginning or the end of the nick



- Added some comment lines in the middle of the script for those that wish to learn scripting or just want to know how the script works





Author:

^~^~^~^



^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^

 Danaria is dany@mindless.com * LadyDana aka Schala

 Danaria is on #HelpDesk #IRCHelp #mIRC #Genesis

 Danaria is on viper.mo.us.dal.net - Port: 7000

 Danaria is away: Life is short as it is ... enjoy it! :)

End of /WHOIS list.

^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^
```

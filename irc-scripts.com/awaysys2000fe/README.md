# awaysys2000 v2.12 by mudpuddle

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

**Script Name:** awaysys2000  
**Version:** 2.12  
**Category:** addon  
**Authors:** mudpuddle  
**Email(s):** <MmIRCS@bryansdomain.virtualave.net>  
**Website(s):** [http://www.winzip.com](http://www.winzip.com), [http://www.geocities.com/mmircs/](http://www.geocities.com/mmircs/)  
**Release Year:** 2000  
**Tags:** away system, dialog, nicklist, popup, wav, setting, log viewer, timer, addon, protection, notify, alias, time & date of event, away log  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/awaysys2000fe/awaysys2000fe.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "awaysys2000fe.zip",
  "file_count": 3,
  "file_types": [
    ".mrc",
    ".msg",
    ".txt"
  ],
  "max_file_date": "2000-03-14",
  "min_file_date": "2000-03-14",
  "total_size": 52.38,
  "largest_file": "awaysys.mrc",
  "text": [
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
AwaySystem 2000 Final Edition (ver 2.12) by mudpuddle - ReAdMe

Homepage: http://www.geocities.com/mmircs/

Email: MmIRCS@bryansdomain.virtualave.net

IRC: #Lounge_Legends on DALnet (/server irc.dal.net:7000)



Revision 3.14.2000

------------------------------------------------------------------



Contents



1. AwaySystem Intro

2. Installing and configuring AwaySystem 2000 Final Edition

3. Credits

4. Issues addressed & new features in AwaySystem 2000 Final Edition

5. Release Notes



------------------------------------------------------------------



1. AwaySystem intro



 AwaySystem is a mIRC 5.61/5.70 script that enhances the /away command already built

into mIRC. With AwaySystem, you can set various options to log messages directed to you

while you're away, keep CTCP Page messages, change your nick when you go away, as well

as an Anti-idle feature while you're away so you don't get kicked from the channel you're

in. (No guarantees tho heh). There's many more features to AwaySystem, discussed in the 

help file once you load AwaySystem. Enjoy! 



Please continue reading on for Step by step instructions in loading AwaySystem 2000

Final Edition.





-----------------------------------

2. Installing and configuring AwaySystem 2000 FE





-Tools required for installation:



You'll need a screwdriver, hammer, pliers, and an industrial steamroller (incase you need to

flatten your 'puter) heh! Nah, AwaySystem is so simple to install, and besides.. Why flatten your

beloved puter that you sold your arm and leg for, and still paying on? :) Real tools are listed

below:





 1. An Unzipping program, such as WinZip (Evaluation version free from www.winzip.com),

 and basic knowledge using it (read the help file to learn how to use it)



 2. mIRC version 5.61 or later, although I recommend version 5.7 because of the dialog 

 sizing, but 5.61 works just fine.



-Inventory check...



 There should be 3 files included within this ZIP file. 



 1. awaysys.mrc - the Main script file of AwaySystem



 2. ashelp.msg - the AwaySystem 2000 FE Help file (extracting this is optional, it is not

 really needed for proper operation. However, I do recommend you install and read it.

 Without this file, you won't have access to AwaySystem's Help.)



 3. readme.txt - This readme text document (does not have to be extracted at all)





- Installing AwaySystem.



  Note: If you're upgrading AwaySystem from version 2.0 or later, simply shut down mIRC,

  extract these files to the SAME EXACT folder as your previous version, overwriting the 

  old file(s) and restart mIRC. AwaySystem will import your existing settings.

  



-For Initial installs, no previous AwaySystem versions are installed, do the following:



 1. Unzip the files to any folder on your hard drive. I do recommend it being somewhere in

 your mIRC folder for simpler installation.



 2. Start mIRC and type: /load -rs awaysys.mrc

 This will load AwaySystem into mIRC.



 3. If prompted a mIRC Script Warning dialog, click YES so that AwaySystem may create

 settings.



 4. Access AwaySystem from the Channel, Status, and Menubar (Commands) menus and read the

 help file (if installed) for more information about your new Away System.







-------------------

3. Credits



I would like to thank these people for doing BETA tests and their help in scripting this

thing!



swiftlysweet

^msw^

Cewks10

[DJ]Exode

dmmc^

Joeman



Thanks guys!





----------------

4. Issues addressed & new features in AwaySystem 2000 Final Edition



This version addresses some little glitches with the AwayNick remembering mechanism.

Other fixes include the Away message repeater bug would not repeat your away message if

you got disconnected from IRC because the timer was not re-started.



Fixed IdleAway routine that would disable your AwayNick and not change it when it went

into IdleAway mode. 



Added an Away message counter. The Away message fields in Away, StealthAway and the Change

Away message dialogs have been enlarged to 100 characters.



Updated configuration importing - Checks options to see their state if they already exist.

If not, they are written to defaults. Also, the AwayPager, AwayLog, "Notice Capturing", and

"Set to back mode on input" options are saved in importing.



As mentioned above, the AwayPager, AwayLog, "Notice Capturing" and "Set to back mode on

input" options are now saved in the awaysys.ini file, they're no longer groups.







-------------------

5. Release Notes.



As with AwaySystem 2000 Second Edition, the dialog size factor will still be the same in

this version of AwaySystem. mIRC 5.61 had a bug in the DBU Dialog sizing option. Apparently,

I did not know about this bug until mIRC 5.7. What happened is in mIRC 5.61, the dialogs

were sizing 10 pixels smaller than they should have been. So, in mIRC 5.7, Khaled fixed

this problem, which in turn, threw off new scripts written in mIRC 5.61.



AwaySystem SHO
```

# awaysys v3.00.2032 by mudpuddle

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

**Script Name:** awaysys  
**Version:** 3.00.2032  
**Category:** addon  
**Authors:** mudpuddle  
**Email(s):** <MmIRCS@bryansdomain.virtualave.net>  
**Website(s):** [http://www.winzip.com](http://www.winzip.com), [http://www.geocities.com/mmircs/](http://www.geocities.com/mmircs/)  
**Release Year:** 2000  
**Tags:** away system, dialog, and options galore., nicklist, new menus, popup, wav, setting, log viewer, timer, addon, combo boxes, notify, alias, away log  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/awaysys3/awaysys3.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "awaysys3.zip",
  "file_count": 6,
  "file_types": [
    ".bmp",
    ".dlg",
    ".ico",
    ".mrc",
    ".msg",
    ".txt"
  ],
  "max_file_date": "2000-06-27",
  "min_file_date": "2000-06-14",
  "total_size": 97.25,
  "largest_file": "awaysys.dlg",
  "text": [
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
AwaySystem 3 by mudpuddle - ReAdMe

Homepage: http://www.geocities.com/mmircs/

Email: MmIRCS@bryansdomain.virtualave.net

IRC: #Lounge_Legends on DALnet (/server irc.dal.net:7000)



Revision 6.26.2000

------------------------------------------------------------------



Contents





1. AwaySystem intro

2. Installing and configuring AwaySystem 3

3. Credits

4. Issues addressed & new features in AwaySystem 3



------------------------------------------------------------------





1. AwaySystem intro



 AwaySystem is a mIRC 5.71 script that enhances the /away command already built

into mIRC. With AwaySystem, you can set various options to log messages directed to you

while you're away, keep CTCP Page messages, change your nick when you go away, as well

as an Anti-idle feature while you're away so you don't get kicked from the channel you're

in. (No guarantees tho heh). There's many more features to AwaySystem, discussed in the 

help file once you load AwaySystem. Enjoy! 



Please continue reading on for Step by step instructions in loading AwaySystem 3





-----------------------------------

2. Installing and configuring AwaySystem 3





-Tools required for installation:



You'll need a screwdriver, hammer, pliers, and an industrial steamroller (incase you need to

flatten your 'puter) heh! Nah, AwaySystem is so simple to install, and besides.. Why flatten your

beloved puter that you sold your arm and leg for, and still paying on? :) Real tools are listed

below:





 1. An Unzipping program, such as WinZip (Evaluation version free from www.winzip.com),

 and basic knowledge using it (read the help file to learn how to use it)



 2. mIRC version 5.71 or later.



-Inventory check...



 There should be 6 files included within this ZIP file. 



 1. awaysys.mrc - AwaySystem Core script  *required install*



 2. awaysys.dlg - AwaySystem dialog system  *required install*

 

 3. ashelp.msg - the AwaySystem 3 Help file (extracting this is optional, it is not

 really needed for proper operation. However, I do recommend you install and read it.

 Without this file, you won't have access to AwaySystem's Help, and you may get lost

 in AwaySystem's features.)



 4. mmircs.bmp - Icon file for dialogs.. Not required for operation, but is a nice touch to

 the dialogs..



 5. yield.ico - Another Icon file for Error dialogs. Not required, but nice for looks.. 



 6. readme.txt - This readme text document (does not have to be extracted at all)





- Installing AwaySystem.



 -Upgrading from AwaySystem 2.0 or later:

  Uninstall your previous version of AwaySystem by going into the AwaySystem

  Configuration, and click the Unload button.. Choose to save your config file. Or

  simply unzip AwaySystem 3 to the same folder as your old version, and overwrite the

  file when prompted.. Then Restart mIRC. AwaySystem will ask to import your old settings.

  

  

 -For Initial installs, no previous AwaySystem versions are installed, do the following:



 1. Unzip the files to any folder on your hard drive. I do recommend it being somewhere in

 your mIRC folder for simpler installation.



 2. Start mIRC and type: /load -rs awaysys.mrc

 This will load AwaySystem into mIRC. If the folder name you install AwaySystem in contains a

 space, enclose the path and filename in Quotes (eg /load -rs "C:\Program Files\mirc\awaysys.mrc")



 3. If prompted a mIRC Script Warning dialog, click YES so that AwaySystem may create

 settings and load the AwaySystem dialog component.



 4. Access AwaySystem from the Channel, Status, and Menubar (Commands) menus and read the

 help file (if installed) for more information about your new Away System.



-------------------

3. Credits



I would like to thank [DJ]Exode for his great help in Beta testing AwaySystem. You rock d00d!





----------------

4. Issues addressed & new features in AwaySystem 3



  No bug were reported with AwaySystem 2000 Final Edition. So there

  are no bug fixes in this version (but I'm sure there's plenty new ones tho heh).

 

 New features in AwaySystem 3 include:

 

  *Redesigned Preferences dialog.. Bigger, New Menus, combo boxes, and options galore.

   Takes advantage of new Menu system, and while loops. AwaySystem gives you complete

   control over how the script operates. Nothing is done without your say-so.

 

  *AwayNick Remembering - AwaySystem keeps track of any new AwayNicks you have used

   You can also use @me in the nick box.. When going away, AwaySystem will replace it

   with your current nickname.. Such as @me-b-gon would return mudpuddle-b-gon

 

  *In addition to the AwayNick Remembering, AwaySystem will also keep track of the last

   Away Messages you have used.

 

  *AwaySystem Themes - I've gotten alot of email from people wanting to change the

   way AwaySystem shows the away message to the channel. Well, here's my solution..

   Create your own themes for Away and Back mode messages!

 

  *Presets have
```

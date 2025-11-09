# qi_away34%5b08-04%5d v34 by te is alot

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

**Script Name:** qi_away34%5b08-04%5d  
**Version:** 34  
**Category:** protection  
**Authors:** te is alot  
**Email(s):** <Anders@Gjengen.org>  
**Website(s):** [http://master@sprocket.cjb.net](http://master@sprocket.cjb.net), [http://www.Sprocket.cjb.net](http://www.Sprocket.cjb.net), [http://www.spr0cket.com](http://www.spr0cket.com), [http://www.mIRC.com](http://www.mIRC.com), [http://www.sprocket.cjb.net,](http://www.sprocket.cjb.net,), [http://www.qinteractive.cjb.net](http://www.qinteractive.cjb.net), [http://www.Sprocket.cjb.net](http://www.Sprocket.cjb.net)  
**Release Year:** 2001  
**Tags:** away system, auto-away, dialog, away-system, nicklist, trigger, timer, addon, alias, bot, mp3  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/qi_away34%5b08-04%5d/qi_away34%5b08-04%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "qi_away34%5b08-04%5d.zip",
  "file_count": 17,
  "file_types": [
    ".bmp",
    ".mrc",
    ".qia",
    ".txt"
  ],
  "max_file_date": "2001-07-17",
  "min_file_date": "2000-11-18",
  "total_size": 67.4,
  "largest_file": "qi_away34/qi_away_3_4.mrc",
  "text": [
    "qi_away34/Readme_qi_away34.txt"
  ]
}
```

## 📋 Text Content (from qi_away34/Readme_qi_away34.txt)

```text
 quench Interactive (R) Away System v3.4

 Copyright (c) 1999-2001 Sprocket^

 All Rights Reserved.



 Welcome to quench Interactive's Away-System, for mIRC v5.9 or newer.



 This Away-System is a more advanced version of the original, v1.0.

 I have made large improvements, with only minor similarityes.



 To install this Away-System, all you have to do is to but it's files 

 and copy them from the zip-file, to your mIRC-folder!

 Afterwards, you simply start mIRC.exe as usual, and type the following

 in you Status-window:



	/load -rs qi_away_3_4.mrc



 Press 'Yes' to Start the Add-on. Now you will have a new menu called

 'quench Interactive' when you right-click in a channel-window.

 In this menu you may just click on 'Away/Back-Setup' to whether

 Go Away, or Get Back from Away-mode.



 www.qinteractive.cjb.net for lastest information and updates. 



 Good luck and have fun! (See bottom of this file for FAQs)



 Sprocket^





16/7/2001 - Fixes/Additions in 3.4:

1. Fixed the bug associated with 'About'.

2. Added support for dynamic nickname changing when entering away-mode. (will add a certain text to the end of your nick.)

3. Fixed some bugs within the auto-away.

4. Added Un/Reload function. (also removes the variabels.)

5. More advanced away-editing system. May use: me, ame, msg, amsg, qi_other

   (learn more at the bottom of this readme-file!)



15/6/2001 - Fixes/Additions in 3.3:

1. Fixed some bugs related to logs and replys when away.



21/5/2001 - Fixes/Additions in 3.2:

1. Added Auto-Away if Idle.

2. Small bug-fix.



10/5/2001 - Fixes/Additions in 3.1:

1. Altered the design.

2. Small bug-fix.

3. Some new away-styles.



7/5/2001 - Fixes/Additions in 3.0:

1. Added a Advanced Menu, which allows you to adjust your own Away-note as you

   want! Or in your language. Current containing Norwegian, English, some simple 

   versions, a Deutsch one and a English-l33t edition. Have anyone you want 

   to send me? Please do!



6/2/2001 - Fixes/Additions in 2.2:

1. Changed the duration timer. Instead of increasing a variabel every second,

   I now use the $ctime function for a more reliable result.

2. Removed the about-picture for faster dialog.



13/1/2001 - Fixes/Additions in 2.12:

1. Nothing changes but the Name...



Fixes/Additions in 2.11:

1. Changed the url from former www.spr0cket.com to www.sprocket.cjb.net, of cource

   you may still use spr0cket.com, but there's that annoying advertisement on it.. :\



Fixes/Additions in 2.1:

1. Can enable/disable Startup Advertisment of the Script.

2. Minor changes in the msg-reply when in Away-mode.

3. Can see your Away-Duration in the Settings Dialog.



Fixes/Additions in 2.0:

1. New design with dialog.

2. More efficient commands and usage.

3. Fixed some bugs in the Away-Codec.

4. New advertising look.



**********************************

The Away-Editing Function FAQ:

**********************************

- First of all, this function is made so you may edit your away-look when you go away!



q: How do I use another theme, or make my own?

a: Easy! You may use one of the examples which comes with the away-system and alter it 

   the way you want it! (or just leave it be..your choice!)



q: Ok, but how do I load another theme?

a: Just as easy.. Open the away-system dialog, press Advanced in the menu, and down to the Options-button.

   Now you'll see a whole new window and many buttons in the dialog-menu's have been enabled!

   Press 'load' in the Advanced-dialog menu, and select a file which contains a theme! (.qia-files)



q: Ace! But how do I save my own theme?

a: If possible even more easy! Just hit Advanced and then Save. Now you just type in what 

   file you want it to be saved! E.g: myown_theme1.qia, theme.nr1.cool_one.qia, theme1.qia



q: I've really messed things up! How do I get things back to normal?

a: Hit advanced, and then reset! That's it! (You may also ofcourse load another file instead)



q: What must be contained in it?

a: <Away-Msg> and <Log-Status> must be within "Onset", "During" and "Onback".

   <Duration-Time> must only be in "During" and "Onback".



q: How can I alter it so it only use on channel, and not all I'm in?

a: Easy, As you probably allready have seen, you may use, amsg, ame, msg, me and qi_other.

   "ame" and "amsg" will be entered in ALL the channels your on.

   "me" and "msg" will only be entered in the channels you deside: e.g.: "msg #channel-1,#channel-N I am away(...)"

   (Remember, NO spaces between the channel-names, only a comma)

   "qi_other" is a more advanced one. It works just like "me" and "msg", and is made for more advanced use:

   You may use notice, ctcp, or whatever you want. works like this: "qi_other notice #channel-1,#channel-N I am away(...)"

   (Remember, you may just sneak a peak at one of the following themes!)



q: Why does this away-system take so much space? Over 40kbyte is alot!

a: It takes alot of scripting to make you happy! (
```

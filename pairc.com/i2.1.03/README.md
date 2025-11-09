# i2.1.03 v20 by pai

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

**Script Name:** i2.1.03  
**Version:** 20  
**Category:** game  
**Authors:** pai  
**Email(s):** <i2@pairc.com>  
**Website(s):** [http://www.pairc.com/i2](http://www.pairc.com/i2)  
**Release Year:** 1999  
**Tags:** wav, trigger, raw events, protection, notify, rejoin, away system, nicklist, auto join, auto-join, auto-op, timer, alias, auto-kick, dcc, auto-away, full script, channel protection, addon, dns lookup, bot, interface, uno, gui, ctcp replies, dialog, midi, user levels, popup, flood protection  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/pairc.com/i2.1.03/i2.1.03.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "i2.1.03.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1999-02-26",
  "min_file_date": "1999-02-26",
  "total_size": 87.89,
  "largest_file": "I2.TXT",
  "text": [
    "I2.TXT"
  ]
}
```

## 📋 Text Content (from I2.TXT)

```text
------------

-----------

---------- i 1.03

--------- an exercise in scripting

-------- by pai (i2@pairc.com)

------- www.pairc.com/i2

------

-----

---- introduction

---

--

-



i is a 'full' script for mirc 5.5 or later. (a script designed to do a lot of general tasks, as opposed to an 'addon' script with one specific purpose)



i was designed slightly differently than most scripts. It was created for many different reasons- For one, I needed a break from scripting Peace and Protection, so I started designing something different. As well, I wanted to design a script that was more light-weight, could run fine on lower end machines, and be easily transported around on a floppy, as well as just being easier to manage and comprehend.



My main goal, however, was simply to see how much I could fit into a single script file. The end result is i, checking in at exactly 30,000 bytes, the 'limit' for a mirc script file. I know you can load larger files, or load multiple files, but that's not the point. I wanted to see what I could do in a single, 30,000 byte script. I think I did rather well. :) As a side note, this text file is exactly 60,000 bytes, and the original zip is exactly 30,000 bytes. Coincidence? You decide.



---

-- loading i

-



Unlike most 'full scripts', i doesn't come with mirc or a mirc.ini file. Simply put i2.mrc into your mirc directory, and type '/load -rs i2.mrc' (without the quotes) in any window.



When i is loaded, it will set any default settings if you haven't previously loaded it, and all features work without needing any settings, so you can immediately start using i and worry about browsing through the configuration options later.



---

-- features

-



The following features are each covered in more detail in separate sections.



 away system

 channel protection

 userlist

 clone detection and scans

 messages window

 nicklist coloring

 ctcps

 pinging

 mirc titlebar

 nickname completion

 flashing

 nicknames

 channels

 notify

 sound system

 graphical user interface

 being banned

 sound schemes

 other display

 miscellaneous



 function keys

 commands

 popups

 configuration



You can search this file for '-- section' to find any of the sections above, or for '-- /command' for notes on that command.



---

-- away system

-



i includes a simple but comprehensive away system. Use popups, f11, /away, or /a to set yourself away, and popups, f12, or /b to set yourself back. You will be asked for a reason, then set away. (you can also specify a reason on the command line if you use /a.)



When you set away and back, you will announce this in all open channels. To avoid this and set away/back quietly, choose the appropriate popup, or hold ctrl while pressing f11 or f12, or use the . (dot) prefix with the /a or /b command. (ie use /.a instead of /a)



Note that the announcements will also go to any open dcc chat windows. Also note that you will retain your away status even if you disconnect, reconnect, set away while disconnected, etc.



When setting back, you will announce the amount of time you were away. When setting away, you will announce if your pager and/or message log is on- these may be enabled or disabled using popups or the /mlog and /pager commands. '/pager on' will turn the pager on, '/pager off' will turn it off, and '/pager' by itself will view the current setting. The same syntax applies to /mlog.



i can automatically set you away after a certain amount of time, either quietly or announcing in open channels. The amount of time can be configured in away system configuration. (via popups or /cfg a) Enter a number of minutes, or leave it blank to disable the auto-away feature. You can also configure whether to set auto-away quietly or not. You can configure mirc (in options, under irc switches) to automatically set back on keypress- i will set you back quietly or not depending on whether you have auto-away set to be quiet or not.



From away system configuration you can also turn the pager and message logging on or off, as well as select a sound file for your pager. If no sound is selected and your pager is activated, a beep will be used. A user can page you (if your pager is on) by sending your a ctcp of PAGE, with an optional message. When you are paged, your pager will sound, the mirc icon will flash if not active, and within mirc the messages window will be made active with a line showing you who paged you.



Message logging works through mirc's built-in messages window. (aka dedicated query window) If message logging is enabled and you set away, all private messages will go to a single, separate window, which will be shown to you when you set back. (users whom you have a query window with will still have their messages shown in the query window.) In addition, all private notices will appear in the window. Any channel text that has your nick or any of your highlight words (set in mirc options, perform section) will also be cop
```

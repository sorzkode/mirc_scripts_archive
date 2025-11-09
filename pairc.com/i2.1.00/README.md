# i2.1.00 v20 by pai

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

**Script Name:** i2.1.00  
**Version:** 20  
**Category:** game  
**Authors:** pai  
**Email(s):** <i2@pairc.com>  
**Website(s):** [http://www.pairc.com/i2/](http://www.pairc.com/i2/)  
**Release Year:** 1998  
**Tags:** wav, trigger, raw events, protection, notify, rejoin, away system, nicklist, auto join, auto-join, auto-op, timer, alias, auto-kick, dcc, auto-away, full script, channel protection, addon, dns lookup, bot, interface, uno, gui, kickban, ctcp replies, midi, dialog, user levels, popup  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/pairc.com/i2.1.00/i2.1.00.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "i2.1.00.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1998-10-22",
  "min_file_date": "1998-10-20",
  "total_size": 87.89,
  "largest_file": "I2.TXT",
  "text": [
    "I2.TXT"
  ]
}
```

## 📋 Text Content (from I2.TXT)

```text
----------

--------- i final

-------- an exercize in scripting

------- by pai (i2@pairc.com)

------ www.pairc.com/i2/

-----

----

---

-- introduction

-



i is a 'full' script for mIRC 5.41 or later. (a script designed to do a lot of general tasks, as opposed to an 'addon' script with one specific purpose)



i was designed with a slightly different origin than most. It was created for a number of different reasons- For one, I needed a break from scripting Peace and Protection, so I started designing something different. As well, I wanted to design a script that was more 'light-weight' and could run fine on lower end machines and be easily transported around on a floppy, as well as just being easier to 'manage' and 'comprehend'.



My main goal, however, was simply to see how much I could fit into a single script file. The end result is i, checking in at exactly 30,000 bytes, the 'limit' for a mIRC script file. I know you can load larger files, but the mIRC editor generally enforces a 30,000 byte limit. I know you can load multiple files, but I wanted to see what I could do in a single file. I think I did rather well. :) (as a side note, the script is also exactly 365 lines, one for each day in a normal year, and this text file is exactly 60,000 bytes. Coincidence? You decide.)



---

-- loading i

-



Unlike most 'full scripts', i doesn't come with mIRC or a mirc.ini file. Simply put i2.mrc into your mIRC directory, and type "/load -rs i2.mrc" (without the quotes) in any window.



When i is loaded, it will set any default settings if you haven't previously loaded it, and all features work without needing any settings, so you can immediately start using i and worry about browsing through the configuration options later.



---

-- features

-



The following features are each covered in more detail in seperate sections.



  Away system

  Channel protection

  Userlist

  Clone detection and scans

  Messages window

  Nicklist coloring

  CTCPs

  Pinging

  mIRC titlebar

  Nickname completion

  Flashing

  Nicknames

  Channels

  Notify

  Sound system

  Graphical user interface

  Being banned

  Sound schemes

  Other display

  Miscellaneous



  Function keys

  Commands

  Popups

  Configuration



You can search this file for '-- section' to find any of the sections above, or for '-- /command' for notes on that command.



---

-- away system

-



i includes a simple but comprehensive away system. Use popups, F11, or /a to set yourself away, and popups, F12, or /b to set yourself back. You will be asked for a reason, then set away. (You can also specify a reason on the command line if you use /a.)



When you set away and back, you will announce this in all open channels. To avoid this and set away/back quietly, choose the appropriate popup, or hold Ctrl while pressing F11 or F12, or use the . (dot) prefix with the /a or /b command. (IE use /.a instead of /a)



Note that the announcements will also go to any open DCC chat windows. Also note that you will retain your away 'status' even if you disconnect, reconnect, set away while disconnected, etc.



When setting back, you will announce the amount of time you were away. When setting away, you will announce if your pager and/or message log is on- these may be enabled or disabled using popups or the /mlog and /pager commands. "/pager on" will turn the pager on, "/pager off" will turn it off, and "/pager" by itself will view the current setting. The same syntax applies to /mlog.



i can automatically set you away after a certain amount of time, either quietly or announcing in open channels. The amount of time can be configured in away system configuration. (via popups or /cfg a) Enter a number of minutes, or leave it blank to disable the auto-away feature. You can also configure whether to set auto-away quietly or not. You can configure mIRC (in options, under IRC Switches) to automatically set back on keypress- i will set you back quietly or not depending on whether you have auto-away set to be quiet or not.



From away system configuration you can also turn the pager and message logging on or off, as well as select a sound file for your pager. If no sound is selected and your pager is activated, a beep will be used. A user can page you (if your pager is on) by sending your a CTCP of PAGE, with an optional message. When you are paged, your pager will sound, the mIRC icon will flash if not active, and within mIRC the Messages Window will be made active with a line showing you who paged you.



Message logging works through mIRC's built-in Messages Window. (a.k.a. dedicated query window) If message logging is enabled and you set away, all private messages will go to a single, seperate window, which will be shown to you when you set back. (users whom you have a query window with will still have their messages shown in the query window.) In addition, all private notices will appear in the window. Any channel text that has your nick o
```

# Black and white v15 by Unknown

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

**Script Name:** Black and white  
**Version:** 15  
**Category:** protection  
**Authors:** Unknown  
**Email(s):** <rewt@dgsoft.cjb.net>  
**Website(s):** [http://dgsoft.cjb.net/SMF8/](http://dgsoft.cjb.net/SMF8/), [http://wav,1](http://wav,1), [http://www.mirc.net](http://www.mirc.net), [http://read:sclick:*](http://read:sclick:*), [http://ors.wav](http://ors.wav)  
**Release Year:** 1999  
**Tags:** wav, trigger, protection, notify, mass op, away system, nicklist, auto join, media player, auto-join, timer, alias, mp3 player, color scheme, dcc, auto-away, access list, channel protection, addon, uptime, bot, gui, kickban, dialog, midi, popup, fserve, mass kick, highlight, popups  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mirc.net/smf8b5/smf8b5.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "smf8b5.zip",
  "file_count": 88,
  "file_types": [
    ".bmp",
    ".dat",
    ".ico",
    ".ini",
    ".mrc",
    ".qms",
    ".smf",
    ".txt",
    ".wav"
  ],
  "max_file_date": "1999-09-29",
  "min_file_date": "1996-03-13",
  "total_size": 622.78,
  "largest_file": "graphic/mplay.bmp",
  "text": [
    "system/adpats.txt",
    "readme.txt",
    "docs/quit.txt",
    "docs/ads.txt",
    "docs/country.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

                           SMF Script 8 beta 5

                         for mIRC 5.6 and higher

                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



Homepage   : http://dgsoft.cjb.net

SMF Script : http://dgsoft.cjb.net/SMF8/





-=<Install>=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-



1) Unzip the files into a CLEAN directory of your choise.

2) Copy mirc32.exe into the directory.

3) Run mIRC.



-=<What's New>=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-



 1) Fixed bugs in the SPAM Blocker.

 2) Fixed the "add to channels" and "add to autojoin" bugs (now fully

    supports spaces).

 3) Fixed various issues bugs and quirks in the massmode commands.

 4) Added a caps kicker

 5) Added an option to customize the F keys

 6) Added a kick/kill counter

 7) Added a new version of the SMF Away Sys (4.0)

 8) Fixed an error in the country codes dialog.

    now, when you type a code with a dot you'll no longer get a $read error.

 9) The settings dialog now remembers it's last location.

10) The address for the userlists can now be chosen manually.

11) Fixed a bug in the autojoin list - now won't return errors if only one

    channel is chosen.

12) Added "safety" triggers for the IRC operator commands - now the oper

    dialogs will not open unless you are set to specific modes.

13) Added a textflood kicker.

14) Added a table window for /stats l.

15) Fully integrated the SMF Op Assistant with the script.

16) Fixed bugs in the remote banlist console.

17) Rewrote the nick manager to work with INI files instead of variables.

18) The quick menu, away sys, the autojoin list and the mediaplayer now

    use settings.ini to store their configurations settings.

19) Completely rewrote the autojoin list, now supports different networks.

20) Added an option to customize the script's sounds.

21) Rewrote the kick message parts of all kickers, now use one (editable)

    database in settings.ini.



-=<Older Versions>=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-



SMF8 b4 :  1) Added a new version of the Quick Menu - fully customizable +

              skin support.

           2) All important variables are now being kept inside INI files

              (no more /unsetall == crash).

           3) Added an "update address" feature on the userlist dialog.

           4) Added mass comands on the nicklist.

           5) Fixed the ping reply bug.

           6) Added the Op Assistant v2.0.

           7) Added two more Fkey commands - shift-f1 for 'kick selected'

              and shift-f2 for 'bankick selected'.

           8) Added a "Did you know" tips dialog

           9) The titlebar now shows the server you are on and your

              usermodes

          10) Added an option to automatically set channel modes when opped

              in a channel.

          11) Fixed quirks with the userlist's bankick level

          12) Fixed compatibility issues with the SMF Mediaplayer

          13) Added an IRC Operator scanner

          14) Added a clone scanner

          15) Fixed bugs in the alarm clock



SMF8 b3 :  1) Fixed a few userhost-related issues.

           2) Fixed bugs in the lagbar.

           3) Made a new feature - average lag calculator on #channel ping.

           4) Added a small text editor (Textpad 1.0).

           5) Rewrote the quick menu to use the windows' color scheme +

              roll up when inactive.

           6) Started rewriting the script to work with mIRC 5.6.

           7) Removed the DCC Filter.

           8) Added a few minor improvemets to the SPAM Block code.

           9) Merged the Userlist main dialog with the settings window .

          10) Added new version of the SMF Server cuts (1.2).

          11) Added mass aliases.



SMF8 b2 :  1) Added support for the server notices (@Server window).

           2) Added the SMF Lag Bar (1.0).

           3) Added support for colour schemes.

           4) All script colours are now customizable (fit the currently

              selected colour scheme).

           5) Added a new version of the Mediaplayer

           6) Added a new version of the Away Sys

           7) Rewrote all userlists (support channels and various access

              levels)

           8) Canceled the multilanguage support.

           9) Added a ban dialog console



SMF8 b1 :  1) Added the SMF Server cuts (v1.0)

           2) Got rid of useless wavs, bmps, popups and messages.

           3) Rewrote the SPAM Block and DCC Filter for configurability.

           4) Started rewriting the settings window to dialogs.

           5) All script files are now being stored in the system folder.

           6) The quick menu can now be turned off.

           7) Rewrote the script's code to work with mIRC 5.5.

           8) Replaced the Channels Folder's listbox with a dialog box,

              improved the code and added new
```

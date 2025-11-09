# sep v2.2.6.0 by Unknown

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

**Script Name:** sep  
**Version:** 2.2.6.0  
**Category:** game  
**Authors:** Unknown  
**Email(s):** <v2@area-71.net>  
**Website(s):** [http://area-71.net/essence/g3FIX.zip](http://area-71.net/essence/g3FIX.zip), [http://area-71.net](http://area-71.net), [http://area-71.net/essence/](http://area-71.net/essence/), [http://www.zelesoft.com](http://www.zelesoft.com), [http://area-71.net/essence/utor.PNG](http://area-71.net/essence/utor.PNG)  
**Release Year:** 2006  
**Tags:** dialog, wav, timer, addon, alias, uptime, bot, dcc, interface  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mirc.net/essence%5b1153932852%5d/essence%5b1153932852%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "essence%5b1153932852%5d.zip",
  "file_count": 15,
  "file_types": [
    ".cfg",
    ".dll",
    ".exe",
    ".ini",
    ".mrc",
    ".txt",
    ".wav"
  ],
  "max_file_date": "2006-07-26",
  "min_file_date": "2005-11-14",
  "total_size": 251.73,
  "largest_file": "Essence/Essence.dll",
  "text": [
    "Essence/ReadmE.txt",
    "Essence/ReplacedStrings.txt"
  ]
}
```

## 📋 Text Content (from Essence/ReadmE.txt)

```text
======== Essence DLL v.:2.2.6.0 ==========

==========================================

======= Essentialy addon for mIRC ========



1) Unpack folder to mIRC folder; ex.: C:\Program Files\mIRC\Essence\



2) Open mIRC and type /load -rs Essence\Essence.mrc



3) Type /eset and set G3, Game directory, etc...



4) Commands: 

             /g3 - G3 Torrent

             /g3.t - G3 Total (speed)

             /utor - uTorrent

             /utor.t - uTorrent Total

             /eabc - ABC Torrent (v3 protocol)

             /eabc.t - ABC Total (speed)

             /esong - WinAmp song info

             /esong+ - WinAmp simple song info

             /esong.autoon - if new song then call "esong"

             /esong.autooff - disable new song checking

             /edcc - DCC Get/Send file

             /edir - List of selected dir (optional 1st parameter is dir Ex: /edir c:\movies\)

             /ewins - Show open windows

             /ecpu - CPU Info

             /emem - Memory Info*

             /ehdd - HDD Space

             /epower - Power status

             /eoff - Monoitor Off

             /evideo - Video Adapter

             /eos - Windows version

             /euptime - Windows UpTime

             /euptimemirc - mIRC UpTime

             /enod - NOD32 Signatures version

             /eset - Essence Settings

             /etheme - Themes

             /essence - About Essence

             /echeck - Check latest version

             /enet - Network Adapters

             /enet.spd [index] - adapters speed (index = adapter index, if nothing then calc all)

             /enet.bts - all adapters IN/OUT

  AW Machine: 

             /awon - enable AM default (afk)

             /awon [reason] - enable AM with "reason"

             /awoff - disable AM

              other users can use "Nick:gong" and "Nick:beep"

             /beepstop - beeping stop :)



             /disablebeep - disable beeping

             /disablegong - disable gong



             /reloadessence - use after update process



--------------------------------------------------------------

Hint: (c) replacing "color char" and (b) replacing "bold char"

/edir command supported wildcards Ex: /edir c:\movies\the*

-----

"Save" button saving only selected part of theme

if save don't check NTFS settings (in NTFS drives)

-----

* garanted only on XP/2k maybe NET

(getting from windows registers)

-----

for showing G3/ABC info, must enable Web Interface and set pass/ID

in Essence, type /eset and set host (port only for ABC) and password or ID

-----

if using G3 Torrent ver 0.999 download this:

http://area-71.net/essence/g3FIX.zip

or update to 1.01 or newest

-----

###  If change headers of "file list"; modify "datalist" section in Essence.ini (order by (right click to headers))

###  example: http://area-71.net/essence/utor.PNG

-----

Always tested on latest mIRC version

--------------------------------------------------------------



Web: http://area-71.net/essence/ | E-mail: v2@area-71.net
```

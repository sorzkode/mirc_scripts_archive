# mIRC v5.82 by typing mp3list

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

**Script Name:** mIRC  
**Version:** 5.82  
**Category:** protection  
**Authors:** typing mp3list  
**Email(s):** <toinzane@yahoo.com>, <scriptdir@mp3list.txt>  
**Website(s):** [http://www.mirc.com](http://www.mirc.com), [http://k.loc,$ifmatch,%jb.seek.loc](http://k.loc,$ifmatch,%jb.seek.loc), [http://k.loc](http://k.loc), [http://zane.irc-scripts.com](http://zane.irc-scripts.com)  
**Release Year:** 2001  
**Tags:** dialog, mp3, plugin, timer, addon, alias, mp3 player, dcc, interface  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/jukebox%5b05-05%5d/jukebox%5b05-05%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "jukebox%5b05-05%5d.zip",
  "file_count": 11,
  "file_types": [
    ".bmp",
    ".mrc",
    ".skin",
    ".txt"
  ],
  "max_file_date": "2001-04-23",
  "min_file_date": "2001-02-07",
  "total_size": 421.2,
  "largest_file": "jukebox/skins/deepblue.bmp",
  "text": [
    "jukebox/jukebox.txt"
  ]
}
```

## 📋 Text Content (from jukebox/jukebox.txt)

```text
Revenant Jukebox v.190 - mIRC Addon Port



	***This script is for use only with mIRC for Windows 9x/ME/NT/2000***



	Before using this file, you agree that I am in no way responsible for any problems this scripts may cause. If you have any troubles, please use the bug submission form at http://zane.irc-scripts.com or Email me at toinzane@yahoo.com



	Remember, you may experience bugs, and the sooner I know of them, the faster I can fix them, please use the Submit Bug feature on my web page (URL found below) to report bugs. All my scripts are 100% freeware, and were created due to too much free time and boredom, enjoy!



	Jukebox was originally intended solely for use with InZane IRC, and the newly-developed Revenant IRC, This plugin is a port of "Revenant Jukebox" intended to work as a normal mIRC addon. Jukebox is an all-around .mp3 player which makes use of a Winamp-like skinnable interface and mIRC's built in $mp3 functions.



	With this version of Jukebox, you have almost complete control over how you play mp3's. You can easily skip forward and backward when playing playlists, pause and resume a song, easily control the volume using a volume-slider, seek through an mp3 using a convenient slider bar, randomly and continiously play files, create and edit playlists, and choose to echo the song you are playing to channels, or play it silently. Better yet, Jukebox is now fully skinnable, and has several included default skins, along with an example skin, allowing a user with a bit of time, and some graphical skills, to make Jukebox look however he likes it.



	To load this plugin, first extract the plugin to your default mIRC directory (thus if your mIRC dir is c:\mIRC\, extract it to c:\mIRC\, it will create it's own subdir named \Jukebox\)



To load the plugin manually simply use the /load command;

/load -rs (drive)\(directory)\jukebox.mrc



For example, if you extraced it to C:\mIRC\ then you'd type:

/load -rs C:\mIRC\Jukebox\jukebox.mrc



What's New:



	-Fixed up the "Search" dialog in the playlist manager, more user friendly

	-Changes to mouseover events, more functionality, and minor bugfixes

	-Made creating playlists a bit easier

	-Jukebox no longer snaps to a position when moving it

	-The volume bar automatically ajusts volume while moving the bar.

	-Added /jb.start, Usage: /jb.start <path><filename>

		Note: if the path is not specified it will pull the file from your Music directory (if set

		in the Setup Dialog), If no filename is specified it will pull a random file from your

		Music directory. If it is unable to find any files, it will just open Jukebox.

	 

	-Bugfixes

		-Fixed a bug causing files with commas in them to not work properly

		-Fixed a bug that caused errors with skin switching

		-Fixed a bug causing small (lower than 10 line) playlists to not open properly (if at all)



Thanks for your intrest,



Zane, Saintly Madman



URL: http://zane.irc-scripts.com

Email: toinzane@yahoo.com
```

# mmatchdll%5b03-01%5d v2.1 by Soul_Eater

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

**Script Name:** mmatchdll%5b03-01%5d  
**Version:** 2.1  
**Category:** channel  
**Authors:** Soul_Eater  
**Email(s):**   
**Website(s):**   
**Release Year:** 2004  
**Tags:**   
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/mmatchdll%5b03-01%5d/mmatchdll%5b03-01%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "mmatchdll%5b03-01%5d.zip",
  "file_count": 6,
  "file_types": [
    ".cpp",
    ".def",
    ".dll",
    ".dsp",
    ".dsw",
    ".txt"
  ],
  "max_file_date": "2004-01-28",
  "min_file_date": "2004-01-12",
  "total_size": 19.36,
  "largest_file": "musicmatch.cpp",
  "text": [
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
=========================

=                       =

= MusicMatch DLL v2.1   =

=  by Soul_Eater        =

=                       =

=========================





This DLL performs many functions for MusicMatch Jukebox v8.20.0081(the version I have when coding this dll, if it works for any other version, let me know)



How to use:



MmCurrent



//echo -a $dll(musicmatch.dll,MmCurrent,.)



Returns the current song playing in MusicMatch



Example return: "Home & Dry (Blank & Jones)" by Pet Shop Boys





MmPlay



//echo -a $dll(musicmatch.dll,MmPlay,.)

/dll musicmatch.dll MmPlay



Plays a song in MusicMatch



MmPause



//echo -a $dll(musicmatch.dll,MmPause,.)

/dll musicmatch.dll MmPause



Pauses the currently playing song in MusicMatch



MmStop



//echo -a $dll(musicmatch.dll,MmStop,.)

/dll musicmatch.dll MmStop



Stops the currently playing song in MusicMatch



MmPrev



//echo -a $dll(musicmatch.dll,MmPrev,.)

/dll musicmatch.dll MmPrev



Plays the previous song in MusicMatch



MmNext



//echo -a $dll(musicmatch.dll,MmNext,.)

/dll musicmatch.dll MmNext



Plays the next song in MusicMatch



MmVolup



//echo -a $dll(musicmatch.dll,MmVolup,.)

/dll musicmatch.dll MmVolup



Increases the volume in MusicMatch



MmVoldown



//echo -a $dll(musicmatch.dll,MmVoldown,.)

/dll musicmatch.dll MmVoldown



Decreases the volume in MusicMatch



MmMute



//echo -a $dll(musicmatch.dll,MmMute,.)

/dll musicmatch.dll MmMute



Mutes the volume in MusicMatch



MmSkFw



//echo -a $dll(musicmatch.dll,MmSkFw,.)

/dll musicmatch.dll MmSkFw



Seeks forward within the currently playing track in MusicMatch



MmSkBw



//echo -a $dll(musicmatch.dll,MmSkBw,.)

/dll musicmatch.dll MmSkBw



Seeks backward within the currently playing track in MusicMatch



MmSkipFw



//echo -a $dll(musicmatch.dll,MmSkipFw,.)

/dll musicmatch.dll MmSkipFw



Skips forward a few tracks in MusicMatch



MmSkipBw



//echo -a $dll(musicmatch.dll,MmSkipBw,.)

/dll musicmatch.dll MmSkipBw



Skips backward a few tracks in MusicMatch





DllInfo



//dll musicmatch.dll DllInfo



returns info about this dll





Questions? Comments?



SoulEata on AIM

Let me know what you think.



-Soul_Eater
```

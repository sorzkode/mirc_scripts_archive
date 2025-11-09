# soulcursor%5b03-28%5d v1.6 by Soul_Eater

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

**Script Name:** soulcursor%5b03-28%5d  
**Version:** 1.6  
**Category:** addon  
**Authors:** Soul_Eater  
**Email(s):** <SoulEata@mircthemes.com>  
**Website(s):** [http://z.com/souleata](http://z.com/souleata), [http://www.freewebz.com/souleata](http://www.freewebz.com/souleata)  
**Release Year:** 2005  
**Tags:** plugin, toolbar  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/soulcursor%5b03-28%5d/soulcursor%5b03-28%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "soulcursor%5b03-28%5d.zip",
  "file_count": 6,
  "file_types": [
    ".cpp",
    ".def",
    ".dll",
    ".dsp",
    ".dsw",
    ".txt"
  ],
  "max_file_date": "2005-03-04",
  "min_file_date": "2004-12-28",
  "total_size": 18.79,
  "largest_file": "soulcursor.cpp",
  "text": [
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
============================

=                          =

= Soul-Cursor DLL v1.6     =

=                          =

= by Soul_Eater            =

============================



The purpose of this DLL is to change various window cursors within mIRC.

It can however, also be used as a plugin for MTS 2.0

When MTS 2.0 plugin code is finalized, it will be provided in this readme





Filenames MUST be .ico or .ani





Function:



-SwitchCursor



Use: //echo -a $dll(soulcursor.dll,SwitchCursor,filename)



Purpose: Changes the switchbar cursor to the specified filename



Example: //echo -a $dll(soulcursor.dll,SwitchCursor,c:\mirc\cool.ico)



-ToolCursor



Use: //echo -a $dll(soulcursor.dll,ToolCursor,filename)



Purpose: Changes the toolbar cursor to the specified filename



Example: //echo -a $dll(soulcursor.dll,ToolCursor,c:\mirc\cool.ico)



-ScrollCursor



Use: //echo -a $dll(soulcursor.dll,ScrollCursor,filename)



Purpose: Changes the main scrollbar cursor to the specified filename



Example: //echo -a $dll(soulcursor.dll,ScrollCursor,c:\mirc\cool.ico)



-NormalCursor



Use: //echo -a $dll(soulcursor.dll,NormalCursor,status|channel|mdi > filename)



Purpose: Changes the normal cursor of the mdi window, channel window, 

or status window to the specified filename



mdi = mdi client window

channel = channel window

status = status window



Example: //echo -a $dll(soulcursor.dll,ScrollCursor,mdi > c:\mirc\cool.ico)



-OtherCursor



Use: //echo -a $dll(soulcursor.dll,OtherCursor,hwnd > filename)



Purpose: Changes the specified hwnd's cursor



Example: //echo -a $dll(soulcursor.dll,OtherCursor,$window($active).hwnd > c:\mirc\cool.ico)





-DllInfo



Use: //echo -a $dll(soulcursor.dll,DllInfo,.)



Returns info about the DLL & goes to the author's homepage





Contact info:



SoulEata on AIM



Email: SoulEata@mircthemes.com



http://www.freewebz.com/souleata
```

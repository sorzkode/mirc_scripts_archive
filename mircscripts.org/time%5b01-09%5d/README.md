# by greeny v1.0 by greeny

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

**Script Name:** by greeny  
**Version:** 1.0  
**Category:** game  
**Authors:** greeny  
**Email(s):**   
**Website(s):** [http://www.nnscript.de](http://www.nnscript.de)  
**Release Year:** 2006  
**Tags:** timer  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/time%5b01-09%5d/time%5b01-09%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "time%5b01-09%5d.zip",
  "file_count": 3,
  "file_types": [
    ".dll",
    ".dpr",
    ".txt"
  ],
  "max_file_date": "2006-01-09",
  "min_file_date": "2006-01-09",
  "total_size": 22.93,
  "largest_file": "time.dll",
  "text": [
    "time.txt"
  ]
}
```

## 📋 Text Content (from time.txt)

```text
time.dll v1.0 by greeny

=======================



Introduction:

-------------

This is a simple DLL I wrote to get rid of the annoying

inaccuracy of the $ticks identifier mIRC provides.

mIRC uses the Win32 function GetTickCount() in $ticks,

which has a 1 millisecond resolution, but is only

accurate to about 15 milliseconds (varies between OSes).



This DLL provides you with a timer that is accurate to

1 ms. This may be useful for scripts that measure your

lag to the server or scripts where you need to control

the FPS (like games, for example).





How to use:

-----------

There are 2 functions available in this DLL:



  - $dll(time.dll,GetTime,.)

      Returns the system time, in milliseconds. The

      system time is the time elapsed since Windows was

      started.



  - $dll(time.dll,DllInfo,.)

      Returns information about the DLL.





Known issues:

-------------

- Just like $ticks, The return value wraps around to

  0 every 2^32 milliseconds, which is about 49.71 days.

  I do not plan to write a workaround for that. :P





Other notes:

------------

- Boobs are cool.





That is all. Have fun with the DLL.



- greeny

  http://www.nnscript.de
```

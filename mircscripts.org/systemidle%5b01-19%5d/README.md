# systemidle%5b01-19%5d v1.0 by FoLKeN

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

**Script Name:** systemidle%5b01-19%5d  
**Version:** 1.0  
**Category:** bot  
**Authors:** FoLKeN  
**Email(s):**   
**Website(s):**   
**Release Year:** 2005  
**Tags:** auto-away, alias, timer, bot  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/systemidle%5b01-19%5d/systemidle%5b01-19%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "systemidle%5b01-19%5d.zip",
  "file_count": 5,
  "file_types": [
    ".cpp",
    ".dll",
    ".txt"
  ],
  "max_file_date": "2005-01-19",
  "min_file_date": "2004-12-02",
  "total_size": 9.84,
  "largest_file": "SystemIdle9x.dll",
  "text": [
    "SystemIdle_readme.txt"
  ]
}
```

## 📋 Text Content (from SystemIdle_readme.txt)

```text
SystemIdle.dll 1.0 by FoLKeN^



Update!! 1/19/05



Added SystemIdle9x.dll, which works on any windows version (+9x)

The reason why I didnt update the existing dll is because 9x version needs to keep loaded in memory to work. And is +500 bytes. The documentation below is the same for both dlls.



Description: A dll that returns your system idle time, (NOT MIRC $idle!!!!) - useful if you want to script, for example, an auto-away using system idle and not mirc idle. 



Differencing from mirc idle, system idle resets when you press a key, or move/press your mouse on any window. Its used, for example, to count the time until show screensaver...



Enjoy it ;)



Usage:



		$dll(SystemIdle.dll,GetIdleTime,.)





Returns:

		The system idle time in milliseconds





Example code:



alias sidle {

 return $dll(SystemIdle.dll,GetIdleTime,.)

}



alias test_idle {

 .timeridle 0 1 echo -a The system idle is... $!sidle - Don't move your mouse or press a key or you will reset it!!

}
```

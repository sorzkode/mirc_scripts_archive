# installfont%5b03-24%5d v1.0 by Soul_Eater

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

**Script Name:** installfont%5b03-24%5d  
**Version:** 1.0  
**Category:** Unknown  
**Authors:** Soul_Eater  
**Email(s):** <souleata@xrs.net>  
**Website(s):**   
**Release Year:** 2004  
**Tags:**   
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/installfont%5b03-24%5d/installfont%5b03-24%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "installfont%5b03-24%5d.zip",
  "file_count": 6,
  "file_types": [
    ".cpp",
    ".def",
    ".dll",
    ".dsp",
    ".dsw",
    ".txt"
  ],
  "max_file_date": "2004-03-24",
  "min_file_date": "2004-03-24",
  "total_size": 10.74,
  "largest_file": "installfont.dsp",
  "text": [
    "ifreadme.txt"
  ]
}
```

## 📋 Text Content (from ifreadme.txt)

```text
==============================

=                            =

= InstallFont DLL v1.0       =

=                            =

= by Soul_Eater              =

==============================



This DLL temporarily installs (and uninstalls) a font for mIRC to readily use.

When mIRC is done using the font, use the uninstall function.





Functions:



InstFont



//echo -a $dll(installfont.dll,InstFont,fontfilename)



Installs the font



Example: //echo -a $dll(installfont.dll,InstFont,"C:\windows\fonts\arlbl.ttf")





RemFont



//echo -a $dll(installfont.dll,RemFont,fontfilename)



Uninstalls the font



Example: //echo -a $dll(installfont.dll,RemFont,"C:\windows\fonts\arlbl.ttf")





DllInfo



//echo -a $dll(installfont.dll,DllInfo,.)





Contact:



SoulEata on AIM

souleata@xrs.net
```

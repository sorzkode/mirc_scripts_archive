# cdtraymirc%5b05-26%5d v1.0 by seec77

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

**Script Name:** cdtraymirc%5b05-26%5d  
**Version:** 1.0  
**Category:** Unknown  
**Authors:** seec77  
**Email(s):**   
**Website(s):**   
**Release Year:** 2004  
**Tags:**   
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/cdtraymirc%5b05-26%5d/cdtraymirc%5b05-26%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "cdtraymirc%5b05-26%5d.zip",
  "file_count": 6,
  "file_types": [
    ".cpp",
    ".def",
    ".dll",
    ".dsp",
    ".dsw",
    ".txt"
  ],
  "max_file_date": "2004-05-27",
  "min_file_date": "2004-05-26",
  "total_size": 34.37,
  "largest_file": "MircScripts/CDTrayMirc.dll",
  "text": [
    "MircScripts/Instructions.txt"
  ]
}
```

## 📋 Text Content (from MircScripts/Instructions.txt)

```text
CDTrayMirc DLL 1.0 by seec77

----------------------------

This DLL is a simple DLL for use from within mIRC with functionality to open and close CD trays.





----------

OpenCDTray



Info:    Opens a CD tray.



Usage:   /dll CDTrayMirc.dll OpenCDTray <Drive>

         $dll(CDTrayMirc.dll,OpenCDTray,<Drive>)



Returns: S_OK               - Operation successful.

         E_INVALID_CD_DRIVE - Invalid CD drive letter.



Example: /dll CDTrayMirc.dll OpenCDTray E









-----------

CloseCDTray



Info:    Closes a CD tray.



Usage:   /dll CDTrayMirc.dll CloseCDTray <Drive>

         $dll(CDTrayMirc.dll,CloseCDTray,<Drive>)



Returns: S_OK               - Operation successful.

         E_INVALID_CD_DRIVE - Invalid CD drive letter.



Example: /dll CDTrayMirc.dll CloseCDTray E
```

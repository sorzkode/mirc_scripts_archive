# lagbar%5b1146004390%5d v1.00 by LemonButt

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

**Script Name:** lagbar%5b1146004390%5d  
**Version:** 1.00  
**Category:** theme  
**Authors:** LemonButt  
**Email(s):** <jeremy@mirc.net>  
**Website(s):**   
**Release Year:** 2006  
**Tags:** toolbar, dialog, popup, timer, alias  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mirc.net/lagbar%5b1146004390%5d/lagbar%5b1146004390%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "lagbar%5b1146004390%5d.zip",
  "file_count": 15,
  "file_types": [
    ".dll",
    ".ico",
    ".mrc",
    ".text",
    ".txt",
    ".zip"
  ],
  "max_file_date": "2006-04-25",
  "min_file_date": "2002-05-24",
  "total_size": 669.69,
  "largest_file": "LagBar/dcx.dll",
  "text": [
    "lagbar_readme.txt"
  ]
}
```

## 📋 Text Content (from lagbar_readme.txt)

```text
LagBar 1.01 Readme



================

Contact

================



Email: 	jeremy@mirc.net

IRC:	LemonButt on UnderNet



================

Installation

================



To install LagBar:

	1. Extract files to mIRC directory or subdirectory.

	2. Type //.Load -rs $Shortfn($Findfile($Mircdir,lagbar.mrc,1)) in any mIRC window

	3. LagBar will automatically load in the top right-hand corner of your mIRC.



Additional install directions for MTS users:

	4. Press Alt+R

	5. Goto File>Order

	6. Select lagbar.mrc (should be the last one in the list)

	7. Press the "Move Up" button until lagbar.mrc is BEFORE your MTS loader (mts.mrc or similar)



================

Usage

================



Right-click the LagBar for options menu.  The options dialog is pretty much self explainatory.  You can change colors by clicking on the colored boxes and test the new colors/settings in the test area.  Nothing will be set until you press the OK button.



The "XP Theme" option will bump the controls down 2 pixels to even the dialog out.  I have not tested this myself, but I am told that users using XP Theme need the controls dropped down slightly to align properly with their toolbar due to the larger titlebars in XP Theme mode.



You can add custom events/echos/etc by using the ON SIGNAL event at the top of the script file.  Lag time is sent through $$1 and is in milliseconds.



================

Versions

================



Version 1.01 (Released 04/25/06)

   -Fixed destroy menu bug destroying a nonexistant menu.

   -Fixed timer being halted bug.  Timer is now set every time you connect instead of on start.

   -Added disconnect support to change lag to n/a when disconnected.



Version 1.00 (Released 03/11/06)

   -First version of LagBar.
```

# clock v2a v2 by hellishefnet

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

**Script Name:** clock v2a  
**Version:** 2  
**Category:** addon  
**Authors:** hellishefnet  
**Email(s):**   
**Website(s):**   
**Release Year:** 1999  
**Tags:** dialog, popup, timer, addon, alias  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mirc.net/clock-v2a/clock-v2a.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "clock-v2a.zip",
  "file_count": 11,
  "file_types": [
    ".c1",
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1999-05-09",
  "min_file_date": "1999-01-24",
  "total_size": 55.33,
  "largest_file": "clock-v2.mrc",
  "text": [
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
clock.mrc by hellish@efnet



To get started, just unzip all these files to any directory (having their own directory is good, but not required, so the skins don't clutter up your addons directory or whatever).



then type

   /load -rs <path>\clock-v2.mrc

Be sure to click "yes" when it asks you if you want to perform the commands



The clock should load right up. To turn off the clock, just type /clock off or hit the "close" popup of the clock window. To start the clock again, type /clock



By default the clock is docked in the lower left hand corner of the mirc mdi. to select other positions, they are located under "dock clock to..." You can also set the clock on top of all other windows (this will make it a desktop window). However, the window will not show in the taskbar. After you drag the clock around, you can restore it to its docked position by double clicking.



Choosing skins is very simple. Just click "choose a skin" to open the skin browser. The default directory to browse is the directory the script is in, but if you have the skins in another directory you can click the "?" button to change the directory. Clicking the ">" button will return you to the script directory. Single click a skin to preview it. Double click to select it. Click "cancel" when you are finished.



Making your own skins is also simple. You can either alter the colors of the more simpler skins (digital, argon, hydro) or you can select your own fonts. the dimensions for each number are 12x17 pixels. the colon (or whatever you want it to be) is 7x17 pixels. Look at a skin to see how these dimensions are layed out on the bitmap.



New in version 2:



0. Hey this really doesn't deserve a new version number but oh well.

1. Fixed bug requiring you to have a black background

2. Fixed spaces in filenames bug (I should have known better)

3. If the clock is docked against the right edge and is showing seconds and you remove the show seconds toggle the window will be realigned with the right edge (because it is now shorter in length)

4. Added ability to place the clock ontop



Version 2a:



1. Fixed bug leaving background white when clicking show seconds, making the window larger



-hellish
```

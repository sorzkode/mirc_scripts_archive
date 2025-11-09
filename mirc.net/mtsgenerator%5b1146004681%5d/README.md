# 'xcolor+i+' window.location'mirc:mg.status Color Code +getRight v1.11 by LemonButt

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

**Script Name:** 'xcolor+i+' window.location'mirc:mg.status Color Code +getRight  
**Version:** 1.11  
**Category:** game  
**Authors:** LemonButt  
**Email(s):** <jeremy@mirc.net>  
**Website(s):** [http://edit>refresh](http://edit>refresh), [http://controls](http://controls), [http://examples](http://examples)  
**Release Year:** 2006  
**Tags:** toolbar, dialog, nicklist, rejoin, popup, wav, trigger, timer, statusbar, highlight, notify, alias, bot, color scheme, dcc, uno  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mirc.net/mtsgenerator%5b1146004681%5d/mtsgenerator%5b1146004681%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "mtsgenerator%5b1146004681%5d.zip",
  "file_count": 18,
  "file_types": [
    ".css",
    ".dll",
    ".html",
    ".icl",
    ".ico",
    ".ini",
    ".mrc",
    ".mts",
    ".txt"
  ],
  "max_file_date": "2006-04-25",
  "min_file_date": "2006-02-17",
  "total_size": 361.58,
  "largest_file": "MTSGenerator/dcx.dll",
  "text": [
    "MTSGenerator/mtsgen_readme.txt"
  ]
}
```

## 📋 Text Content (from MTSGenerator/mtsgen_readme.txt)

```text
MTS Generator 1.10 Readme

DCX version 1.2.7



================

Contact

================



Email: 	jeremy@mirc.net

IRC:	LemonButt on UnderNet



================

Installation

================



To install MTS Generator:

	1. Extract files to mIRC directory or subdirectory.

	2. Type //.Load -rs $Shortfn($Findfile($Mircdir,mtsgen.mrc,1)) in any mIRC window

	3. Type /MG in any window or click menubar item.



================

Usage

================



Everything is pretty much self explanitory.  When the dialog first loads, you must select new or load an mts file to use menu.  After that, you can navigate to the desired areas.  The statusbar will show help and tips where available.  The > button in certain areas will access the variables list for that area.



Quirks:



1. DCX does not currently have a command to replace a listview line, so to update the red/black colors, you must goto edit>refresh.

2. If you are using a custom script file with custom identifiers, DO NOT include the identifiers in the element fields!  You should instead use "!script command" to activate the script.  Otherwise, the preview will try to evaluate the identifier and break the script if it cannot find the alias.  You can use the identifier if you have the script file loaded, but the best way is to simply not use them.

3. DCX richedit control is currently not 100% functional the way this script needs it.  Therefore, for using accurate preview option, there is a timer used to create a short delay.  The script actually rewrites mirc.ini to generate an accurate preview and thus takes longer to create.

4. What inserting variables, the editbox will regain focus, however the text carat will be at the beginning.  Again, DCX doesn't have the right commands to make this happen yet.



Tips:



1. You can hit enter in the edit field and it will save the entry and select the next element in the list.

2. View>character map in the menubar is very useful.

3. Right-click in the elements list to add/remove elements.

4. General variables that are always set are in bold in the variables list.  The rest may not always be set (see examples).

5. If colors are really a big deal and you don't like the dark/light blue, you can edit the td and .hlt classes in mtsgen.css.



================

Version History

================



Version 1.11

   -Fixed $Height bug where additional font information would error script.

   -Fixed bug where script would halt on load when RGBCOLORS, COLORS, or CLINE* was not defined in a script.

   -Changed preview timer from 1 second advanced/0 second simple to 0.5 second advanced/0.5 second simple.

   -Added $Asctime support for TIMESTAMPFORMAT preview.



Version 1.10 (Released 03/10/06)

   -Fixed accurate preview option bug when no preview is available.

   -Fixed RGB to Hex conversion error for when one of the RGB values was 000 or longer instead of 0.

   -Changed on load action. Script now switches to the header tab automatically.

   -Changed on save action. Script now changes current file to the saved file instead of original.  Save path changes, too.

   -Changed Color Schemer javascript code.  Colors update dynamically now without refreshing the HTML file.

   -Changed statusbar help for elements.  Help now shows in statusbar when you are hovering the editbox.

   -Changed variable button to webding symbols instead of > and <.

   -Added multiple scheme support.

   -Added loading progressbar dialog to show loading progress.

   -Added prompt when closing dialog to save if unsaved changes have been made.

   -Added the following elements to the Non-IRC Events list: RAW.329 RAW.461 RAW.472 RAW.306 RAW.305 RAW.465 RAW.438 RAW.439 RAW.406 RAW.436 RAW.432 RAW.443 RAW.441 RAW.447 RAW.442 RAW.405 RAW.467 RAW.478

   -Added ability to add/remove elements via right-click.

   -Added dialog icon.

   -Added effect to about screen on dialog load.

   -Added Javascript to disable right-click/text-selection in web controls.



Version 1.00 (Released 02/27/06)

   -First version of MTS Generator.
```

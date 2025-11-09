# by minute v1.0 by minute

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

**Script Name:** by minute  
**Version:** 1.0  
**Category:** Unknown  
**Authors:** minute  
**Email(s):**   
**Website(s):**   
**Release Year:** 2000  
**Tags:** dialog, alias, timer  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/buttercup-clock/buttercup-clock.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "buttercup-clock.zip",
  "file_count": 3,
  "file_types": [
    ".bmp",
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2000-09-02",
  "min_file_date": "2000-09-02",
  "total_size": 267.8,
  "largest_file": "sprites.bmp",
  "text": [
    "scriptinfo.txt"
  ]
}
```

## 📋 Text Content (from scriptinfo.txt)

```text
I did the script in two days so the script may be a bit sloppy.

Hopefully there are no bugs/errors.

Well, I also used a timer for the updating the time...   :(









to run the clock you must type:

/clock on



to turn it off just either press the power button or type:

/clock off











Script information:



aliases -



ifstate:

i wrote this because it saved me time and syntax for rewriting if

statements of drawing sprites onto the picture window



drawhour1/drawhour2:

this just looks for the current hour and writes the correct sprite

onto the picture window



drawmin1/drawmin2:

same as above with minutes



drawsec1/drawsec2:

same as above with seconds



drawtime:

calls on the functions to draw the hours, minutes, and seconds



active echo:

just echos a parameter on a the currently active window



clocktimer:

calls the timer for updating the clock



ctcommands:

the commands the clocktimer calls



clock:

using parameters on|off, this turns the clock on and off



draw12:

draws the correct sprites when using the time format of only 12 hours



draw24:

same as above but with the time format of 24 hours





remotes -



on *:input:

if the inputted text causes the timer that updates the clock to turn

off, this will re-run the timer



on *:close:

when the picture window is manually closed, this will calls the clock

off function



on *:dialog:Alarm:

mainly calls the procedures when using the alarm dialog





others -



menu @Clock:

i used this to read the mousedowns, mouseups, and mousemovements



dialog Clocktable:

holds the table information for the alarm dialog





				ok, i think thats about it, bye

						- minute
```

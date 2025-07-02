# ChanArt v2.0 by KiloVolt

## ⁉️ This is part of an mIRC script archiving project. Please read the [README](https://github.com/sorzkode/mirc_scripts_archive/blob/main/README.md) file located in the [main project repository](https://github.com/sorzkode/mirc_scripts_archive) for more information / disclaimers  

## ⚠️ Important Disclaimers

- **I am not the original author** of this script and do not claim any ownership or authorship
- **Historical Preservation Only**: This script is archived for historical and educational purposes
- **No Support**: I cannot provide support, updates, or fixes for this script
- **Not Thoroughly Tested**: The script has not been thoroughly tested in modern environments
- **Use at Your Own Risk**: Any use of this script is entirely at your own risk
- **Potentially Outdated/Incompatible**: This script was designed for much older versions of mIRC and Windows
- **Educational Value**: This archive serves to document the evolution of IRC scripting and early internet culture

## 🔍 Script Information (metadta parsed from files)

**Script Name:** ChanArt  
**Version:** 2.0  
**Category:** addon  
**Author(s):** KiloVolt  
**Email(s):** <unknown>  
**Website(s):** [unknown](unknown)  
**Release Year:** 1998  
**Tags:** popup, alias, trigger, entertainment, draw, art  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990908184417_chanart2/19990908184417_chanart2.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990908184417_chanart2.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1998-03-08",
  "min_file_date": "1998-03-08",
  "total_size": 7.21,
  "largest_file": "chanart2.mrc",
  "text": [
    "chanart2.mrc",
    "chanart2.txt"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## chanart2.txt

```text
::::::::::::::: ChanArt V2.0, by KiloVolt, 1998 :::::::::::::::

TO LOAD:

>Put the file chanart.mrc in your mIRC directory
>type /load -rs chanart.mrc

The entry "ChanArt" will be added to your channel popup menu

TO USE:

>To use simply click either Modern or ButterFly then reposition
the art window if you wish.

>Join a busy channel such as #funfactory or several channels for 
the best effects for the Modern Art.  A slow channel is better for
the ButterFly Art.

>Click in the picture window at any time to start a new artwork
  Note: Action events are used to start a new modern art and normally
        you won't have to use the window click.

>Close the window to stop the program.

WHAT IT DOES:

This script draws artwork to a picture window in response to channel
events.  Two types of artwork are available; modern art and butterfly.

ButterFly art creates butterfly-like figures in response to channel
text.  The number, size, and color of wings is random.

Modern art is created in response to channel events which trigger
the drawing of different objects of random size & color.

The various events trigger objects as follows:

Joins: line
Parts: filled elipse
Quits: rectangle
Text: dot
Action: uses fill to reset the background color and start new work
Nick: filled rectangle
Kick: prints the word ouch! 
Ban: triangle
Unban: spray(or cluster)


cya
KiloVolt
```

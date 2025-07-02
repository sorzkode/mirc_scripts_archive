# mPAD v1.1 by Quetzilla

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

**Script Name:** mPAD  
**Version:** 1.1  
**Category:** addon  
**Author(s):** Quetzilla  
**Email(s):** <jmquin@worldnet.att.net>  
**Website(s):** [http://.att.net/~jmquin/woe95.zip](http://.att.net/~jmquin/woe95.zip)  
**Release Year:** 1998  
**Tags:** gui, alias, interface, timer, tool pad  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990909165600_mPAD/19990909165600_mPAD.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990909165600_mPAD.zip",
  "file_count": 4,
  "file_types": [
    ".bmp",
    ".mrc",
    ".pad",
    ".txt"
  ],
  "max_file_date": "1998-01-27",
  "min_file_date": "1998-01-21",
  "total_size": 37.05,
  "largest_file": "sample.bmp",
  "text": [
    "mPAD.mrc",
    "readme.txt"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## readme.txt

```text
mPAD v1.1 �1997 Quetzilla
A customziable toolpad with support for 20 selections

DISCLAIMER: This script is not to be modified in anyway without my
expressed permission.  The accompanying sample.pad and sample.bmp
may be modified and distributed freely.

mPAD is a customizable toolpad for mIRC with support for 20 choices
that was originally made for use with another project of mine (a visual
devlopment kit for mIRC scripts with point'n'click GUIs (Graphical
User Interfaces)) but as I was making it I realized its pretty nifty in
itself so here it is.

NOTE: If you didnt unzip mPAD to your mirc folder, move it and the
sample files there before loading mPAD.  You should also have your
remotes set to on.

________________
|  Using mPAD  |
����������������

To load mPAD either load it from the remotes menu or type:

 /load -rs mPAD.mrc

Once loaded the default .pad file is sample.pad, and its accompanying
.bmp file, sample.bmp.  To load a different .pad file hold Shift and
press F2 or type:

 /sf2

and select a .pad file.  The .bmp file should be in the same directory
as the .pad file and have the same filename except with .bmp instead of
.pad

To start mPAD simply type:

 /toolpad

mPAD has two modes, ClickActive being enabled or disabled.

It defaults to being disabled, in which case clicking a button in mPAD
assigns variable %tp.tool to the appropriate value designated in the
.pad file.  You can then use the sample alias /pad which will run the
commands listed under the selected section in the .pad file.

If enabled it will automatically play the commands listed under the
designated section as soon as you click an mPAD button.

To toggle ClickActive on or off type:

 /tpclick

___________________________________
|  Creating your own mPAD setups  |
�����������������������������������

Section 1:  the .pad file
����������

A pad file can consist of up to two parts, one required, one not.  The
required part is the assignment values for the mPAD buttons.

figure 1:
[toolmap]
1.1=11
1.2=12
1.3=13
1.4=14
1.5=15
1.6=16
1.7=17
1.8=18
1.9=19
1.10=10
2.1=21
2.2=22
2.3=23
.
.
.

Each assignment has 2 parts, the coordinate and the value:

       1.1    =      11
       ^^^           ^^
    coordinate      value

The coordinate has two subparts, separated by a . (period), the first
being the x coordinate and the second being the y coordinate.  The
value determines what %tp.tool is set to when an mPAD button is clicked

The not required part are the sub areas:

[11]
echo -a 11

[12]
echo -a 12

[13]
echo -a 13
.
.
.

the part in []'s refers to the value from the assignment portion
explained earlier.  The command(s) underneath are what are executed
when either sample alias /pad is used or ClickActive is on and an mPAD
button is pressed

When making your .pad file it is suggested you simply alter the sample
.pad file

Section 2:  the .bmp file
����������

The .bmp file is what shows the icon and/or text for each button,
the olivish background color is used for transparency and should not be
altered, the gray boxes formed are where you should draw your icons
and/or place your text.  Once again, it is suggested you alter the
sample.bmp when creating your own mPAD setup.


Thats basically everything, have fun!

Quetzilla jmquin@worldnet.att.net
```

# battleship v1 by STARRed

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

**Script Name:** battleship  
**Version:** 1  
**Category:** game  
**Author(s):** STARRed  
**Email(s):** <phos@hotmail.com>, <starrscript@hotmail.com>  
**Website(s):** [unknown](unknown)  
**Release Year:** 1997  
**Tags:** timer, alias, games, addon, popups, popup, dcc, bot, nicklist, entertainment  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19980630200103_bship/19980630200103_bship.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19980630200103_bship.zip",
  "file_count": 3,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1997-10-30",
  "min_file_date": "1997-10-29",
  "total_size": 51.65,
  "largest_file": "bship2.mrc",
  "text": [
    "bship.txt",
    "bship.mrc",
    "bship2.mrc"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## bship.txt

```text
battleship
|�|                    |�|            |�|
| |        _|�|_ _|�|_ | |       ____ | |_ (�)
|  �\/���`|_   _|_   _|| |/����\/  __||   \|�||����\
|   ||    | | |_  | |_ | || ___|\__  \| | || ||    |
|___/\__,_| \___| \___||_|\____/|____/|_|_||_||  __/
by STARRed                                    | |
starrscript@hotmail.com                       |_|

for hawkee.com scripting challenge October 1997

To load this script, save bship.mrc and bship2.mrc in your mIRC directory.
Then, in mIRC, type /.load -rs bship.mrc


Communication between players is accomplished through halted CTCP messages.
Ship and shot position is recorded in virtual arrays created with variable names.

Support for text input of coordinates is supported along with simple message sending.
Collision detection is done in a blechy incrementing detection thing.  I think it sucks.
It also sucks that we had to put in diagonal ships, but I did it anyway.

anyway, now that I have some time, I figured I'd update this document some.
collision detection is done like this.

start coord, end coord. set variable to start coord.
Test <> horz, Test <> vert, inc/dec.
for horz or vert ship, test if end ran into something.
if so, invalid end coord.
for diag ships, test if adjacent horz and vert squares are same and != water.
If so, invalid coord.
Test counter against shiplength.  If <, repeat.

So it looks like this...

1111# <= collision (invalid)

1
 1  3
  13
  3+ <== collision (invalid)

1    3
 1  3
  13
  5+ <== collision (different ships, valid)
 5

I hope that makes sense, because I don't want to talk about it.

I threw in the random ship setup at the last second, becuase I was so sick of entering
ship coordinates over and over.  It just looks at the valid text input variable and
grabs a random token from it.  Then it says "Hey, I just clicked on a popup menu w/ such
and such a coordinate."  So it does what it's supposed to.  Cool huh?

The "big attack" as I so cleverly named it is really a very dynamic routine.
Syntax for "mattack" CTCP is as follows... (sonar is similar, but less complex)

-message-

n x(1) y(1) ... x(n) y(n)
n is the number of shots fired.

-reply-

n x(1) y(1) [m/h] ... x(n) y(n) [m/h] o text(1)�text(2) ... �<text(o)
n is the number of shots fired.
m/h corresponds to whether the coord was a hit or a miss.
o is the number of boats sunk w/ the shot.
text(o) is the name of the boat. each entry is separated w/ a � character so as to allow
for spaces in ship names.


I'd like to add more guns, a bigger field, multiple planes, movable ships, dynamic
environments and artificial intelligence.  Most of these features are not only beyond the
scope of a little script, but also beyond the scope of a text-based environment.  We'll see.

I also plan on porting this to XiRCON sometime in the future, since mIRC is a pile.
ho hum.

Fun fun fun.  I wrote this document once, but I lost it.
The old one was a lot better.  If you have questions, I guess you can ask me.
mail starrscript@hotmail.com
```

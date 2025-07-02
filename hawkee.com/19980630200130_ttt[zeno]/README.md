# tictactoe v1 by zeno

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

**Script Name:** tictactoe  
**Version:** 1  
**Category:** game  
**Author(s):** zeno  
**Email(s):** <zeno@cygnus.uwa.edu.au>  
**Website(s):** [http://cygwww.uwa.edu.au/~zeno/](http://cygwww.uwa.edu.au/~zeno/), [http://zeno.home.ml.org](http://zeno.home.ml.org)  
**Release Year:** 1997  
**Tags:** popup, timer, alias, entertainment, games, addon  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19980630200130_ttt[zeno]/19980630200130_ttt[zeno].zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19980630200130_ttt[zeno].zip",
  "file_count": 3,
  "file_types": [
    ".hlp",
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1997-10-01",
  "min_file_date": "1997-09-30",
  "total_size": 50.91,
  "largest_file": "tictactoe.hlp",
  "text": [
    "tictactoe.hlp",
    "tictactoe.txt",
    "tictactoe.mrc"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## tictactoe.txt

```text
"a text file including an explaination about how it works, your email address, IRC handle, IRC network you can be found on and your homepage if you have one"

========== how it works ==========

No matter how much math I based it on, there were always 'trick shots' to be found...

The computers decision making process can be found under the alias t3.decide. First, the computer
checks if there is any way it can win in that move - the coding theory behind this is that each
block carries a variable, and the value of it varies according to what's in that square. To see
if the computer can win, it sets a temporary variable with three squares' values that could
constitute a win, eg, B1 $+ B2 $+ B3 or A1 $+ B2 $+ C3. If the players token is in that temporary
string twice, and the other is a blank square (alt-160), it finds the location of the blank and
makes the winning move.

While looking for a winning move, the same theory shows where the human will be able to make a 
win on their turn. To get around instantly blocking this move (when there could still be a win
in it for the computer), a temporary variable is set - %t3.tmp4. If, at the end of the
t3.surekill command, no winning move is found, the computer strikes in the square set as %t3.tmp4.

Basically, after t3.surekill, the script has a series or 'circumstance checkers' - when the
computer has to decide what to do, it first looks at who has the upper hand (first move),
which number move it is, and finds the circumstances the human player has have set and hence 
the best place to go.

In the case that that you have entered a circumstance unknown to the computer, It will try to move
to a random corner. If that is unavailable, then a completely random play is made. This doesn't
matter to too great a degree, because most important moves have to be made early in the game, and
quite often, the game turns into a string of the other player blocking otherwise winning moves.

Quite a bit of coding is put into making the computers moves look 'more
natural'. For example, instead of moving to the same corner square every time it gets to start 
the game, it will move to a random conrner square.

There is much more funkadelik theory in the script than can possibly be described in this text
file without having several people simply fall asleep. I'll be happy to comment on any aspect of
it, but for now, it's 2:00am on the 30th of September and I don't know how the timezones work
for us, so I want to get this to the Hawkee labs as soon as possible. :)

========== info on zeno ==========

You know me...

Email:		zeno@cygnus.uwa.edu.au
Nick:		zeno
Servers:	OzOrg & Dalnet
UIN:		2800546
IP:		zeno5.dyn.ml.org
Homepage:	http://cygwww.uwa.edu.au/~zeno/ (zeno.home.ml.org)


```

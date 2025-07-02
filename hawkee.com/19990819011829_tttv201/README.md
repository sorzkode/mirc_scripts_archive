# TicTacToe v2.01 by KiloVolt

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

**Script Name:** TicTacToe  
**Version:** 2.01  
**Category:** game  
**Author(s):** KiloVolt  
**Email(s):** <unknown>  
**Website(s):** [unknown](unknown)  
**Release Year:** 1998  
**Tags:** popup, alias, highlight, entertainment, bot, games, addon  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990819011829_tttv201/19990819011829_tttv201.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990819011829_tttv201.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1998-03-19",
  "min_file_date": "1998-03-19",
  "total_size": 20.14,
  "largest_file": "tttv201.mrc",
  "text": [
    "tttv201.mrc",
    "tttv201.txt"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## tttv201.txt

```text
TicTacToe, V2.01 for mIRC 5.31+
by KiloVolt, 1998

To Load:

>Put the tttv201.mrc file in your mIRC directory
>type /load -rs tttv201.mrc
>If an initilization window pops up, select yes to see the initial
  load screen.

Description:

This script allows the user to play TicTacToe against his/her computer.
The user can select to play as X to move first or as O to allow the
computer to make the first move.  Play can be halted at any time by
closing the window using the window X button or a new game can be started
at any time by clicking one of the New Game buttons.

The computer move being considered is displayed while it is the computer's move.
After each move, the computer's evaluation of the board position is displayed;
negative numbers indicate user's favor, positive numbers computer's favor.

To Play:

Select TicTacToe -> Start from the status popup menu.

The initial start screen will show you to be X and to move first.  If you
want the computer to be X and to move first just click the New Game as O
button.  The computer level of play will be shown as High. Change the level
of computer play by clicking the Med or Low buttons.  This can be changed
at any time, even in the middle of a game.  The selected level is kept from
game to game unless changed.  Red buttons indicate current selections.

To make a move just click in one of the squares.  "Your Move" is displayed when
it is your turn.  After a game is over, click one of the New Game buttons, or if
you want to quit just close the window.

Description of algorithm:

The algorithm used to determine the computer moves is based on one developed by Christian Jung.
This algorithm is based on pure math.  No if-else logic is used to determine board position.

It evaluates a board position by assigning a 1 to each square taken by the human and a 4 to
each square taken by the computer.  It then sums each row, col, and diag.  The sum indicates
whether the human or computer has a single square (unblocked), two squares (unblocked), or 
three in a row (win).  A single unblocked square is assigned an evaluation factor of +1 for 
the computer and -1 for the human.  Two unblocked squares is assigned a factor of +8 for 
the computer and -8 for the human.  Three in line is assigned 128 or -128 and is used to flag
a win.  The evaluation factors for the rows, cols, and diags. are then added together for the
total board evaluation factor (This is the factor displayed in the game screen). 

The algorithm considers each available move for the computer and evaluates the board position
after each possible human response to find the best human move.  After all moves have been 
considered the algorithm chooses the computer move that results in the best board evaluation
for the computer (i.e. the move that results in the worst of the best human moves).

The level of play setting is accomplished by biasing the comparisons in the logic which 
determines the best human response.


cya
KiloVolt


```

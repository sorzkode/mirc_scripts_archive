# tic_tac_toe v1 by Christian Jung (HiVolt)

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

**Script Name:** tic_tac_toe  
**Version:** 1  
**Category:** game  
**Author(s):** Christian Jung (HiVolt)  
**Email(s):** <mickeyg@worldnet.att.net>  
**Website(s):**   
**Release Year:** 1997  
**Tags:** timer, alias, bot, entertainment, games, addon  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19980630200151_TTTIRC1/19980630200151_TTTIRC1.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19980630200151_TTTIRC1.zip",
  "file_count": 2,
  "file_types": [
    ".ini",
    ".txt"
  ],
  "max_file_date": "1997-09-26",
  "min_file_date": "1997-09-26",
  "total_size": 19.19,
  "largest_file": "tttirc1.ini",
  "text": [
    "tttirc1.ini",
    "ReadTTT1.txt"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## ReadTTT1.txt

```text
Scripting Challenge Submittal

email mickeyg@worldnet.att.net
IRC handle: HiVolt (or if in use, HardTack)
Homepage: None
Frequent IRC hangouts: #funfactory, #chatzone on both Dalnet and Undernet


--------------------------------- Tic-Tac-Toe_For IRC, V1.0 -----------------------------------
----------------------------------- Script for Mirc 5.1+ --------------------------------------
------------------------------------  by HiVolt, 1997 -----------------------------------------

*************************************** CREDITS ********************************************
The algorithm used to determine best computer move is based on one developed by 
Christian Jung
********************************************************************************************

This script allows a Nick to play Tic-Tac-Toe against the user's computer on IRC via private
message.

When the user clicks Start on the Tic-Tac-Toe menu the following invitation is sent to the 
channel: ( For a private game against my computer type: /msg <usernick> !TTT ).

The first Nick to respond is granted the game.  The script then stops listening for !TTT.

The Nick is then sent some suggestions for screen settings for best display.

After the Nick is satisfied with his settings he types ok.

The Nick then chooses whether he is to be X or O.  The game then begins.

The game screen consists of the following:

 1) A header which includes the game no. being played and indication
    as to whether the Nick is X or O.
 2) A numeric evaluation of the board position followed by Favor description.
 3) The board with a Move Key along side.  Each Key row is sent with its corresponding
    board row so that if the rows are received in the wrong order, due to lag or sync
    problems, then this will be shown by incorrect Key display.
 4) Options for entry by Nick. ( Quit, Refresh, Another game). The Refresh option can
    be used in case the board (Key) is not displayed correctly.
 5) Move entry instruction.

 ** When the game is over numbers 4 and 5 above are replaced with Game Over indication along
    with a Yes No option for another game.

The Nick can continue to play as many games as he likes and is given the opportunity to be
X or O at beginning of each new game.

The user can terminate play at any time by selecting Tic-Tac-Toe, Stop on the menu.

Play is fully automatic and requires no action by the user.  However, the user should 
monitor his msg window in case the Nick needs some assistance.

The script tracks the Nick and terminates the game if he gets kicked, disconnected, parts
the channel, or changes nicks.

While testing this script by opening two Mircs on one server I found it necessary to buffer
output by 1 second per line to avoid flood disconnects when sending the board screens. Although
this buffering is probably not needed for normal use, I left it in.  It might help assure
that the Nick receives the lines in the order that they are sent so that the game board is
displayed correctly thereby preventing the Nick from having to use the Refresh option.

The algorithm used to determine the computer moves is based on one developed by Christian Jung.
This algorithm is based on pure math.  No if-else logic is used to determine board position.

This is a very good algorithm.  I have played hundreds of games against it and have never won.
It evaluates a board position by assigning a 1 to each square taken by the human and a 4 to
each square taken by the computer.  It then sums each row, col, and diag.  The sum indicates
whether the human or computer has a single square (unblocked), two squares (unblocked), or 
three in a row (win).  A single unblocked square is assigned an evaluation factor of +1 for 
the computer and -1 for the human.  Two unblocked squares is assigned a factor of +8 for 
the computer and -8 for the human.  Three in line is assigned 128 or -128 and is used to flag
a win.  The evaluation factors for the rows, cols, and diags. are then added together for the
total board evaluation factor (This is the factor displayed in the game screen). The algorithm
is so good that the only negative evaluation factor (human favor) I have seen is when the 
human is x and chooses square no. 5 (middle square) for his first move.

The algorithm considers each available move for the computer and evaluates the board position
after each possible human response to find the best human move.  After all moves have been 
considered the algorithm chooses the computer move that results in the best board evaluation
for the computer (i.e. the move that results in the worst of the best human moves).

There are some interesting changes that could be made in the algorithm to make it a little 
more human-like.  Also, the debth of move considerations could be variable to allow the human
to choose degree of difficulty, etc.

-------------------------------------- Future -----------------------------------------------

Possible Improvements:

1) Add ability for Nick to choose degree of difficult.  Otherwise he will never win.
2) Make changes in algorithm so that it will pick one of several equally good moves.
   At present it does not alter its selection as an equally good move is found.
3) At present the algorithm always picks the middle square as computer's first move, since this
   results in the greatest evaluation factor (i.e. +4). However, this is could be changed
   so that one of the corner squares is sometimes picked for the first move for variety.
4) Could add lag detection to determine lag to Nick before game begins.  This could be used to 
   determine whether game should even be attempted.
5) Add a user mode so that user can play against his own computer.  Use a custom window for
   board display and another to display the algorithm variables to monitor algorithm
   performance.  This would be helpful if trying modifications to the algorithm.
   







```

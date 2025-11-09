# readme v1.02 by notice and will

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

**Script Name:** readme  
**Version:** 1.02  
**Category:** game  
**Authors:** notice and will  
**Email(s):** <leprechaun@aurskog.net>  
**Website(s):** [http://www.mirc.co.uk](http://www.mirc.co.uk)  
**Release Year:** 2001  
**Tags:** dialog, nicklist, sockets, timer, addon, alias, bot  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/lttt1.02%5b07-27%5d/lttt1.02%5b07-27%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "lttt1.02%5b07-27%5d.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2001-07-26",
  "min_file_date": "2001-07-26",
  "total_size": 24.62,
  "largest_file": "lttt.mrc",
  "text": [
    "lttt.txt"
  ]
}
```

## 📋 Text Content (from lttt.txt)

```text
LeprechaunTicTacToe v1.02 readme



LeprechaunTicTacToe is a mIRC game that can be played with

other users that also has this addon. It is not exactly

Tic-Tac-Toe, because the object is to get 5 in a row, and the

grid can be as large as you want it to be.

The person that was challenged will always start.

After a game is finished, only the looser will be able to request

a new one without recreating the socket connection.



To load this addon start mIRC and type in /load -rs [path-to]\lttt.mrc



To start a game, right click in a channel nicklist or a query window.



The options dialog:

	

	Colours	Most colours explain themselves, except 'Windows'.

		If you select that, it will use the standard windows

		colours. (The colours are not dependant on your mIRC

		colour settings.)



	Grid	Grid width and height will only be used when you are

		asking other persons to play. If they ask you, their

		settings will be used. (Must at least be 10)



	Blocks	The block-size setting will set the size of the squares

		in the grid. (Must at least be 10)



	Symbols	The symbols representing you and your opponent in the

		grid. Symbols are local, so the symbol you select for

		yourself, might not be the same as the one the opponent

		sees.



	Desktop	Checking this box will make all NEW games displayed in

		a desktop window.



	Ontop	Desktop windows will be on top.



Game requests:

Game requests are sent by notice, and will not be displayed (unless you use

a script that displays it). Multiple game requests from one user over a short

period of time will be ignored to prevent flooding.

(NOTE: Only game requests will be ignored, not the actual user)

(Some users may be unable to start games. This problem is probably caused by

firewalls or other stuff interfering with sockets or your ip)



Selecting areas in the grid:

When moving the mouse on the grid, a semi-transparent symbol will be present

underneath the mouse. This was done to reduce hitting the wrong block.

(Your opponents last move will also be semi-transparent)



Cheating: 

Since it would pretty easy to cheat with this addon if not,

both sides log the moves and checks the messages sent from the other.

If it detects cheating, it will close the connection and display the

message that the user tried to cheat.



If you have any questions about this addon, contact me at 



	DALnet		(Ymar_the_Leprechaun)

	UnderNet	(Ymar)

	Mail		(leprechaun@aurskog.net)



Ymar_the_Leprechaun
```

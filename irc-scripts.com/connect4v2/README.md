# connect4v2 v2.0 by a_dude

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

**Script Name:** connect4v2  
**Version:** 2.0  
**Category:** game  
**Authors:** a_dude  
**Email(s):** <armathan@hotmail.com>  
**Website(s):** [http://www.armathan.cjb.net](http://www.armathan.cjb.net)  
**Release Year:** 2000  
**Tags:** dialog, nicklist, full script, dice, popup, wav, addon, alias, bot, dcc  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/connect4v2/connect4v2.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "connect4v2.zip",
  "file_count": 49,
  "file_types": [
    ".mrc",
    ".png",
    ".txt",
    ".wav"
  ],
  "max_file_date": "2000-08-22",
  "min_file_date": "1996-11-24",
  "total_size": 571.69,
  "largest_file": "sound/rumble.wav",
  "text": [
    "Readme.txt"
  ]
}
```

## 📋 Text Content (from Readme.txt)

```text
                           *****************************

                           ** Connect4 v2.0 game by a_dude **

                           *****************************





*This is a major update from the previous one - but still compatible, you can play

against people with the older addon *





- How to contact me

- What is connect 4 ?

- How do I install it

- How do I uninstall it

- How do I start a game, what are the rules, button "options" ?

- How do I change the sounds ?

- Troubleshootings







How to contact me

-----------------



For any kind of comment (bug reports, add-on completely sucked, sluggish, worse

coding ever, etc ...), send a mail to armathan@hotmail.com

Or go to www.armathan.cjb.net to see more add-ons and a full script I developped and 

eventual updates.



Or you can find me most of the time on the IrCQNet network (servers irc01.icq.com, 

irc02.icq.com, irc03.icq.com, irc04.icq.com, irc05.icq.com) on channel #web



By the time this add-on is released, it may not yet be case, but you will also find

me on the Cyberchat network (server filo.ebicom.net), room #cyberchat and #the_lounge







What is connect 4 ?

-------------------



Connect 4 is a game and the goal is to build a line of 4 tokens (either horizontal, 

vertical or in diagonal) before your opponent ... well, once you have launched the game, 

you will surely know what I mean, it's a well known game.



You can only play against a live opponent (he/she needs to also install this add-on).



Once a game is started, it doesn't anymore depend on servers lag (works like DCC chat)

(but a message to initiate the game is sent via the servers ...).



You can select different skins to match your taste (if you can find any ...).









How to install it ?

-------------------



IMPORTANT : Unzip the file "connect4.zip" to a folder where there is no space in the 

names of the folders.  The game was made for mIRC v5.71 (it doesn't seem to work with 

lesser versions of mIRC).

Ex:

- "c:\mirc\connect4" or "d:\games\add-ons\connect4" : YES

- "c:\program files\games\connect4" : NO, because "program files" is made of two words

  "c:\my documents\add-ons\connect4" : NO, because "my documents" is made of two words



Next, launch mIRC and in the command line (where you type your text) of any window, 

type one of the two following command :

1) /load -rs path\connect4.mrc 

--> path is the directory where you unzipped the file "connect4.zip"

--> Ex : /load -rs c:\mIRC\connect4\connect4.mrc



2) //load -rs $findfile(drive,connect4.mrc,1) 

--> drive is c:\ or d:\ or etc (where you unzipped the file "connect4.zip")

--> Ex : //load -rs $findfile(c:\,connect4.mrc,1) 



Answer "Yes" when asked to run initialization commands.



This add-on won't interfere in the working of any scripts you may have already installed.







How do I uninstall it ?

------------------------



Type "/uninstall connect4" (without the quotes), the file will be unloaded and the 

created variables erased.







How do I start a game,  what are the rules, button "Options" ?

-------------------------------------------------------



First, be sure that your opponent has also installed the add-on.  The goal of the game

is to make a row of 4 tokens either horizontal, vertical or in diagonal ... and to be the

first to do it before your opponent.  View the board as vertical and click on a column to

drop a token.



Once the game is started, right-click on the button "Options" to bring up the menu there.  







In the nicklist popup or the private chat popup, choose the item "Connect4" and then 

"start Connect4 game", or type "/connect4 <nickname>" (without the quotes).

Your opponent will be asked if he wants to play or not.  



If you are the one requested to play, you have the option to accept the request or ignore

for the next 60 seconds any further requests from that same person (you will still see the 

notice request but you won't be asked to play).



After the request has been acknowledged, the person who begins first is decided by random. 



The little icon on the above right shows whose turn it is : 

- red icon : opponent's turn

- green icon : your turn to play



Below that small icon, the two tokens says whose colours belong to who.



If you right-click on "Options", you can either choose a skin, turn the sound on/off or

replay a game.



The winner/looser is automatically checked.  Once the game is finished, choose "replay"

when you right-click on "Options".





If you don't want to be bothered by game requests, select in the connect4 popup 

"disable game requests" below the "start Connect4 game" : you will get the notices but

you won't be asked if you want to play.  To re-enable again, go back to the same connect4

popup and "enable game requests" will appear if you had the game requests disabled.





How do I change the sounds ?

----------------------------



I didn't put a config dialog for the s
```

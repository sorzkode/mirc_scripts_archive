# ascra 2000 v3.0 by ad4ms

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

**Script Name:** ascra 2000  
**Version:** 3.0  
**Category:** game  
**Authors:** ad4ms  
**Email(s):** <ad4ms@mailcity.com>  
**Website(s):** [http://members.tripod.com/adam_great](http://members.tripod.com/adam_great)  
**Release Year:** 2000  
**Tags:** dialog, no spam, timer, addon, highlight, alias  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/ascra2000/ascra2000.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "ascra2000.zip",
  "file_count": 3,
  "file_types": [
    ".ams",
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2000-09-04",
  "min_file_date": "2000-09-04",
  "total_size": 58.74,
  "largest_file": "scra2000.mrc",
  "text": [
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
<-------=<> Auto ScRambLe 2000 PrO By ad4ms 2000  v3.0 <>=-------->



Thanks for trying my addon for your mirc 5.7+ version! This is a new version

of my addon with more improvements. This is could be the final release of Auto

Scramble 2000. I've to study hard now for my college x) But its not impossible 

to release newer version if I found more stuff to add to this addon. If you have 

a suggestion for this addon please tell it to me. Have Fun !



New Added on v3.0 :



1.  New Scramble dialog and fresh look.

2.  Player Own Question (POQ):

    -  Player can add their own question to your scramble question data by typing

       /msg <yournick> hint: <player's own hint> + Enter and

       /msg <yournick> answ: <player's own answer> + Enter

       or you can tell your friends to type !howto This command will give them an info

       about how to add their own question to your scramble addon.

    -  Once their typed their answer, you will receive a 'Confirmation Dialog' to accept

       their question or not. You can accept and add their question to your question 

       database or you can play their question but not add it to your quest. database 

       or you can refuse it totally.

    -  You can configure the addon to accept their question automatically without

       a confirmation. Launch 'Auto Scramble 2000 Dialog' and click 'More Options' button,

       and click the 'System Options' tab' then check the 'Enable Auto Accept Question' box.

    -  Or you can disable this POQ by checking the 'Disable POQ' box.

3.  More options for the auto mode scramble. 

    -  You can configure the TimesUp and the Delay Time for next question on non !next Mode.

       By default, the configuration for the TimesUp are 225 secs and the Delay Time are 20 secs. 

4.  Bugs fixed especially with the Question editor.

5.  Question Editor new dialog with 'Goto Question Number' and 'Find Keyword' feature.

6.  New Scramble score system (Player Level Score Mode) 

    -  Now you can enable Player Level Score which clasifying the player into

       5 different level. 

    -  Player that have a high level are the best player. To increase their level

       the player must collect the points until they reach the 'Points Level'. By default, the

       'Points Level' are set to 200 points. You can configure the 'Points Level' at 'More Options Dialog'.

7.  Can keep the player's score in scoredata.ini file and their level. And write the time 

    for scorer in timerdata.ini file.

8.  Now !topscore command available (not available in Player Level Score Mode)

9.  You can disable the !hint command if you think no need to use it. To disable the

    !hint command simply by clicking the 'Disable !hint' button in Scramble Dialog.

10. Random 'Congrats' for answering the question that was correct.





Version 2.2+ 



1.  New Scramble dialog and fresh look.

2.  You can choose between 2 of Auto Scramble Mode below: 

    (1) !next Mode => when this mode enabled, the next question will be halt

                      until the player type !next

    (2) non-!next Mode => when this mode enabled, the next question will be 

			 continue without typing !next 

    note: if you choose non-!next Mode, i suggest that you play this mode on your

          own channel because this mode can make you getting kick by the op from

          other channel.

3.  If you stop the game, and start it again, it doesn't start with question

    number 1 anymore, but it will start with random question number. 

4.  Now Auto Scramble 2000 will tell the answer of current question and 

    continue with the next question automatically if no one from the players

    answer the current question until the times is up. (Times up for each question

    are 220 seconds )

5.  I've added !help command to tell the players how to play the Auto Scramble

    2000 



					        

Gettin' Started :



1.  Unzip the file scra2000.MRC and scra2000.AMS to your mirc directory

2.  Load your mirc 5.7 or up

3.  Type /load -rs scra2000.MRC



Note     : If you not load the scra2000.MRC for the first time, then you must unload

           the old scra2000.AMS from your mirc before you load scra2000.MRC . 

Attention: Please load scra2000.MRC and don't load scra2000.AMS. By loading the

           scra2000.MRC , the scra2000.AMS file will be load automatically.



To play the game :



1.  Connect to the server

2.  Right click your mouse in the channel window and go to

    AScRa 2000 PrO 

3.  Just highlight your mouse pointer to the Non Automatic Mode for manual scramble 

    game or goto the Auto Mode for automatic scramble game dialog.



**  please Add Your Question first to the question list before

    begin the Automatic Mode



To add your question for automatic mode :

1.  Goto channel window pop up --> AScRa 2000 PrO --> Auto Mode --> 

    Edit Questions

    or click the 'Question Editor' button in Scramble Dialog

2.  Click 'ADD' and type
```

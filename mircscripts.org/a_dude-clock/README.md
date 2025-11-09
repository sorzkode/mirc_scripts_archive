# and works perfectly well on v5.71 by a_dude for the

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

**Script Name:** and works perfectly well on  
**Version:** 5.71  
**Category:** addon  
**Authors:** a_dude for the  
**Email(s):** <armathan@hotmail.com>  
**Website(s):** [http://www.mircscripts.org](http://www.mircscripts.org), [http://www.armathan.cjb.net](http://www.armathan.cjb.net)  
**Release Year:** 2000  
**Tags:** dialog, full script, popup, trigger, timer, addon, alias  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/a_dude-clock/a_dude-clock.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "a_dude-clock.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2000-09-09",
  "min_file_date": "2000-09-04",
  "total_size": 20.75,
  "largest_file": "clock_challenge.mrc",
  "text": [
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
            ***********************************************************

            ** Clock by a_dude for the www.mircscripts.org challenge **

            ***********************************************************





 

- How to contact me

- How to install it 

- How to uninstall it 

- How to start the clock + options 

- Example of different colour settings + default colour settings

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







How to install it 

-----------------



This addon was made on mIRC v5.71 and works perfectly well on mIRC v5.8, 

I don't know if it will work for older versions



1) /load -rs path\clock_challenge.mrc 

--> path is the directory where you unzipped the file "clock.zip"

--> Ex : /load -rs c:\mIRC\clock\clock_challenge.mrc



2) //load -rs $findfile(drive,clock_challenge,1) 

--> drive is c:\ or d:\ or etc (where you unzipped the file "clock.zip")

--> Ex : //load -rs $findfile(c:\,clock_challenge,1) 





Answer "Yes" when asked to run initialization commands.







How to uninstall it 

-------------------

Type "/uninstall.clock" (without the quotes), the file will be unloaded and the 

created variables erased.





How to start the clock + options 

--------------------------------



** To start the clock **

Type "/clock" (without the quotes) or go to the status popup or "commands" menu and 

select the item "Clock".



The position of the @clock window is stored when you close it, so next time you

start the clock, the window will be opened at the previous position.





** Options **



Left-click on the "Timezone" area : to choose your timezone or show a different timezone 

			than yours (your Windows clock should be set correctly !)

Left-click on the "Alarm" area : to set the alarm.  When the alarm is triggered, either 

			left-click anywhere in the @Clock window to stop the sound or 

			close the window @Clock

Left-click on the "Settings" area : to configure all the displayed colours, enter colour

			values between 0 and 15 (standard mIRC colours).  

			Just try the colours to know what each name represents :-)

			For example, for a start, put the same value for the background 

			of the clock and the background of "various displays".

Right-click on the "Alarm" area : to set the alarm on/off





** Alarm **



The alarm will be triggered on your Windows local time, no matter what timezone you 

selected.  It will be triggered only if the @Clock window is open.









Example of different colour settings

------------------------------------



1) Try that configuration late at night :)



Clock display :

  Backgrnd = 2

  Hands

    Hour = 9

    Min = 11

    Sec = 4

    Hold = 1



Various displays:

  Backgrnd = 1

  Texts

    Bkgrnd = 2

    Title = 11

    Text = 9





2) To reset the default colours :



Close the settings dialog if it was open and type "/clock.init" (without the quotes).









Troubleshootings

----------------



The alarm didn't triggered : The alarm will be triggered on your Windows local time, no 

matter what timezone you selected and it will be triggered only if the @Clock window is 

open.



Some timezones for another coutry don't show the right hour : that's because on some 

places, the winter/summer time may exist or not, so there might be an hour difference.



I disconnected and the clock stopped : that's normal, it's the way mIRC works.  When you

reconnect, the clock should start again.  If it doesn't, it means you have another 

script/addon interfering with the connection event ... in that case, close and restart 

the clock manually.
```

# dice v1.01 by Karla Little

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

**Script Name:** dice  
**Version:** 1.01  
**Category:** game  
**Authors:** Karla Little  
**Email(s):** <michiru@earthlink.net>  
**Website(s):** [http://infinite.nethosting.com/pai/](http://infinite.nethosting.com/pai/)  
**Release Year:** 1997  
**Tags:** dcc, dice, popup, trigger, timer, random number, protection, addon, highlight, notify, alias, color scheme, popups  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/pairc.com/dice/dice.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "dice.zip",
  "file_count": 3,
  "file_types": [
    ".mrc",
    ".ppa",
    ".txt"
  ],
  "max_file_date": "1997-12-19",
  "min_file_date": "1997-12-19",
  "total_size": 31.58,
  "largest_file": "dice.mrc",
  "text": [
    "dice.txt"
  ]
}
```

## 📋 Text Content (from dice.txt)

```text
(This file should be viewed with WORD WRAP ON)



How to install Dice

-------------------



First make sure DICE.MRC, DICE.PPA, and DICE.TXT (this file) are all in the addons subdirectory in your P&P directory. Then, in P&P, type /addon and double-click on Dice to install it.





How to use Dice

---------------



Once installed, configure Dice (/dicecfg) to work when and how you want it to. The various ways of activating it will be discussed briefly in seperate sections.





Using Dice *automatically*

--------------------------



Dice can automatically calculate any equations or dice rolls it sees in text typed in channels, private windows, or even the text you type. It will not calculate 'equations' if it thinks they may be dates, ranges, simple fractions (1/2, etc), IP addresses, resolutions, or other cases where numbers are used in common text. To force calculation of an equation, enclose it in parenthesis.





Configuring *automatic* use

---------------------------

 Activate on equations/dice in channel text:

This tells Dice whether to respond when it sees equations or dice in the text other people type in channels.



 Activate on equations/dice in private text:

Same, but for text in a query or DCC chat window.



 Display results locally only (their channel text):

If ON, when Dice calculates equations in other people's channel text, the result will only be displayed on your screen. If OFF, it will be said in the channel.



 Display results locally only (their private text):

Same, but for equations in query/chat windows.



 Activate on actions as well as text:

If ON, Dice will scan actions as well as regular text when looking for equations and dice to roll.



 Activate in which channels:

Here you can limit Dice's automatic calculation to certain channels, or enter "all" for all channels.



 Only activate for users on notify/userlist:

If ON, Dice's automatic calculation will only activate from users on your notify or userlist.



 Activate on equations/dice in your channel text:

This tells Dice whether to calculate equations or dice in text you type to channels.



 Activate on equations/dice in your private text:

Same, but for text you type in a query or DCC chat window.



 Display results locally only (your channel text):

If ON, when Dice calculates equations in your channel text, the result will only be displayed on your screen. If OFF, it will be said in the channel.



 Display results locally only (your private text):

Same, but applies to your private text.





Using Dice *via !calc requests*

-------------------------------

Dice can be set to respond when people specifically request a calculation, using a trigger word (!calc or !roll, for example) that you define. For example, if you set the trigger to !d, a user can type "!d 5d6" to roll 5d6.





Configuring *!calc* use

-----------------------

 Activate on !calculation requests in channel text:

Tells Dice whether to respond to requests in channel text.



 Activate on !calculation requests in private text:

Tells Dice whether to respond to requests in private windows. (query/DCC chat)



 Activate in which channels:

Here you can limit Dice's requested calculation to certain channels, or enter "all" for all channels.



 Only activate for users on notify/userlist:

If ON, Dice's requested calculation will only activate from users on your notify or userlist.



 !Calculation request command/trigger:

This is the trigger (for example, !roll) that triggers a requested calculation.





Using Dice *thru popups*

------------------------

You can perform simple operations manually using popups that Dice has added. You can select "Calculate" to run a calculation and display the result for your eyes only, or "Calc + Say" to calculate and say the result in the current window. "Repeat Calc" will repeat the same calculation multiple times, this is good if you need to roll dice multiple times. "Repeat Calc + Say" will repeat the calculation multiple times and say it each time to the current window. "Last roll's subdice" will display to you the individual dice that comprised the last dice roll. "Configure" lets you configure Dice, and "Help" opens this help window.





Configuring *popup* use

-----------------------

 Add to menubar popups:

Toggles the Dice popups ON or OFF for the P&P Tools menu.



 Add to channel popups:

Toggles the Dice popups ON or OFF in the channel popups.



 Add to query/DCC chat popups:

Toggles the Dice popups ON or OFF in the query/chat popups.





Using Dice *commands*

---------------------

Instead of using popups, you can use these aliases. "/calc equation" will calculate an equation locally. "/scalc equation" will calculate the equation and say it in the current window. "/recalc N equation" calculates equation N times. "/rescalc N equation" does the same, saying it in the current window. "/subdice" displays the individual dice from the last roll. "/
```

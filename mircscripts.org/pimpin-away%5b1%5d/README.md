# pimpin-away%5b1%5d v1.0 by Shikkie

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

**Script Name:** pimpin-away%5b1%5d  
**Version:** 1.0  
**Category:** bot  
**Authors:** Shikkie  
**Email(s):** <shikkie@rebelsquadrons.org>  
**Website(s):** [http://www.mircscripts.org](http://www.mircscripts.org), [http://r>,$iif($pa.settings(%pa.lastmode,pager](http://r>,$iif($pa.settings(%pa.lastmode,pager), [http://www.mirc.com](http://www.mirc.com), [http://File-Load-Script](http://File-Load-Script)  
**Release Year:** 2001  
**Tags:** away system, auto-away, dialog, timer, alias, color scheme, bot, auto away, interface  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/pimpin-away%5b1%5d/pimpin-away%5b1%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "pimpin-away%5b1%5d.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2001-01-22",
  "min_file_date": "2001-01-22",
  "total_size": 17.33,
  "largest_file": "pimpin-away.mrc",
  "text": [
    "pimpin-readme.txt"
  ]
}
```

## 📋 Text Content (from pimpin-readme.txt)

```text
#------------------------------------

# Pimpin' Away v 1.0 by Shikkie

# Date: Jan 22 2001

#------------------------------------



----Preface

This is a quick attempt at a configurable away system with a friendly user interface with no "Leet" or "Hacker" style ASCII crap, or any other lame features. I'll keep working on it and tweaking it from time to time.



----Installation



To load this script, extract the zip to a new folder on your hard drive. Go into mIRC and get into the remotes editor (alt+R) then go to File-Load-Script. Browse to where you extracted the Pimpin' Away zip file and load the file pimpin-away.mrc. Choose 'Yes' if asked to allow Pimpin' Away to initialize itself.



----Configuration



Pimpin' Away will automatically create a file where you extracted the zip to named pa.ini which is the configuration settings for Pimpin' Away. (If you are installing a new version into the same place, it will keep the old settings, any new options since the pa.ini file was made will be left unset/blank as a result. You can fix those up in the configuration dialog)



Open the controls dialog by right clicking in the menubar, a channel, or a query window and selecting Pimpin' Away Vxx.xx-View Controls. From there it's rather self explanatory, you use add, del, save to manage the theme and presets.



----Presets



Nothing too fancy here, you just set your nick, reason, pager on/off for each preset you create. 



----Themes



This is the bread and butter here folks. Creating a theme is rather simple once you know what you are doing with it (which is what this readme is for :D)



First are the basic control characters, Bold, Underline, and Color



Use Ctrl+B for Bold, Ctrl+U for Underline, and Ctrl+K for color.

Note: You MUST Close the control codes to prevent them from overlapping, much like HTML if you don't put a second BOLD control the bold continues to the end of the theme.



The only tricky thing is colors (if you are familiar with mIRC's color system feel free to skip this) When you hit Ctrl+K a window pops up and you select one of the colors there. It will insert the numeric where it is needed. You can set background colors as well, you just add a comma ',' after the first numeric and insert a second (making sure to backspace over the second control code box that appears) So []2,9 would result in dark blue text on a lime green background (ugly looking, don't try it at home kids!)



Note: You MUST use the closing color control code to prevent the colors from continuing to the end of the theme, just press Ctrl+K but do not insert a numeric.



***Really important note: Not everyone uses the same mIRC color scheme as you, hot pink may not look good for everyone, so keep that in mind when you design your themes. If you go overboard with colors and get banned from a channel, it's your fault. Just warning you in advance :) 

*Less is More***



Now, for what is really fun, inserting the various variable data into the Theme. Press the "Codes" button at the bottom of the dialog to view the codes data:



	<Nick> = Your AFK Nick - Just the nick you change to when afk.

	<Msg> = Your AFK Msg - Your Reason for being away.

	<Pager> = Pager ON/OFF - wether your pager is on or off.

	<Time> = Time Went Away - The time you went away (hh:nn:sstt) format.

	<Duration> = Time spent Afk - a $duration return calulating how long you have been gone.

	<Status> = Away or Back - wether the action you are taking is going afk, or coming back.

	<CurrTime> = Current Time - the current system time on your computer.



You do NOT need to use "$+" to group colors/control codes with the variables, they fill in without that assistance. Here is the default theme provided with Pimpin' Away.



---AWAY THEME



<status>: (<msg>) Since <time> for <duration> Pager(<pager>) /ctcp <nick> Page [MSG]



Creating this effect: (^U, ^B, ^K represents the control codes)



* shik2 away: ^U^B(^U^BAway From Keyboard^U^B)^U^B Since ^B07:53:29pm^N for ^U45mins 32secs^U Pager(ON) /ctcp Shik-Afk Page [MSG]



---BACK THEME



is <status>! Gone: <duration> since <time>



Creating this effect: (No control codes in default back theme)



* shik2 is back! Gone: 1min 25secs since 12:35:58am







----Going Away



Merely open the Controls dialog, select your theme and preset (or use the one you used last, selected by default) and press the "Go Away" button.



----Returning from Away



Once set away, a smaller desktop dialog will appear with two buttons on it. "Silent Unmark Server /away" and "Return." Obviously "Return" Makes you come back from afk. The other button when pressed tells IRC that you are back, thereby disabling the constant "NICK is away: Reason" being sent to your buddy every time he/she messages you. (This is an IRC protocol feature that informs persons messaging you that you are away, the IRC Server does this, not Pimpin' Away.) You are not publicly 'back' until you press the "Return" button, the "Silent U
```

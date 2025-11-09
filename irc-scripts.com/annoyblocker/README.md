# annoyblocker v1.0 by KewlKow

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

**Script Name:** annoyblocker  
**Version:** 1.0  
**Category:** channel  
**Authors:** KewlKow  
**Email(s):** <kewlkow@hotmail.com>  
**Website(s):** [http://www.mirc.com.](http://www.mirc.com.)  
**Release Year:** 2000  
**Tags:** gui, dialog, nicklist, popup, alias, popups  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/annoyblocker/annoyblocker.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "annoyblocker.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2000-12-16",
  "min_file_date": "2000-12-16",
  "total_size": 8.58,
  "largest_file": "annoyblocker.mrc",
  "text": [
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
AnnoyBlocker 1.0

Author: KewlKow (kewlkow@hotmail.com)

Date: 16 Dec 2000

(Note: If this file is hard to read in NotePad, Go to Edit -> Word Wrap.)



Table of Contents:

------------------

I. Purpose of the Script -- Why I wrote it.

II. Installation -- How to use this beast.

III. How it works -- What will happen when this script is loaded.

IV. privileged Users -- What to do with those you want to see ads from.

V. Problems and bugs -- Stuff you'll run into.

VI. Stuff

VII. History



I. Purpose

------------------------

AnnoyBlocker was written to eliminate those annoying channel invites by msg/notice and the people that constantly bombard you with a/s/l requests.



II. Installation

------------------------

1. Unzip adblocker.mrc to your mIRC scripts directory. If you don't know where this is, type this in any mIRC window: //echo $scriptdir



2. Type /load -rs adblocker.mrc.



3. Fill out the dialog:

	* (Note: Leaving either of the first two blank will result in no message being 	  	  sent.)

	* Msg to send(ad) - What message will be sent when someone msgs you a channel ad

	* Msg to send(stats) - What message will be sent on a a/s/l or stats msg

	* Time to Ignore - Amount of time to put the offender on ignore. This should be a	  	  number with "s" or "m" (seconds or minutes).

	* Display Messages - This is where you want output from the script displayed.

	* Send msg... - If this is checked, users will recieve a message whenever you 	  	  add/remove them to/from your privlidged list.



4. Right click on the Status window and click the "power buttons" (AdBlocker(ads) [off] and AdBlocker(stats) [off]) to toggle the power.



III. How it works

------------------------

When someone /msg's or /notice's you anything that contains an ad or stats request, AdBlocker sends them the message you specified in setup and puts them on ignore for the amount of time you specified. (Note: The ignore feature does NOT ignore channel messages. It only ignores messages, notices, and invites in case of any backlash.) Their query window is closed and you are told about it so you'll know what the sudden flash on your screen was.



Note: Even though the query window is closed, the message is logged, provided you automatically log query windows.



IV. Privlidged Users

-----------------------

So you have a few friends you don't want this affecting. You can right-click on their nick in a channel and click the "AdBlocker[blocked]" popup to force AdBlocker to ignore their ads/stats. To allow AdBlocker to close their ads, click on "AdBlocker[allowed]".



You may force AdBlocker to allow ALL ads by turning the "power" off. To do this, right-click in your status window and click "AdBlocker[on]".



(Note: If you haven't figured it out, the popups are always the opposite of what you want the script to do. The reason for this is so that you can easily check the status of a nick or the "power".)



V. Problems/Bugs

----------------------

1. This is a script, not a mind reader. For example, the script can not distinguish between "Come to #some-lame-channel for free ops!" and "What's your ICQ #?". The only away around this is to add the user to the "privileged list".



2. The script only ignores the nick for the number of seconds you specify, so you may get the same ad, or some backlash from the user seconds to minutes later. If this happens, the best thing is to put them on ignore using /ignore.



3. If the user notices you, there's no way to clear it off the screen without clearing everything. (Possibly in a later version I'll add the code to halt those notices from displaying...)



VI. Other Stuff

----------------------

My email address is kewlkow@hotmail.com.

Thanks to nimper, snu, and the rest of the #tokenize staff for helping me with dialogs.

This script only works with mIRC 5.8+.

m00.



VII. History

----------------------

15 Dec 2000 - Created AdBlocker to block ads via msg or notice

16 Dec 2000 - Expanded AdBlocker to include stats, renamed to AnnoyBlocker, released version 	      1.0 to the public.
```

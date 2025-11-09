# Away v1.0 by lnx

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

**Script Name:** Away  
**Version:** 1.0  
**Category:** channel  
**Authors:** lnx  
**Email(s):** <script@ackme.org>  
**Website(s):** [http://www.ackme.org](http://www.ackme.org)  
**Release Year:** 2000  
**Tags:** dialog, alias, popup, popups  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/away/away.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "away.zip",
  "file_count": 2,
  "file_types": [
    ".ack",
    ".txt"
  ],
  "max_file_date": "2000-02-13",
  "min_file_date": "2000-02-13",
  "total_size": 9.06,
  "largest_file": "away.ack",
  "text": [
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text




< - // - Autojoin Script - // - >

		An Ackme Script

		Scripted by lnx







< - // - Table of Contents -  // - >



A) Introduction

   i) Intro

   ii) Version Information

B) The Script

   i) Installing

   ii) Setting the Script

   iii) Using the Script

C) Information and Author



< - // - Ackme IRC Scripts  - // - >











A) INTRODUCTION



	i) Intro

	

	Thanks for downloading this script. It, as in all of my scripts, is simple, and not designed to be the second coming nor the apocalypse. It is a simple, and I believe useful, away script. Perhaps the biggest 'omission' is that of pager support. I personally have never felt the need for such a feature, and never used it. As this script was designed for personal use, it is excluded. If you desire such a feature, you will need another script, or, better yet, email me, and I'll code it into the next version.



	ii) Version Information

	CURRENT:1.0 - 	By far not the first version of this script, but still the first public release. Lemme know what you think.	



B) THE SCRIPT



	i) Installing

		To load this script, unzip away.ack to your desired directory. Open mIRC, and type /load -rs c:\(installation directory\away.ack. Select "yes" when the dialog box appears (I promise this script won't harm you or your computer in any way). The script is now installed. Proceed to step ii.

	

	ii) Setting the Script

		In order for this script to work properly, you will need to find the away menu (located in your Channel menu), and select Settings. From there, follow the following steps:

	- Set Regular Nick : This is your usual nick (ex. "lnx"). This will appear in your away nicks (ex. "lnx-away") and will be the nick that the script changes back to upon returning from /away.

	- Set Presets : This is optional. Presets are (perhaps obviously) pre-set away messages and nicks. You will be prompted to provide an away message (ex. "because") and nick extension (ex. "away"). After setting a preset, when you go to Away:Away, under Define , you will see the list of extensions that corrospond with your various presets (ex. your preset of Reason:"because" and extension:"away" will appear as "away" in the list of options.). These presets may be reset at any time.

	- Turn Notices On and Off : This section is split into two sections; Channel and Privmsg. Setting Channel to "yes" will, on the mention of either your regular nick or current nick, send a message to the channel mentioning that you are away and why. Seting Privmsg to "yes" will send a response to any msg or query indicating that you are away, giving the reason, and mentioning whether your logging is on or off (see below.)

	- Set Colors : This is completely cosmetic, as all messages sent to the irc server are in white, or sent as actions. This will simply make the script responses to you (the user) pretty. =)

	- Logging : Turning logging on will log any msgs to you in a .txt file, which will display message, time, and nick of sender. Note: The logfile you specify must already exist in order for this script to write to it.



	iii) Using the Script

		It's pretty straightforward. To set away, go to Away:Away in your Channel popups. From there , either select Define and follow the instructions, or select one of your presets (see above). To set Back, simply select Away:Back in popups.

	

	

C) INFORMATION and AUTHOR

	Script Name:		Away

	Script Version:		Public Release 1.0

	Scripter:		lnx (Ackme Script)

	Contact:

		WWW:		http://www.ackme.org

		Email:		script@ackme.org

		IRC:		/server irc.relic.net

				Nick: lnx

				Channels: #relicnet

					  #relicchat

					  #script

					  And others



	This script is released as is, with no promises made nor implied. Any damages real or imagined, direct or indirect, are not the liability of the author. Call your mom.



Enjoy..comments and suggestions are always welcome at the above address....come on Relic sometime and talk to me, I'd love to hear your ideas.



later,

lnx



(c) 2000 Ackme Script by lnxnet, a division of WLNX Productions. All Rights Reserved.
```

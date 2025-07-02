# QIDBot v1 by QID (David Osolkowski)

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

**Script Name:** QIDBot  
**Version:** 1  
**Category:** bot  
**Author(s):** QID (David Osolkowski)  
**Email(s):** <larryo@buffnet.net>  
**Website(s):** [http://free.prohosting.com/~davido](http://free.prohosting.com/~davido), [http://www.buffnet.net/~larryo/qidbot.hlp](http://www.buffnet.net/~larryo/qidbot.hlp)  
**Release Year:** 1998  
**Tags:** timer, greet, alias, popups, popup, channel control, remote script, bot, protection  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990910120914_qidbot16/19990910120914_qidbot16.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990910120914_qidbot16.zip",
  "file_count": 5,
  "file_types": [
    ".diz",
    ".hlp",
    ".ini",
    ".txt"
  ],
  "max_file_date": "1998-07-26",
  "min_file_date": "1998-07-21",
  "total_size": 32.22,
  "largest_file": "Qidbot.hlp",
  "text": [
    "bot.ini",
    "readme.txt",
    "monitor.ini",
    "Qidbot.hlp",
    "file_id.diz"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## readme.txt

```text
  __  _____   ___    ___    __   _____
 /  \   |    |   \  |   \  /  \    |
|    |  |    |    | |___/ |    |   |
|  \ |  |    |    | |   \ |    |   |
 \__X __|__  |___/  |___/  \__/    |
  ______________________________________________________________________________
 /										\
| QIDBot is designed to run with mIRC 5.4.  It is mostly standalone, though it   |
| can work as a remote script.  Please read this file fully before starting.	 |
|--------------------------------------------------------------------------------|
|										 |
| Before you get started, be warned: QIDBot works best in a second copy of mIRC, |
| in an entirely separate directory on your hard drive.  You can still use it    |
| with your script if you want, but if you have problems, reinstall everything.  |
|--------------------------------------------------------------------------------|
|										 |
| Let's begin.  First off, put bot.ini and monitor.ini in your mIRC directory    |
| (make sure mirc32.exe or mirc16.exe is in this directory).  Run this copy of   |
| mIRC.  Now, we need to do some setup.  Make sure you're connected to a server, |
| then type /load -a bot.ini (to load the aliases) and then /setup (answer the   |
| questions).  Make sure the correct files are selected when you hit OK.  You    |
| can also choose whether or not to load the QIDBot popups.  This is		 |
| reccomended, it makes some functions easier, but your Status popups will be    |
| gone (unless you know where your current popups file is and how to reload it). |
| Of course, if you're using a separate copy of mIRC like I told you to, this    |
| shouldn't matter much.   After /setup has completed, everything should be      |
| loaded and the bot should be on.  The popup (if you chose to use it) should    |
| appear and function properly.  It's only in the status window.  You should     |
| also see a little message saying:						 |
|										 |
| Loaded script/users(/popup) '<filename>' 					 |
|										 |
| The bot is now loaded.  Type /set %QID.admin <yournickname> to make yourself   |
| the bot's admin (you can also access this through the popup).  Once you have   |
| done this, the bot is ready to be used.  Always use separate windows for	 |
| yourself and the bot so you don't encounter any problems.  If the bot won't    |
| respond to your commands, get on irc.3dnet.net or Undernet and ask me.  My     |
| username is most likely QID, although I might be [QID] or QIDBot.  There are a |
| few things you will have to do manually, such as deleting users, since I do    |
| not know how to automate this without making it insecure.  If you do, please   |
| tell me so I can make this bot better.  If you need to know the commands, type |
| !commands (from your separate window).					 |
|--------------------------------------------------------------------------------|
|										 |
| Monitoring a channel								 |
|										 |
| This is one of the most complicated things the bot will do, so I made a        |
| separate section for it.  In order to monitor a channel, these must be true:   |
|										 |
| 1).  The bot is in the channel						 |
| 2).  Your current username is defined as the admin				 |
| 3).  You are not in the monitored channel					 |
| 4).  Monitoring is on for the channel						 |
|										 |
| To turn monitoring on for a channel, type !set monitor on #channel  This sets  |
| %QID.monchans to #channel  If you like, set this yourself with /set (make sure |
| the names are right).  If you turn monitoring on for another channel, say,     |
| #temp, then %QID.monchans will be #channel #temp (including the spaces).  At   |
| present the bot will tell you everything that happens, except messages it      |
| receives, since you might have to communicate with it through messages.	 |
| Thanks for using QIDBot!							 |
|--------------------------------------------------------------------------------|
|  David Osolkowski				             larryo@buffnet.net	 |
|										 |
|  	     Visit my webpage at http://free.prohosting.com/~davido		 |
 \______________________________________________________________________________/











```

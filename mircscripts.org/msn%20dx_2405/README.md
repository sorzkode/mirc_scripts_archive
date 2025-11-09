# msn%20dx_2405 v3 by Unknown

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

**Script Name:** msn%20dx_2405  
**Version:** 3  
**Category:** game  
**Authors:** Unknown  
**Email(s):** <folken@msndx.com.ar>, <msmsgs@msnmsgr.com>, <warufolken@hotmail.com>, <dragonzap1@aol.com>, <fowken@msndx.com.aw>  
**Website(s):** [http://(emoticons/confused.gif](http://(emoticons/confused.gif), [http://(emoticons/disappointed.gif](http://(emoticons/disappointed.gif), [http://(emoticons/sarcastic.gif](http://(emoticons/sarcastic.gif), [http://macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0](http://macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0), [http://(emoticons/surprised.gif](http://(emoticons/surprised.gif), [http://www.msndx.com.ar:run](http://www.msndx.com.ar:run), [http://(emoticons/tongue.gif](http://(emoticons/tongue.gif), [http://(emoticons/#hmm.gif](http://(emoticons/#hmm.gif), [http://(emoticons/vampire.gif](http://(emoticons/vampire.gif), [http://(emoticons/thumbsdown.gif](http://(emoticons/thumbsdown.gif)  
**Release Year:** 2006  
**Tags:** wav, now is able to set your own display picture!!!, notify, toolbar, timer, alias, dice, plugin, addon, emoticons, bot, snippet, interface, gui, dialog, popup, statusbar, rpg, highlight, popups  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/msn%20dx_2405/msn%20dx_2405.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "msn%20dx_2405.zip",
  "file_count": 107,
  "file_types": [
    ".css",
    ".db",
    ".dll",
    ".exe",
    ".gif",
    ".htm",
    ".icl",
    ".ico",
    ".ini",
    ".lang",
    ".mdx",
    ".mrc",
    ".png",
    ".swf",
    ".txt",
    ".wav"
  ],
  "max_file_date": "2006-05-28",
  "min_file_date": "2000-07-29",
  "total_size": 1065.92,
  "largest_file": "msn dx/msndx.mrc",
  "text": [
    "msn dx/data/list.txt",
    "msn dx/data/msn.block.txt",
    "msn dx/data/msn.hidden.txt",
    "msn dx/readme.txt"
  ]
}
```

## 📋 Text Content (from msn dx/readme.txt)

```text
MSN DX version 1.61 readme file



- Info:

	

	Name:			MSN DX

	Version:		1.61

	For mIRC:		6.17

	Author:			FoLKeN^

	Description:		Full-featured MSN Messenger client for mIRC

	Official site:		http://www.msndx.com.ar



- Updates:



	05/28/2006	(version 1.61) :

				- Fixed display pictures bug discovered on mIRC 6.17 (* /remove insufficient parameters message)

				- Fixed emoticons bug discovered on mIRC 6.17 (emoticons panel not working)

				- Faster text input on chat windows

				- Other minor bug fixes





	04/11/2006	(version 1.6) :

				- Fixed auth login problem (servers no longer allow non-SSL logins - log in info is now encrypted via SSL)

				- Compatible with 6.17 (will check for $decode to be enabled before loading)

				- Option to enable/disable timestamp on messages

				



	01/24/2006:	(version 1.5) :

				- Emoticons !

				- Custom font and color support !

				- Possibillity to allow/disallow people see you typing

				- Option to enable/disable sounds

				- Improved file transfer (users behind a firewall/router must enable port 6891 in order to make file sending work)

				- Now MSN DX will run well using almost any visual style

				- New strings will keep unstranslated until I contact all translators

				- Bug fixes

				



	11/26/2005:	(version 1.4) :

				- Added an option to disable desktop mode and run msn dx inside mirc window

				- Added an option to disable automatic MTS color fit for contact list

				- Added hungarian language pack (thanks to Vector Akashi)

				- Fixed major visual problems when running msn dx with a windows visual style enabled

				- Original MSN icon pack added (thanks to Vector Akashi for making it)

				- Other minor bugs fixed

	

	3/28/2005:	(version 1.3) :

				- Multilanguage (FR, DE, ES, PT, NL, EF and possibility to add more or make your own)

				- New notify popup window with slide effect like original client (No more crappy balloons!)

				- Full proxy support (only anonymous)

				- 2 Icon packs (and possibility to add more)

				- Each status has its own icon so you can identify easily someone's status

				- New layout on chat windows

				- Now MSN DX fits to your MTS theme colors

				- Fixed file-transfer receiving (now works using both P2P and MSNFTP methods - P2P not implemented on file sending yet)

				- People will see you typing now (future option to enable/disable this)

				- Status popup added on tray icon

				- Window closing by pressing "ESC" like in original client

				- Pager bugs were fixed

				- SB server connecting error fixed

				- Other minor bugs fixed

				- New web site opened, check out www.msndx.com.ar

	

	2/15/2005:	(version 1.2) You can now set your own display picture!!! with many options!

			Improved file transfer (user behind a router may still have some problems)

			Fixed bugs on pager

			Feedback system is working again!



	9/3/2004 :	(version 1.1) Compatible with mIRC 6.16

			Small bugs fixes

			Display picture receiving now works better

	



- How to install:



	1. First, read all this text before doing what it says.

	2. Make sure you unzipped the downloaded file in a folder named "msn dx", wherever you want.

	3. Run mIRC

	4. Type (or just copy-paste) in any window's editbox the following:



		//load -rs " $+ $sfile($mircdir) $+ "



		Find "msndx.mrc" on the file select dialog.



	5. If any "initialization script" warning appears, click yes.

	6. Select the language

	7. You'll be asked to configure the settings.

	   It is strongly recommended that you configure it before start using it.

	8. There's no 8, that's all.



- Features:



	- Now is able to set your own display picture!!!

	- MDX-ed friendly interface

	- Chat with your contacts

	- Full managing of your contacts

	- Managing of "hidden contacts" (not present in original client!)

	- User display pictures support

	- Auto-reply for users while you are away/busy (not present in original client!)

	- Customizable interface and icons (not present in original client!)

	- File transfer, receiving and sending

	- File receiving auto reject for specified file types (not present in original client!)

	- Multilanguage (FR, DE, ES, PT, NL, EF and possibility to add more or make your own)

	- New notify popup window with slide effect like original client

	- Full proxy support (anonymous for now)

	- 2 Icon packs (and possibility to add more)

	- Fits to your MTS theme colors!!! (hehe, not present in original client!)

	- Feedback, to improve MSN DX in the future



	- Much more...!



- Contact:



	E-Mail: folken@msndx.com.ar / warufolken@hotmail.com

	MSN: warufolken@hotmail.com
```

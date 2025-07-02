# Memo Express v1.61 by ducky

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

**Script Name:** Memo Express  
**Version:** 1.61  
**Category:** addon  
**Author(s):** ducky  
**Email(s):** <ircguard@provalue.net>  
**Website(s):** [http://www.wot.net/~ircguard/](http://www.wot.net/~ircguard/)  
**Release Year:** 1999  
**Tags:** timer, alias, popups, dialog, popup, bot  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990909181955_mexpress161/19990909181955_mexpress161.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990909181955_mexpress161.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1999-04-21",
  "min_file_date": "1999-04-21",
  "total_size": 33.44,
  "largest_file": "memoexpress.mrc",
  "text": [
    "memoexpress.mrc",
    "README.TXT"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## README.TXT

```text
(Notepad users press Alt-E then W)

Memo Express Information:

Unzip memoexpress.mrc (or memoex~1.mrc) to any directory and within mIRC type: /load -rs memoexpress.mrc or /load -rs memoex~1.mrc (depending on your operating system). Once loaded you'll be prompted with a mIRC initialization warning window (if setup to warn), click yes. If you have a problem with Memo Express not receiving new memos, press Alt R, then File, then Order, then click memoexpress.mrc (or memoex~1.mrc) and then click the up button until the script is on the first line. This fixes 90% of the conflicts.


Author: |Legend| (email: ircguard@provalue.net)
Version: 1.61 for mIRC 5.51
Generated Files: memos.dat, memos.ini (in your $scriptdir)

Welcome to Memo Express! This add-on will allow the most comfort and ease when it comes to IRC based Memos. Some of the features that are included but not limited to are:

- Automatic download and purge of received memos
- Displays alert to the active window when new memos arrive
- Plays a sound when new memos arrive
- Decoding and Encoding of memo text using a 2 phase Algorithm
- Memo forward and CC capabilities
- Abilities to block memos from certain users
- Monitors, displays, and restricts composed memo length
- Automatic expiration of retained memos
- Provides data showing read, unread, expired, and total memos on file
- Simplified settings dialog

Requirements:

- You must have a registered nickname
- Memo service enabled.
- Must be using DALnet (for the time being atleast)

Use Memo express like you would an email client. Memo express will not interfere with other scripts that filter notices from Memoserv, but be aware that if processing is done by other scripts, the notices from Memoserv will be displayed. I recommend that you remove any filtering of Memoserv notices from other scripts. If you aren't familiar with how to do this, contact the author or myself via memo or email. The F12 key will open the window for you during your session if needed, this can be changed in settings. Your status popups will contain a Memo Express area and /msend is used for quick sending of memos. If you manually requests memo's Memo Express will pick up some unwanted junk from Memoserv, please try not to manually request them, Memo Express will do it all auto.

1.61 Beta Fixes/Additions:
- Fixed problems when reloading the script and not wanting to overwrite existing memos/settings (just select No when prompted).
- Fixed forward memo function, wasn't setting the correct variables.
- Fixed reply option, now will reply to Ops memos/Sendsop memo's via channel (respectively)
- Fixed small bug in encryption with mIRC 5.51
- Changed the type of display window for memo's, now is a bit more appealing.
- Added Web Page, Join #MemoExpress options to the help window. Also added an eggdrop in that channel to support distribution of the script.  Am looking for tcl scripters to assist in a small but detailed eggdrop project (memo me please).
- MemoExpress bot now responds to /msg MemoExpress file list queries - will give you a list of available MemoExpress updates.

1.6 Beta Fixes/Additions:
- Fixed deleting of memos.dat if reloading the script.
- Added & to buttons so you can use Alt Key to press a button.
- Removed bugfix alias (no longer needed).
- Removed bug window (same as above).
- Included $scriptdir when referencing memos.dat and memos.ini.
- Changed a few references to variables in the script to process a bit faster and save more space.
- Changed >> key to > (just a formality, the double arrow means all contents), in this case we're just transferring the entered name.  Will persue a >> function if I get enough requests.
- Made the > key the default key in the Outgoing Memo Express window (just press enter after completing the recipient block).
- Adjusted how memos are downloaded and removed.  Had some filtering problems when recieving memo's while downloading.
- Added Never expire option.
- Fixed a small bug when viewing available fkeys but not selecting one.
- Fixed resetting of parameters in memos.ini if reloading/upgrading the script.
- Adjusted when new memo notification was displayed, now waits until all memos are downloaded.
- Fixed Memo Block bug.
  
Version 1.5 (Public release):
- Added alias set option in settings
- Added desktop/mIRC display option 
- Added popup notification for new memos (thanks ducky!)

```

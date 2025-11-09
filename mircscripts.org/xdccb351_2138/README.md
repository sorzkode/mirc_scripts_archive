# DEMON v1.0 by Yochai Timmer

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

**Script Name:** DEMON  
**Version:** 1.0  
**Category:** game  
**Authors:** Yochai Timmer  
**Email(s):** <gambler@irc.sony.com>, <Yochai@Dorot.org.il>, <dragonzap1@aol.com>  
**Website(s):** [http://isohunt.com/f](http://isohunt.com/f), [http://www.incomplete.me.uk/](http://www.incomplete.me.uk/), [http://www.paypal.com/](http://www.paypal.com/), [http://er.com/](http://er.com/)  
**Release Year:** 2006  
**Tags:** trigger, stats, protection, rejoin, toolbar, clr_queues, nicklist, auto join, dir, timer, alias, dcc, get, who, sends, bot, interface, dialog, file server, queues, popup, welcome message, fserve, xdcc, statusbar, rpg, read, highlight, popups, mp3  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/xdccb351_2138/xdccb351_2138.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "xdccb351_2138.zip",
  "file_count": 12,
  "file_types": [
    ".dll",
    ".doc",
    ".icl",
    ".mdx",
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2006-03-14",
  "min_file_date": "2002-06-17",
  "total_size": 815.66,
  "largest_file": "XDCCb.mrc",
  "text": [
    "Xdccb Versions.txt",
    "XDCC Browser.doc",
    "XDCCb-quit-messages.txt"
  ]
}
```

## 📋 Text Content (from Xdccb Versions.txt)

```text
v3.51



1. Added an IRC Klipper search option in the search tab, and made it default (due to better results).

2. Fixed a bug in the request's status not showing Offline status.

3. Fixed a bug in the auto-remove requests option.

4. The script now checks if the requested file appears in the Finished directory, so it won't request the same file twice.

5. When openning a .xcb file the script will now open the browser dialog automtically.

6. The script will no longer open lots of dcc windows when trying to get the same file from several bots.



v3.50



1. The script will now work only on mIRC v6.17 and above.

2. Changed the database system so the script will now cash the .ini file into a hash table and search there instead of in the file. This should improve overall script performance.

3. The "On finish remove from Requests" option will now set aside little differences in the packetnames like dots instead of spaces, and some file extensions. (tar,rar,zip,mp3,mpg,mpeg,avi)

4. The script will now detect users that have set theirselves so you can't message them unless you are registered on the network. It will show a "Register" status in the requests tab, and will halt the automated requests.

   When you register you'll have to right click on any nick in the requests tab that is on the specific network, and choose the "I've registered" option.

5. Improved the pacletnews search a bit, to minimize illegal entries and network names.

6. The move finished file option is now optional. (so it won't interfere with other running scripts)

7. Fixed a problem in the browser tab with double clicking on the channel name to get the channel's packet list.

8. The script will now list in a descending order when you click the same header twice.

9. Fixed a little bug with the FTP listing in the search tab.



v3.43



1. Fixed the loading problem with registry file (line 4833)

2. Fixed the packetnews search problem (the site changed its interface agian)

3. Fixed the problem with moving the finished files to the default finish directory.

4. Removed the 1-999 pack limit when requesting manually a pack number from a bot.

5. The script will no longer freeze mIRC when loading a File Server with a lot of files.



v3.42



1. Moved the Packetnews search option to the default option.

2. Fixed the temporary freeze when recieving data from packetnews.

3. Fixed the requst option in the search box so it joins the user correctly.

4. Fixed a little bug in te way the script checked the servers.

5. Added a Finish Directory option. You can now choose a directory to move the finished requests to.

6. Added a "Save All" option to the list control autosave dialog. This will save all the lists in the scripts' cash to a single file every x hours.

7. The script can now control XDCC links. (if you allow it to control IRC links as well)



v3.41



1. Fixed a bug that would send a XDCC list request even if the "Auto request list from bots" option was disabled.

2. Fixed a bug in the on join request timer.

3. Changed the way the script calls the internet browser.

4. Fixed a little bug in loading the channels you're on (while having different nicks in different networks)

5. Fixed a little bug in the Quit irrelevant command when you have different nicks in different networks. 

6. Fixed a bug in the the request option in the search tab. It just didn't request in a local search.



v3.40



1. Fixed the packet counter a bit, so it won't just keep counting although there aren't any new packs.

2. Fixed a little bug in getfail event (For files downloaded to a directory with spaces in its name).

3. You can now see the user's Queue status, and Record CPS in the Browser and search tabs.

4. Fixed the Request option in the Search tab a bit.

5. The dialog is finally resizeable, And saves the last dialog size (if you press on the ok button).

6. There's now a maximize button.

7. Improved the hotlink event, hopefully will recognize the nick better, and it should work with mIRC's timestamps.

8. Fixed the Join all option so it won't try to connect to the same network twice.

9. Fixed a little bug that removed a channel from the list when you quit although it still had packets listed in it.

10. Fixed the Autosave packet list option, so it won't try to save a channel or network's list if there isn't one.

     Because if there wasn't a list for that channel or network, it used to just remove the list file.

11. Fixed the Load lists when mIRC starts option in the List control dialog.

12. Added a Timed Out status when searching in the packetnews site. This is because mIRC limits the connection attempt to about 10 seconds, And it's better then the /sockwrite error in the status window.

13. Fixed a bug that caused the script to list the same pack twice in the request tab if there was a slight difference between the packet names.

14. Added a few more packet synatax's

15. Fixed a problem with removing items from large .xcb list files.

16. Imp
```

# BanList Sweep v1 by Thinline

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

**Script Name:** BanList Sweep  
**Version:** 1  
**Category:** addon  
**Author(s):** Thinline  
**Email(s):** <chris@christianlinks.net>, <owen4@ixpres.com>, <Warrior4JC@juno.com>  
**Website(s):** [http://s.net](http://s.net)  
**Release Year:** 1999  
**Tags:** timer, alias, popups, popup, protection, ban list  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990908093104_bansweep/19990908093104_bansweep.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990908093104_bansweep.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1999-01-13",
  "min_file_date": "1998-03-18",
  "total_size": 12.84,
  "largest_file": "bansweep.mrc",
  "text": [
    "bansweep.mrc",
    "bnswpreadme.txt"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## bnswpreadme.txt

```text

Thank you for choosing BanList Sweep!

BanList Sweep (Mirc 5.5) -- will not function on mirc versions below 5.4
-------------

    Most IRC networks will set a limit of 30 or 60 bans per channel. When that list is full, you cannot ban anyone, until you remove some of the older bans. That's where BanList Sweep comes in. 

    When the banlist on a channel becomes full, most servers will return a message to your IRC client (in the server/status window), telling it that the list is full. This is where BanList Sweep takes over. Depending on the options you chose, it will remove Server bans, ChanServ bans, and the number of the oldest bans in the list, that you tell it to. After the sweep of the banlist, the script will then set the ban that you or your script were attempting to set, when you received the "banlist full" message. Below you will find instructions on how to load BanList Sweep, followed by instructions on how to use BanList Sweep, and an explanation of your options.

Loading BanList Sweep
---------------------
To load BanList Sweep, place "bansweep.mrc" and "bnswpreadme.txt" in the same folder where your mirc program resides. Open mirc, and from any window in mirc, type the following line...

/load -rs bansweep.mrc

If you get a window asking you if you want to let the script run initialization commands, click on "yes". The script is wanting to set up some preliminary variables, so it will run properly.

Using BanList Sweep
-------------------
*Notice - if your version of mirc is not at least 5.4 or higher, even if the script is loaded, you will not see the BanList Sweep popups. Also, if you are not opped on the channel you are trying to use the BanList Sweep popups in, you will not see the popups (they will be hidden until you are opped).

Server Bans - You can choose to have BLS (BanList Sweep) remove all server bans when it detects that the banlist is full. Server bans are those bans in the list that show a server name, instead of a nick for the party making the ban. You can turn this option on or off by right clicking in the channel window, selecting "BanList Maintenance ...Options ...Remove all Server Bans?" and clicking on "Yes" or "No".

ChanServ Bans - For those of you on networks with ChanServ, you can choose to have BLS remove all ChanServ bans when it detects that the banlist is full. ChanServ bans are those which are permanently banned from the channel, and are enforced by ChanServ itself. It is useful to have these bans removed from the list, because it frees up more banlist space, and ChanServ will reset the ban, should the person attempt to join the channel. You can turn this option on or off by right clicking in the channel window, selecting "BanList Maintenance ...Options ...Remove all ChanServ Bans?" and clicking on "Yes" or "No".

Manual BanList Sweep - In testing this script, I found a few IRC networks, where no msg was sent to my IRC client, telling me that the banlist was full. In these cases, of course, the script will not automatically run. This manual sweep function is for use on those servers (although anyone on any server can use it). It does the exact same thing as the automated portion of the script, with the exception that it will not set the ban that you were trying to make when you realized that the banlist was full. To run a manual banlist sweep, right click in the channel window, and click on "Manual BanList Sweep"

Protected Bans - There may be certain bans which you do not want the script to remove in it's sweep. The script will not actively make sure these bans stay in the list, but will only ignore the bans in it's sweep, and they will not be removed by the script.

Adding to the Protected Ban List - To add a ban to the protection list, right click in the channel window, select "BanList_Sweep ...Options ...Protected Bans", click on "Add to List", enter that ban you want added, into the popup window, and click "Ok".

Viewing the Protected Ban List - To view the protected ban list, right click in the channel window ...select "BanList_Sweep ...Options ...Protection List", and click on "View List". From within the Protected Ban list window, to remove a ban from the list, simply double click on the ban you want removed, type "y" or "yes" in the window asking if you are sure, and click "Ok".

If you have any other questions, please feel free to email me at any of the following email addresses, or find me on dalnet under the nick Thinline or ShazBot. If my nick is ShazBot, I'm probably away so if I dont respond, just leave a msg or a memo.

Email addresses:
owen4@ixpres.com
chris@christianlinks.net
Warrior4JC@juno.com


```

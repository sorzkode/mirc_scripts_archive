# System v1.0 by TuS on EFNET

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

**Script Name:** System  
**Version:** 1.0  
**Category:** protection  
**Authors:** TuS on EFNET  
**Email(s):** <TuSTuS@hotmail.com>, <TuSTuS@Hotmail.com>  
**Website(s):** [http://www.mirc.co.uk](http://www.mirc.co.uk), [http://1xx.2xx.2xx.1xx](http://1xx.2xx.2xx.1xx)  
**Release Year:** 2000  
**Tags:** dialog, popup, trigger, delete, timer, xdcc, addon, packets    : add, user configurable description, minimum download speed/pack, alias, rejoin, dcc  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/tusxdcc_server_v1.0/tusxdcc_server_v1.0.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "tusxdcc_server_v1.0.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2000-09-28",
  "min_file_date": "2000-09-28",
  "total_size": 33.02,
  "largest_file": "TuSXdcc.mrc",
  "text": [
    "TuSXdcc_readme.txt"
  ]
}
```

## 📋 Text Content (from TuSXdcc_readme.txt)

```text
===========================================================================================

                                   TuSXdcc Server v1.0                           28/09/2000

                                            by

                            TuS on EFNET / TuSTuS@hotmail.com

===========================================================================================



TuSXDCC server v1.0 is a complete XDCC server script build on plain mIRC 5.8.  



1) Features

2) Installation	

3) Using TuSXdcc Server

  3.1) Setting UP The Server 

  3.2) Running The Server

  3.3) Server Commands



===========================================================================================



1) Features :

   Packets    : ADD, DELETE, User configurable Description, Minimum Download speed/Pack,

                Pack Download counter.

   Server     : User configurable Send slots, Queue slots (with notice to queued users

                about position and time left), Maximum Gets per User,

                Maximum Speed per Send, DCC Timeout, Messages before and after Packs

                listing, Channel play.    

   Statistics : Global and Session stats (Downloads, Bytes Transferred, Speed),

                Reset of Session stats or ALL stats.



2) Installation :

   After unzipping TuSXdcc.zip to your mIRC directory, you need to load this addon.

       -> run mIRC.exe

       -> type /remote on

       -> type /load -rs TuSXdcc.mrc

       -> click yes if a small popup appears (runs initialisation and Creates the 

          TuSXdcc.ini file if not found)

   That's about it....it's done.

         

3) Using TuSXdcc Server : 

   Using TuSXdcc Server is quite simple (even a newbie could do it ;) )

   Be sure to be able to Send files through DCC as the server does DCC Transfers 



 3.1) Setting UP The Server 

      First of all you should set up the server (There is a default configuration) 

      -> join a channel

      -> right click in the Channel Window

      -> select "TuSXdcc" then "Setup Server" : The Server Configuration dialog popsup

	-> ADD Packs (Files served)  

           !!! Be aware that Spaces in file names are NOT supported.

        -> Set how many Send Slots (1 to 99), Queue Slots (0 to 99, 0 Disables Queue),

           Gets/User (1 to 9, counts Sends and Queued), DCC Timeout (in Seconds, must be

           less than DCC timeout in mIRC so that TuSXdcc manages it's own Timeouts), 

           Max Speed/Send (in Cps, 0 to disable), Set Messages (not displayed if empty)

        -> Enable Server (CheckBox)

        -> Click on button "Done" to exit.

      ALL configuration changes are saved in the TuSXdcc.ini file



 3.2) Running The Server

      -> right click in the Channel Window

      -> select "TuSXdcc", "Chan Play", "Start" : A Dialog popsup asking at what speed 

         the Pack listing should be played on the channel (This information is saved in

         the ini file and timer is restarted on rejoin) 

         !!! Be aware of flooding kick (Closing Link: 1xx.2xx.2xx.1xx (Excess Flood))

             if timer is to fast ;).         

         !!! Be aware that server plays on ALL channels that you join.



 3.3) Server Commands

      Help            : Help screen (example: "/ctcp Svrnick xdcc Help")

      List            : List all offerings (example: "/ctcp Svrnick xdcc List")

      Send #<x>       : Get a packet (example: "/ctcp Svrnick xdcc send #3")

      Search <string> : Search for a packet (example: "/ctcp Svrnick xdcc search acid")

      Queue           : View Your Queue Status (example: "/ctcp Svrnick xdcc queue")

      Remove all/#<x> : Remove Pack or ALL Queued Transfers 

                        (example: "/ctcp Svrnick xdcc remove all") or 

                        (example: "/ctcp Svrnick xdcc remove #2")





Love, Peace, Power

TuS.
```

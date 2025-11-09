# xmemoserv%5b02-08%5d v2 by xDaeMoN

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

**Script Name:** xmemoserv%5b02-08%5d  
**Version:** 2  
**Category:** game  
**Authors:** xDaeMoN  
**Email(s):** <xdaemon@xdaemon.us>, <01xdaemon@xdaemon.us>  
**Website(s):** [http://www.mirc.com](http://www.mirc.com)  
**Release Year:** 2006  
**Tags:** dialog, flood protection, trigger, timer, addon, protection, notify, alias, bot, uno  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/xmemoserv%5b02-08%5d/xmemoserv%5b02-08%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "xmemoserv%5b02-08%5d.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2006-02-08",
  "min_file_date": "2006-02-08",
  "total_size": 20.33,
  "largest_file": "xmemoserv.mrc",
  "text": [
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
 =====================================



  xMemoserv

  version 2

  Written by: xDaeMoN

  Email: xdaemon@xdaemon.us

  02.08.06

   

 =====================================





 --------------

  INTRODUCTION

 --------------



  A script for a bot that will save the message & notify the person addressed to retrieve it. 

  If the person is offline, they will be notified when they get back online. User needs to be 

  registered to be able to send & retrieve a message. I added a simple register system and you 

  could also change your password.



 ---------------

  REQUIREMENTS

 ---------------



  mIRC 6.16





 ----------------

  HOW TO INSTALL

 ----------------



  Unzip the xMemoserv.zip file to a folder on your hard drive.

  Open mIRC. 



  Then you can do:



  1.

  Go to the remotes editor (Alt +R) and select File -> Load -> Script. 

  Browse to the xmemoserv.mrc file that you extracted from the .zip.

  Press "Open." 

  Press "Yes" if asked to run setup routines.



   -OR-



  2.

  Type the command below in mIRC, change the 'PATH_TO' 



     /load -rs path_to/xmemoserv.mrc



  

 ------------

  HOW TO USE

 ------------

 

  For the Dialog, type '/xMemo2' in any window -OR- Right-Click on any window and select 'xMemoserv'.



  On the Settings Tab, you can select "xMemoserv" or the Network name.



     If you select 'xMemoserv', you can Enable or Disable the script itself.



     If you select a Network Name, you can Enable or Disable the script for that network & change the settings.



  On the Data Tab, you can select "All Servers" or the Network name.



     If you select "All Servers", you would be able to see ALL the queued messages for all the networks. 

     You can delete messages (One at a time) & Save all the messages by clicking "Save ALL".



     If you select a Network Name, you would only see all the queued messages for that network only & also

     delete the messages.



  On the Flood Tab, you can change the settings for the Query Flood Protection.



  ** Now for the remote commands:

 

  To register: /msg botname !register <password>

   

  To Login: /msg botname !login <password>



  To Logout: /msg botname !logout



  * To send message: /msg botname !send <nick> <message>



  * To retrieve message: /msg botname !read 



  * To change password: /msg botname !cpass <oldpassword> <newpassword>



  Note: 1. The trigger can be changed. '!' is the default. It can be changed in the dialog.

           2. <> means required.

    

   * These commands requires you to login before using them.

   





 ------------------

  HOW TO UNINSTALL

 ------------------



  Simply type in any window in mIRC:



   1. 

.       /unload -rs DIRECTORY/xmemoserv.mrc



  -OR-



  2 .

       Go to the Remotes Section (Alt-R) and click VIEW to select xmemoserv.mrc

       Then Click FILE -> UNLOAD

       Done, the script will be unloaded.



  -OR-



  3.

       Right-Click on any window & select 'xMemoserv' then click 'Unload'.



   and the script will be unloaded.



 ---------

  HISTORY

 ---------



 Version 1   



	03.07.05 - Finished version 1 



 Version 1.1 

	

	05.21.05 - Added user registration for security



 Version 1.2



	05.27.05 - Used Hash tables for storage



 Version 1.3



	10.22.05 - Added Delay on retrieving messages



 Version 1.4 



	01.24.06	- Added Menu to enable/disable script

		- Made trigger configurable		

		- Added 'removeme' & 'memohelp' command	 

  Version 2

  

	02.08.06	- Re-coded script

		- Added dialog for easier configuration

		- Added !login & !logout commands

		- The users on the notify list will now be deleted on unload if they were registered.
```

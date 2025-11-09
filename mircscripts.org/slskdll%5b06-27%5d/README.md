# slskdll%5b06-27%5d v2.3 by Soul_Eater

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

**Script Name:** slskdll%5b06-27%5d  
**Version:** 2.3  
**Category:** Unknown  
**Authors:** Soul_Eater  
**Email(s):**   
**Website(s):** [http://www.slsknet.org)](http://www.slsknet.org)), [http://queue](http://queue), [http://Print](http://Print), [http://www.google.com](http://www.google.com), [http://www.google.com](http://www.google.com)  
**Release Year:** 2005  
**Tags:** dialog  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/slskdll%5b06-27%5d/slskdll%5b06-27%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "slskdll%5b06-27%5d.zip",
  "file_count": 6,
  "file_types": [
    ".cpp",
    ".def",
    ".dll",
    ".dsp",
    ".dsw",
    ".txt"
  ],
  "max_file_date": "2005-03-27",
  "min_file_date": "2004-07-12",
  "total_size": 36.93,
  "largest_file": "slsk.cpp",
  "text": [
    "readdme.txt"
  ]
}
```

## 📋 Text Content (from readdme.txt)

```text
============================

=                          =

= SoulSeek DLL v2.3        =

=                          =

= by Soul_Eater            =

============================



This DLL was designed to provider interaction with the 

popular file-sharing client, SoulSeek(http://www.slsknet.org)

Compatible with SoulSeek 1.56+



Functions:





-SlSkTotal



Use: //echo -a $dll(slsk.dll,SlskTotal,.)



Purpose: Returns the total number of downloads in the download queue.



-SlskItem



Use: //echo -a $dll(slsk.dll,SlskItem,number > type)



number = the number of the item you want information about



type = 

name - the name of the item

status - the download status

timeleft - time remaining 

timelapse - time elapsed

ks - k/second

user - the user it is being downloading from

size - size of the file



Example: //echo -a $dll(slsk.dll,SlskItem,5 > status)



Purpose: To return information about the specified item



-Slsk



Use: //echo -a $dll(slsk.dll,Slsk,.)



Purpose: Returns whether or not SoulSeek is open



-SlskUsers



Use: //echo -a $dll(slsk.dll,SlskUsers,.)



Purpose: Returns total # of users in the userlist



-UserItem



Use: //echo -a $dll(slsk.dll,UserItem,number > type)



number = the user number

type =

user - the user name

files - the total number of shared files

ks - the user k/second



Example: //echo -a $dll(slsk.dll,UserItem, 4 > user)



Purpose: To return information about the specified user



-Windows



Use: //echo -a $dll(slsk.dll,Windows, cascade | tile)



Purpose: To Cascade or Title the windows in SoulSeek



Example: //echo -a $dll(slsk.dll,Windows,cascade)

         //dll slsk.dll Windows cascade



-SlskFlat



Use: //echo -a $dll(slsk.dll,SlskFlat,user|download|rooms)



Purpose: Makes the scrollbars in the download list, user list, or rooms list flat

Not restorable until restart of the program



Example: //echo -a $dll(slsk.dll,SlskFlat,rooms)

         //dll slsk.dll SlskFlat rooms



-Web



Use: //echo -a $dll(slsk.dll,Web,url)



Purpose: Slsk has a webbrowser in it's program. This let's you use it for more than just the

SoulSeek homepage!



Example: //echo -a $dll(slsk.dll,Web,http://www.google.com)

         //dll slsk.dll Web http://www.google.com 



-WebPrint



Use: //echo -a $dll(slsk.dll,WebPrint,.)



Purpose: Allows you to print from the browser window



Example: //echo -a $dll(slsk.dll,WebPrint,.)

         //dll slsk.dll WebPrint .



-SlskStatus



Use: //echo -a $dll(slsk.dll,SlskStatus,.)



Purpose: Returns how many downloads/uploads etc. Looks like this:

"77 downloads from 25 users, 0 uploads from 0 users"



Example: //echo -a $dll(slsk.dll,SlskStatus,.)



-DllInfo



Use: //echo -a $dll(slsk.dll,DllInfo,.)



Returns info about the DLL & goes to the author's homepage





Contact info:



SoulEata on AIM





Coming Soon!(hopefully, if youre good at this kinda thing let me know)



-Ability to set images to the MDI's background





=Updates=



2.3

-added 'SlskStatus'



2.0



-added 'SlskFlat'

-added 'Web'

-Added 'WebPrint'

-bugfixes



1.3



-fixed a -nasty- bug that wouldnt allow the dll to function if a window or dialog had "soulseek"

in the title



1.2:



-Changed verification of SlSk window, more accurate

-Added 'Windows'
```

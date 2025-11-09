# cnick%5b03-21%5d v1.0 by hdel

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

**Script Name:** cnick%5b03-21%5d  
**Version:** 1.0  
**Category:** bot  
**Authors:** hdel  
**Email(s):** <hdel@blueyonder.co.uk>  
**Website(s):**   
**Release Year:** 2003  
**Tags:** toolbar, nicklist, timer, bot, rejoin  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/cnick%5b03-21%5d/cnick%5b03-21%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "cnick%5b03-21%5d.zip",
  "file_count": 3,
  "file_types": [
    ".dll",
    ".pas",
    ".txt"
  ],
  "max_file_date": "2003-07-20",
  "min_file_date": "2003-07-20",
  "total_size": 14.02,
  "largest_file": "cnick.dll",
  "text": [
    "cnick.txt"
  ]
}
```

## 📋 Text Content (from cnick.txt)

```text
CNICK.dll by hdel (hdel@blueyonder.co.uk)

---------[20/7/03]



This DLL extends mIRC's CNICK feature, enabling you to color the

mode symbols (@,+,.,%) seperatly in the nicklist.



This DLL was created in Delphi 7 and compressed with UPX.





How to set it up

----------------



1). First of all, Part any channels you are in, And Place the DLL in a

    directory, somewhere. 

    For the examples in this file, I will assume the DLL is in the $mircdir.



3). Add an ON JOIN event to mIRC remotes (ALT+R), like this:



ON *:JOIN:#:if ($nick == $me) dll CNICK.dll JOIN $target



4). The DLL is now ready, Feel free to Rejoin your Channels.





How To Define The Colors

------------------------

The DLL integrates with the "Nick Colors" section in the mIRC Address Book. 



1). Open the mIRC Address Book. To do this, you can either type /abook

    or Press ALT+B, or click the Address Book icon on the toolbar.



2). In the Address Book, Select the "Nick" tab.



3). We will now add a Color for @ symbols. The procedure for

    adding colors is the same for +,%,and . symbols too.

   

    1.Press the "Add" button, in the "Nick Colors" section.

      The "Add Nick" window will appear.

    2.Choose a color from the "Nick Color" dropdown menu.

    3.Check the box that says "Nick or Address (nick!user@host)".

    4.In the Edit field immediatly below that box, type an '@' symbol.

    5.Make sure no other checkboxes are selected, and then Press OK.

4). Close the Address Book. Your Nicklist should now update itself.





KTOOLS and DMU

--------------

It is not recommended that you use Ktools.dll or DMU.dll with

CNICK.dll. These DLL's conflict with each other.



However, If you wish too, you can avoid conflicts with CNICK.dll

by making sure it is loaded first. The easiest way to do this is to

add an ON START even to your remotes. Like this:

ON *:START:/dll CNICK.dll JOIN .

Make sure there is no other ON START event that could be loading

Ktools or DMU first.
```

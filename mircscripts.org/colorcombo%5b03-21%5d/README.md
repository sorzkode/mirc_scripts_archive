# colorcombo%5b03-21%5d v17 by hdel

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

**Script Name:** colorcombo%5b03-21%5d  
**Version:** 17  
**Category:** bot  
**Authors:** hdel  
**Email(s):** <hdel@blueyonder.co.uk>  
**Website(s):**   
**Release Year:** 2003  
**Tags:** dialog, bot, trigger  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/colorcombo%5b03-21%5d/colorcombo%5b03-21%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "colorcombo%5b03-21%5d.zip",
  "file_count": 3,
  "file_types": [
    ".dll",
    ".pas",
    ".txt"
  ],
  "max_file_date": "2003-10-08",
  "min_file_date": "2003-07-17",
  "total_size": 13.62,
  "largest_file": "colorcombo.dll",
  "text": [
    "ColorCombo.txt"
  ]
}
```

## 📋 Text Content (from ColorCombo.txt)

```text
ColorCombo.dll by hdel (hdel@blueyonder.co.uk)

--------------[version 17/07/03]





This DLL creates a color selection ComboBox, for use in mIRC dialogs.



This DLL was written in Delphi 7 and Compressed with UPX.



See the bottom of this text file for an Example script.





How to add a colorcombo to your dialog.

---------------------------------------



1. In your dialog table, add a normal ComboBox. Only give it the DROP style.

2. In the Dialog INIT event, call the DLL, using these parameters:



/dll ColorCombo.dll COMBO <name> <id>



Where 'name' identifies the dialog name, and id is the id number of the combo

you want to modify.



How to Select a Color item:

---------------------------

You can use /did -c to select items in the color combo.





How to get the selected color:

------------------------------



Use $did to get the selected color. Example:

$did(test,1)

or

$did(test,1).sel





Events

------

When a color is selected with Mouse or Keyboard, The

relevant dialog SCLICK event will trigger in mIRC.





EXAMPLE SCRIPT:

---------------



dialog test {

  title "ColorCombo.dll"

  size -1 -1 90 37

  option dbu

  combo 1, 15 14 25 45, drop 

}

on *:DIALOG:test:init:*:{

  dll colorcombo.dll COMBO test 1

  did -c $dname 1 5

}

on *:DIALOG:test:sclick:1:{

  echo -a SEL: $did($dname,$did).sel

}



To open the example, type: /dialog -m test test
```

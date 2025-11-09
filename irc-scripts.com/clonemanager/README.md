# Readme v1.02 by pressing yes the

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

**Script Name:** Readme  
**Version:** 1.02  
**Category:** bot  
**Authors:** pressing yes the  
**Email(s):** <Delta2k@mail.com>  
**Website(s):** [http://www.mirc.co.uk)](http://www.mirc.co.uk))  
**Release Year:** 2001  
**Tags:** dialog, kickban, nicklist, popup, addon, alias, bot, popups, interface  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/clonemanager/clonemanager.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "clonemanager.zip",
  "file_count": 3,
  "file_types": [
    ".ico",
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2001-04-22",
  "min_file_date": "2001-04-12",
  "total_size": 18.82,
  "largest_file": "clonemanager.mrc",
  "text": [
    "clone_readme.txt"
  ]
}
```

## 📋 Text Content (from clone_readme.txt)

```text
-----------------------------

 Clone Manager v1.02 Readme 

    - Delta2k

----------------------------



Welcome!

This file includes installation, usage and support instructions for Clone Manager.

Any questions you have can be answered in here, and if they arent you may find 

contact information at the bottom. 

* Note: mIRC's IAL must be on for this addon to work (/ial on)



Contents

  A) Installation

  B) Usage

  C) Uninstalling

  D) FAQ

  E) Contact

________________________________





A) Installation: 

 To load this file, simply unzip it into any directory you wish, and open your mirc exe file. 

 At the command prompt of mIRC, type /load -rs C:\path\to\clonemanager.mrc or if the file 

 is in your main directory (the one with the mirc exe file), you may use /load -rs clonemanager.mrc

 A popup dialog box will popup (surprise!) where it will ask if you want to load this file. 

 Press 'Yes' to continue loading and 'No' to not load it. When loaded, instructions will be given

 in the active window on how to use Clone Manager.

Quick Reference: type /load -rs C:\path\to\clonemanager.mrc



B) Usage:

 When you have loaded Clone Manager, there are several ways to access the different features.

 The main area would be in the channel popups, where you can configure the addon, as well as

 do various scan types and options. To open the scan dialog, right click in the channel and under

 'Clone Scan', you will see an option for Quick Scan. Clicking this options will bring you to the

 clone scanning dialog. You should see an interface with three menu items, 4 buttons, a list and a

 drop down box. The 'Done' button will exit the dialog, click this to finish. When you want to scan

 for clones in a channel, click on the drop down box to choose a channel to scan for. If you don't, 

 another error dialog box will inform you to choose one. (The drop down box update automatically so

 there is no need to open and close it.) Once a channel is chosen, click the 'Scan' button to scan the 

 chosen channel for clones. If any are found, they will be displayed in the list box. The other two buttons

 'Kick' and 'Kick Ban' will only be enabled if you have scanned a channel and are an op in it. Select the 

 clones you want to kick/ban and click the appropriate button. 

 Menu items:

 File	Options	      Help

 .Scan	.Configure      .Contents	

 -	                      .About

 .Save

 .Save As

 -

 .Exit

 This is a representation of the menu items (Creative eh? :)

 - The 'Scan' item does the same as the button in the main dialog

 - Save & Save As items save the output of the clone scan into a file. The default name for the

   Save As selection is clonescanMM/DD/YYYY.txt 

 - Exit does the same as the 'Done' button in the main dialog

 - The 'Configure' item brings up a dialog where you can configure your options.

 - Contents will bring up this help file 

 - About gives contact information about Clone Manager

Configuring your options

 The configuration dialog gives a number of options which you can easily change

  - To enable searching for clones on join, check the 'Join' checkbox at the top

  - If this is on, you can choose a reaction to finding any clones, which are kick/banning the clone, 

   warning them, or doing nothing. You can also enable checkbox to echo any clones found to the

   status/active window, whichever ones you prefer. 

  - To choose the scan type you want to use when scanning (if you dont know, just leave it blank) 

   use the drop down box to choose the mask type you want. 2 is the recommended type for finding

   the most clones, since its in the form of *!*@host - This is the default type in the add-on 

  - The warn message editbox allows you to put in the warn message you want to give when a clone 

   is found, which is also the kick message when a clone is kicked.

  - The last checkbox, labeled 'Allow Shift+F1 for clone scanning' allows the add-on to use the 

   Shift+F1 hotkey to bring up the scanning dialog and scan the active channel easily. 

    *Note: If used, this will over-write other Shift+F1 aliases. If you dont like popups, but dont want

     to over-write your Shift+F1 alias, you can use the alias /activescan for the same results

Nicklist

  There are nicklist popups which are enabled only if you are an op in a channel which allow you 

   to check certain nicks and take appropriate action without doing a full clone scan. 

Other

  If you prefer windows to dialogs, you can output results to a @custom window using the channel

  popups and going to the item 'Scan' -> 'Window' 



C) Uninstalling

 The add-on is extremely easy to unload, and requires very few variables to be unset due to use 

  of local variables and aliases. To uninstall the add-on, right click in the channel menu, go to 

  'Clone Scan', and Unload. A popup will come up to confirm the choice, and by pressing yes the

  script will unload itself completely.



D) FAQ

 This section
```

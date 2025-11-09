# dstudio_beta8a v1.0 by going to Preferences

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

**Script Name:** dstudio_beta8a  
**Version:** 1.0  
**Category:** bot  
**Authors:** going to Preferences  
**Email(s):**   
**Website(s):**   
**Release Year:** 2002  
**Tags:** toolbar, dialog, menu editor, notify, bot  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/dstudio_beta8a/dstudio_beta8a.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "dstudio_beta8a.zip",
  "file_count": 3,
  "file_types": [
    ".exe",
    ".txt"
  ],
  "max_file_date": "2002-02-17",
  "min_file_date": "2002-02-16",
  "total_size": 657.01,
  "largest_file": "dstudio.exe",
  "text": [
    "changes.txt",
    "importing.txt"
  ]
}
```

## 📋 Text Content (from changes.txt)

```text
note:

  check out http://www.mircscripts.org/dstudio/changes.txt for the most recent

  version of this file as well as information on unreleased versions of Dialog

  Studio.

  

2/17/2002 - 1.0 beta 8a (mIRC 6+)

1.  Fixed mIRC crash when previewing if Initialization Warning was enabled in

    mIRC.

2.  Fixed Menu Editor being excessively large when first running Dialog Studio.

    If the Menu Editor seems to be acting very strange, go to dstudio.ini, down

    to the [Windows] section, and delete the line that has "MenuEditor=" on it.

3.  Fixed preview sometimes not working after importing a dialog table that has

    menus in it.

4.  Fixed a lot of bugs that could occur if the Menu Editor was hidden, eg. ID

    conflicts, menus losing styles, etc.

5.  Fixed Dialog Studio not detecting duplicate control names on project load.

6.  Fixed Copy Dialog Code not working in all situations.

    



2/16/2002 - 1.0 beta 8 (mIRC 6+)

1.  The position of the design dialog is really saved now.  Honestly.  So is the

    menu editor.  Also, removed some "flicker" when Dialog Studio is first

    loaded.

2.  Renamed Object Palette to Tool Box and Object Browser to Properties Browser.

    As such, the shortcut for the Tool Box is now ALT+O.

3.  New toolbar icons!  Yay!  Also, removed toolbar icon for Preferences.  It is

    now only available from the Edit menu or CTRL+R.

4.  View Dialog Code and Copy Dialog Code now have their own toolbar icon rather

    than the drop-down menu.

5.  Fixed menu items not remembering ID numbers.

6.  Added user prompts when deleting controls.  This should prevent you from

    accidentally deleting a large number of controls.  The prompts can be

    disabled by going to Preferences > Miscellaneous > Deletion Prompts.

7.  Added the ability to export dialog tables directly to .mrc, or .txt files. 

    Use File > Export or ALT+E.

8.  Fixed Access Violation when adding scrollbars with defaults set, and now you

    can't set invalid combinations, such as "Vertical" and "Bottom".

9.  Fixed improper handling of scrollbar type/align in Properties Browser with

    more than one scrollbar selected.

10. Fixed Move Up/Move Down not updating the Preview in Menu Editor.

11. Fixed problem with icons not setting the correct X position from the

    Properties Browser.

12. Added support for local (dialog -l) dialog tables.

13. Added support for 'flat' and 'multi' button styles.

14. Added support for 'nowrap' text control style.

15. Added support for 'range N N' scroll control style.

16. Added support for 'limit N' combo box control style.

17. Added support for 'option notheme' dialog option to disable Windows XP's

    visual styles.

18. Fixed wordwrapping and painting bugs with Auto-fit text control.

19. Fixed menu area on design dialog not painting properly after resize.  Also,

    Dialog Studio dialog heights now match mIRC 6 dialog heights (they were

    different because of a change to mIRC 6).

20. Fixed Access Violation when exiting Dialog Studio minimized via the taskbar

    right-click "Close."

21. Added errorlog.txt error logging system.  If you get an error, such as an

    Access Violation, you can email this file to me, which will help me in

    debugging the problem.

22. Added the ability to dock the Tool Box.  The options are available on the

    right-click menu of the Tool Box.

23. Improved the logic of the automatic control naming.  Made a few changes:



      * No two controls can have the same name.

      * Names are limited to 100 characters.

      * Names can only contain alphanumeric (A-Z, a-z, 0-9) and underscore (_)

        characters.

        

    If you load an older project that violates these, it will automatically be

    renamed to a suitable name.  You may not use the name 'tabcontrol' because

    this is reserved for the tab control.

24. Fixed Clear button in the Import from Clipboard window not positioning

    properly if you resized the window.

25. Added 'F' font-toggle keyboard shortcut.  This will toggle the font of the

    design dialog between Tahoma and MS Sans Serif.  Since Windows 2K/XP use

    Tahoma and 95/98/ME use MS Sans Serif, this will let you see what your

    dialog looks like under both.  When you preview, however, it will still use

    the system default.  This setting is not saved...

26. Fixed Import from Clipboard and View Dialog Code windows acting like morons

    under Windows XP when resizing the windows.

27. Added Copy Table and Close buttons to the View Dialog Code window.

28. Optimized and organized the internal graphics resources.

29. You can no longer select two controls on two different tabs.

30. Alternate font changed to Tahoma, size 8.  Sorry, I got tired of that small

    Microsoft Sans Serif. =)



--



  For changes on older versions of Dialog Studio, please check

  

    http://www.mircscripts.org/dstudio/oldchanges.txt
```

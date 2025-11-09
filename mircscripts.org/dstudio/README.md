# Removed v1.0 by default This may

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

**Script Name:** Removed  
**Version:** 1.0  
**Category:** utility  
**Authors:** default This may  
**Email(s):**   
**Website(s):**   
**Release Year:** 2001  
**Tags:** toolbar, dialog  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/dstudio/dstudio.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "dstudio.zip",
  "file_count": 2,
  "file_types": [
    ".exe",
    ".txt"
  ],
  "max_file_date": "2001-04-01",
  "min_file_date": "2001-04-01",
  "total_size": 659.54,
  "largest_file": "dstudio.exe",
  "text": [
    "changes.txt"
  ]
}
```

## 📋 Text Content (from changes.txt)

```text
note:

  check out http://www.mircscripts.org/dstudio/changes.txt for the most recent

  version of this file as well as information on unreleased versions of Dialog

  Studio.



4/1/2001 - beta 3



1.  Now tooltips show "X, Y" when moving and "W x H" when sizing.

2.  Optimized several graphics-related routines.  Resizing and the such should

    be faster now.

3.  Added experimental "drag-add" method when adding new controls.  Doesn't 

    work for labels/links if auto-fit is enabled by default.  This may not work 

    perfectly yet.

4.  Fixed another stupid tab bug.  Didn't really hurt anything, it would just 

    give an error on exit.

5.  Got rid of some unnecessary flicker when clicking on the controls.

6.  Greatly improved box controls.  They are faster and smarter, they no longer 

    can cover up any type of controls but other boxes.

7.  Optimized handling of tool tips.  Overall, stuff should be a bit smoother.

8.  Fixed 'align' property being disabled.  Don't know if this was in beta 2, 

    but I think it was and it's fixed now.

9.  Moved to a tabbed-dialog instead of a list window for the preferences.

10. Tooltips show the correct mode (pixels/dbus) now.

11. Moved position above size in the object inspector.

12. Fixed numerous issues relating to locking controls.  Now tooltips show up in

    the right place, the correct border is shown, and sizing arrows no longer 

    appear (since you can't size the control while it's locked.)

13. Fixed creation order buttons (up/down) being enabled or disabled in the 

    wrong situations.

14. [Removed]

15. Made real use of the work-area.  Dialogs are now child controls and cannot 

    be taken outside the work-area.  This fixes numerous things, such as windows

    oddly being hidden behind the main form and the flickering that sometimes 

    occurred when activating Dialog Studio.

16. Removed 'Update' button in object inspector.  Now you can use Enter to save

    the changes or Escape to discard them.  If you tab out of the control, it

    will saves the changes automatically.

17. Enabled alternate font for Dialog Studio. (Note: this is not to be confused 

    with the font used for mIRC dialogs, since that is not configurable in

    mIRC.)

18. Added OK, Cancel, and Apply to configuration dialog.

19. Enabled the main menu, although some of it is still disabled.

20. Renamed some of the windows, for consistency.

21. Renamed EXE file to dstudio.exe.  If you have an older version, you can

    delete DialogStudio.exe.

22. Implemented dialog preview in mIRC via DDE.  This is done by loading a temp.

    script, showing the dialog (in the on load of the script), then unloading

    the script and removing it.  The unload/removal process works even if the

    dialog table is invalid.  If you press the preview button and nothing

    happens, most likely, there is an error in your dialog table, such as an

    invalid icon or no OK/Cancel button.  I will try to work more error-checking

    into Dialog Studio, but for right now, if you press preview and nothing

    happens, check your mIRC for the error.  Error or not, the temporary script

    should always be cleaned up.

23. Added the ability to create and save projects in Dialog Studio (finally!).

    Beta 3 is going to be a pretty good release. :P~

24. Improved DBU support.  If you design a dialog in pixels, then convert it to

    DBUs, all of the controls will be 'adjusted' to the correct DBU coordinates.

    This should make the dialog more closely resemble the end result in mIRC,

    rather than being off by a pixel or two.  Might cause slight problems with

    perfect size/placement of icons, still investigating. Grid now works with 

    DBUs, displaying and snapping correctly.  For example, if you have your grid

    set at X=5, Y=5 and were using DBUs, then the controls would snap to every 5

    DBUs, not pixels.

25. Fixed top-row sizing handles not working with tab controls, and not being

    able to move the control while clicking/dragging near the top of the tab

    control.

26. Improved drop-down box height handling.

27. Fixed several minor graphical things here and there.

28. Removed Update button from tab caption property.  Updates on the fly like

    the other controls.

    



3/20/2001 - beta 2



1.  Toolbar buttons for create order, tools, inspector reflect state of window, 

    eg. down if visible, up if hidden.

2.  Fixed lame bug when deleting tabs with child controls on them.  I originally

    fixed this but reintroduced my own bug when I modified the way tabs are 

    handled. =P

3.  Made changes to the object inspector, now can't select the tab page for tab 

    control.  Also, can't set text property for controls that don't have text, 

    eg. icons, lists, etc.

4.  Optimized handling of the active control.

5.  If grid snap on move is enabled, new controls that are added will snap their

    upper-left to the nearest point.
```

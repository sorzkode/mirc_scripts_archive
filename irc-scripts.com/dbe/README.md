# 1.Added TAB support! Note: groups v2.3 by a green box

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

**Script Name:** 1.Added TAB support! Note: groups  
**Version:** 2.3  
**Category:** bot  
**Authors:** a green box  
**Email(s):**   
**Website(s):** [http://biz.ico'](http://biz.ico'), [http://www.borg.com/~chuck](http://www.borg.com/~chuck)  
**Release Year:** 1999  
**Tags:** toolbar, dialog, popup, timer, alias, bot, interface  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/dbe/dbe.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "dbe.zip",
  "file_count": 19,
  "file_types": [
    ".bmp",
    ".mdt",
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1999-12-14",
  "min_file_date": "1999-05-20",
  "total_size": 118.71,
  "largest_file": "dbe.mrc",
  "text": [
    "dbevers.txt",
    "dbe.txt"
  ]
}
```

## 📋 Text Content (from dbevers.txt)

```text
Planned Enhancements



1.Use keypress events so user can use keys like DEL, CTRL-C, CTRL-V, etc.

2.Ability to copy/paste groups.

3.Support more than one dialog table in a file.

4.Support size -1 -1 to center dialogs

5.Round-off errors are making it difficult to show accurate sizes of some

  controls when using option dbu.  Be sure to use the Test feature to ensure

  your dialog looks like what mIRC shows.



10/30/99 - dbe v2.3



1.Added TAB support!  Note:  groups are not supported on tabs yet.



10/13/99 - dbe v2.2



1.Fixed bug: center and right justified text wasn't being displayed correctly.

2.Fixed bug: word wrapping was incorrect.  Now it is BUT it doesn't always

  display like mIRC displays it.  I can't seem to get $width() to report

  correct values.  As it stands I believe it is quite usable, just be sure to

  use the Test feature to ensure everything looks ok.



10/12/99 - dbe v2.1



1.Was writing tab style with no tab id.  Note: The Tab feature is still

  not supported.

2.Wasn't showing full size of combo box if drop style was set.

3.When you move an object a copy of it stays at its original location until

  you release the mouse button.  This will help you judge how far you are

  moving the object relative to its original location.

4.No longer repaints entire dialog when you single click on an object and

  don't move it.  Still repaints if you single click to resize it though.

5.Fixed bug: If you deleted an object that was encompassing other objects

  (such as a box) the object and all encompassed objects would disappear.  The

  encompassed objects were not deleted, they just didn't show up until you did

  a Refresh.



9/26/99 - dbe v2.0



1.Fixed another variable leak.

2.Fixed size of edit window, was too narrow.

3.More support for option {dbu}.  When DBE reads a table file (.mdt) with an

  option dbu statement it converts all x y w h to pixels.  When it saves a

  table file it converts all x y w h to dbu's if you've selected the dbu

  option in the Dialog Properties dialog box.  I haven't come up with a dbu to

  pixel conversion formula yet.  Through trial and error I found that one dbu

  is equal to 2.5 pixels on my systems (one with a screen resolution of 1152 x

  864, the other is 1280 x 1024).  If you use the DBE Test function the

  resulting dialog box should look the same as the edit window as far as width

  and height and the relative locations and sizes of the controls.  If it

  doesn't then you might try changing the conversion constant from 2.5 to

  other values.  The constant is stored in %dbe.dbu and is set in the alias

  called "reinitialize" in the dbe.mrc file.  If you bother to do this then

  please send me an email stating your screen resolution and the constant that

  works for you and I'll incorporate it in the next version of DBE. NOTE: mIRC

  v5.61 seems to have a bug in that the x and y coordinates in the size

  statement seem to be in pixels all the time regardless of the option

  statement setting so for now DBE does not translate them.

4.I moved all of the dialog tables from script files to their own individual

  .mdt files and converted them to use dialog box units (option dbu).  Please

  be careful not to change them!

5.Updated the information file dbe.txt.

6.If you move the mouse off the edit window while trying to group some objects

  and unclick DBE can't see the unclick event and would eventually get

  confused.  So now, when it see you leave the edit window it aborts the

  grouping process.

7.Show dialog box title in edit window title bar.

8.Sets option dbu as the default for new dialog tables.

9.Support style options for icons.





9/24/99 - dbe v1.9



1.You can move or delete multiple objects now.  Just left click outside

  of any object and drag the mouse.  A red box will appear and grow to

  encompass objects. Release the button and the encompassed objects will be

  surrounded by a green box which indicates a group object.  You can move the

  group object around just like any other object.  You must ungroup the group

  object to restore the grouped objects. Just right click on the group object

  and select Ungroup from the popup menu. DBE only supports one group at a

  time for now and you CAN'T copy/paste groups or double click on them.

2.Requires mIRC v5.61 now.

3.Save and Save As were changing the id's of dialog objects unnecessarily.

4.DBE now numbers objects starting with one rather than zero when creating a

  new table.

5.Support mIRC v5.61's new dialog option {dbu, pixels} statement but only the

  pixels type is currently supported. I'm not sure how to support the dbu

  type.  On my system each dbu is 2.5 pixels but I don't know why yet.

6.Support horizontal scrollbars in list and combo boxes.

7.Fixed a few more variable leaks.





9/5/99 - dbe v1.8



1.Changed display of text controls to more accurately reflect how mIRC

  displays them.



8/28/99 - dbe v1.7



1.Fixed a
```

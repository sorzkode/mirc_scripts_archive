# da13%5bte%5d v1.3 by Alchemst

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

**Script Name:** da13%5bte%5d  
**Version:** 1.3  
**Category:** addon  
**Authors:** Alchemst  
**Email(s):**   
**Website(s):** [http://members.nbci.com/dataagent/](http://members.nbci.com/dataagent/)  
**Release Year:** 2001  
**Tags:** gui, dialog, popup, timer, addon, highlight, alias, popups, interface  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/da13%5bte%5d/da13%5bte%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "da13%5bte%5d.zip",
  "file_count": 7,
  "file_types": [
    ".bmp",
    ".dll",
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2001-03-09",
  "min_file_date": "2001-03-09",
  "total_size": 278.18,
  "largest_file": "da13/DCB-MT.bmp",
  "text": [
    "da13/DA-Readme.txt"
  ]
}
```

## 📋 Text Content (from da13/DA-Readme.txt)

```text
                                      DataAgent v1.3:  Terminal Edition

    /\ /\/\    File/memory utility for mIRC

   /  //  /  //  /  ///  /    By Alchem^st

  /  /  /  /  /  /  /  /  /  /  /     DLL courtesy of DragonZap

 /  /__/  /  //  /  /  //  /      March 9, 2001

/        /  /  /  /  /  /  /  /       http://members.nbci.com/dataagent/

                               

    /\///\    ///

   /  //  /  /\ /  //   \  / /  / 

  /  /  /  /  /    /   / /\  \/ /  /

 /  //  /  //  // /  \   /  /

/  /  /  /       /   / /    \ /  /

         





INSTALLATION:



1) Extract the files to your mIRC directory.  The .mrc, .dll, and .bmp files must be in the same directory.



2) Launch mIRC and type "/load -rs <path>\DataAgent.mrc" without the quotes.  <path> represents the path from within your mIRC directory to the DataAgent.mrc file.  For example, if you extracted your files to C:\mIRC\da13\, you would type /load -rs da13\DataAgent.mrc.  This is not a case-sensitive operation.



Note1:  You will be asked if you want to run initialization commands; answer "Yes".

Note2:  DataAgent will function properly regardless of whether your mIRC directory, or its path, contains a space.

Note3:  DataAgent requires the use of a fixed-width font.  Common fonts in this category are Fixedsys, Courier (including the TrueType version, Courier New), Terminal, IBMPC, and Lucida Console.



-



Question:  What is DataAgent and what does it do?



Answer:  DataAgent is the ultimate file/memory utility for mIRC[, bar none].  It can retrieve data on files, memory, disks, and loaded scripts.  Additionally, users are able to modify file attributes, load scripts with a convenient GUI (graphical user interface), and open Windows Explorer to a desired directory via a simple command.  The components of DataAgent are outlined in more detail below.



File Specs:  This feature specializes in retrieving file size, although modification date is also displayed.  It opens up your mIRC directory where you can select a file, and, for added convenience, DataAgent remembers the directory you last visisted.

COMMAND:  /filespecs



Drive Specs:  This portion focuses on basic disk analysis.  It scans a specified drive and displays data such as total space, free space, type, etc.  This is a powerful feature that utilizes DLL scripting and its own seperate dialog.  When using this feature, you are asked to select a drive from either A, C or D.  However, there is an editbox where you may enter a drive letter not listed.

COMMAND:  /drivescan



Memory Stats:  This is another powerful feature that utilizes the included DLL file to display statistics such as memory load and total physical memory.

COMMAND:  /memstats



File Attributes:  Once again the power of DLL scripting is unleashed, this time to allow you to view and edit file attributes.  To modify attributes, you must enter the path & file/dir (ex. c:\windows\system.ini), check the desired attributes and click "Apply".  To simply view a directory for attributes, you must specify the directory in the editbox (ex. c:\windows) and click "View".  If a file is specified but no attributes are selected, DataAgent inserts the attribute "n" which declares the file as "normal".  Something else to note is that when you specify a directory in the editbox and hit the "Enter" key, DataAgent automatically views the attributes in the directory.  If, on the other hand, you specify a path and specific file, DataAgent attempts to apply all attributes checked (or n if none at all).  To open a file displayed in the Attributes output window, double-click on it.  The file will be opened with your default viewer for the extension at hand.  If no application is associated with the extension, it will not be opened.



Attributes Accessible Through DataAgent:



h - hidden -> the file or directory is hidden and not listed in a normal directory listing	

a - archive -> the file or directory is archived

r - read-only -> the file or directory can be read but not written to or deleted

s - system -> The file or directory is part of, or is used exclusively by, the operating system

n - normal -> the file or directory has no other attributes set

COMMAND:  /attrib



DataAgent Console:  The dialog where File Specs, Drive Specs, Memory Stats, Atttributes, and Scripts Loaded can be quickly accessed.  This interface now supports changeable backgrounds.  Two such "skins" ship with DataAgent, and you are also able to specify your own background (bitmap) file via MenuBar + DataAgent + Console + Backdrop + Custom or by using the /dcback command.  The bitmapped file (.bmp) must be in the same directory as DataAgent.  To prevent DataCon from using a backdrop, simply click on "None" in the MenuBar popups under Backdrop.

COMMAND:  /datacon



 The /scripts command outputs the number of loaded scripts, their name, and path to a window.  Double-clicking on a file will open it in your default text viewer, usually Notepad.



 The /lo
```

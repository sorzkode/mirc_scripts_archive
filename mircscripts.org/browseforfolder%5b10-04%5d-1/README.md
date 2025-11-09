# browseforfolder%5b10-04%5d-1 v1.0 by Unknown

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

**Script Name:** browseforfolder%5b10-04%5d-1  
**Version:** 1.0  
**Category:** bot  
**Authors:** Unknown  
**Email(s):** <shredplayer@email.com>  
**Website(s):**   
**Release Year:** 2004  
**Tags:** dialog, bot, interface  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/browseforfolder%5b10-04%5d-1/browseforfolder%5b10-04%5d-1.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "browseforfolder%5b10-04%5d-1.zip",
  "file_count": 4,
  "file_types": [
    ".cpp",
    ".def",
    ".dll",
    ".txt"
  ],
  "max_file_date": "2004-10-04",
  "min_file_date": "2004-10-01",
  "total_size": 24.56,
  "largest_file": "BrowseForFolder.dll",
  "text": [
    "BrowseForFolderREADME.txt"
  ]
}
```

## 📋 Text Content (from BrowseForFolderREADME.txt)

```text
BrowseForFolder.dll

Nick: Shredplayer

Email: shredplayer@email.com







BrowseForFolder - This brings up the Browse for Folder dialog box and returns the selected path.



syntax: $dll(BrowseForFolder.dll,BrowseForFolder,Handle > Directory > Switch > Title)



all arguments are optional and if you want to omit parameters just leave it empty.

ex: $dll(BrowseForFolder.dll,BrowseForFolder,Handle >  >  > Title)







Non- resizable:



ex: //echo $dll(BrowseForFolder.dll,BrowseForFolder,$window(@name).hwnd > C:\Program Files > s >  Choose a Directory to Browse:)



Resizable:



ex: //echo $dll(BrowseForFolder.dll,BrowseForFolder,$window(@name).hwnd  > C:\Program Files > d > Choose a Directory to Browse:)







ARGUMENTS:



Handle:

		Can be window or dialog handle.

Directory:

		Can be any valid directory, if directory is invalid it selects the current directory.



Switches:



	e	Include an edit control in the browse dialog box that allows the user to type the name of an item.

	n	Do not include the New Folder button in the browse dialog box, this is valid only if "e" and "d" is used.

	d	Use the new user interface. Setting this flag provides the user with a larger dialog box that can be resized. 

	u	Use the new user interface, including an edit box. This flag is equivalent to "e" and "d".

	v	If user typed an invalid name into the edit box of the browse dialog box it will keep the dialog displayed.

	f	The browse dialog box will display files as well as folders.

	s	Include a status area in the dialog box, this is valid only if "e" and "d" is not used.

	h	When combined with "d", adds a usage hint to the dialog box in place of the edit box. "e" overrides this flag.

	A	If the specified handle is ommited or null, the active window will be the parent window.

	M	If the specified handle is ommited or null, the main mIRC window will be the parent window.



		If the handle is ommited null and both switch isn't specified, the parent window wil be null and the dialog

		will show on desktop.

		



		Note: some switch will override others.



Title:

		Dialog title text.





The idea behind the extra space is for you to able to pass variables or identifiers as parameters.

but if you use only plain text extra space is not needed except for the handle.



ex: //echo $dll(BrowseForFolder.dll,BrowseForFolder,$window(@name).hwnd > $mircdir > $switches > $titletext)



or



ex: //echo $dll(BrowseForFolder.dll,BrowseForFolder,$window(@name).hwnd >C:\Program Files\mIRC>d>Choose a Directory to Browse:)





Version - returns the DLL Version.



ex: //echo $dll(BrowseForFolder.dll,BrowseForFolder,Version,.)
```

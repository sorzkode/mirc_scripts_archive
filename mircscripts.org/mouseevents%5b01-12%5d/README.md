# mouseevents%5b01-12%5d v7.0 by  fugitive

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

**Script Name:** mouseevents%5b01-12%5d  
**Version:** 7.0  
**Category:** war  
**Authors:**  fugitive  
**Email(s):** <evitiguf@yahoo.com>  
**Website(s):** [http://vents.dll](http://vents.dll)  
**Release Year:** 2005  
**Tags:** alias  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/mouseevents%5b01-12%5d/mouseevents%5b01-12%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "mouseevents%5b01-12%5d.zip",
  "file_count": 7,
  "file_types": [
    ".cfg",
    ".dll",
    ".dof",
    ".dpr",
    ".res",
    ".txt",
    ".~dpr"
  ],
  "max_file_date": "2005-01-12",
  "min_file_date": "2005-01-11",
  "total_size": 100.47,
  "largest_file": "mouseevents.dll",
  "text": [
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
mouseevents.dll

by; fugitive

email; evitiguf@yahoo.com



Mouseevents.dll can move your mouse cursor wherever you specify to move

to.



It can also simulate a left and right click of the mouse.



UPDATE:  You can now double click the left and right mouse buttons

with a call to the DLL.  Also you can call the dll to click and drag

the left or right mouse buttons, but doesn't show the movement, unless

you incorporate my Moving Mouse alias into the mix, but go for it if

you want to see actual movement.  See below for details of use.



UPDATE:  Mouseevents.dll can now hide/show the mouse cursor in the

mIRC windows.(below for example)



I'm not sure of a really good use for this, but one way i thought of

was if you had a '?' button anywhere for like where something is, you

could point it out with the mouse cursor, then if you wanted or needed

to click to open another menu, you could also do that.  Just another 

dll for mirc. :)



To Use:



Put the dll somewhere where you will know where it is and access it

through the /dll command. (c:\mirc\, or c:\mirc\dlls\ for example)

-

To click and drag the left mouse button:

/dll c:\path\to\mouseevents.dll dragl X Y

change the directory to where you moved the dll, and change X and Y

to the X and Y coordinates you want the mouse to move to



To click and drag the right mouse button:

/dll c:\path\to\mouseevents.dll dragr X Y

change the directory to where you moved the dll, and change X and Y

to the X and Y coordinates you want the mouse to move to



To double click the left mouse button:

/dll c:\path\to\mouseevents.dll dlclick NA

change the directory again to the dll file, NA is used for nothing, but

you will have to have it there



To double click the right mouse button:

/dll c:\path\to\mouseevents.dll drclick NA

change the directory again to the dll file, NA is used for nothing, but

you will have to have it there



Then to move the mouse cursor;

/dll c:\path\to\mouseevents.dll movemouse X Y

change the directory to where you moved the dll, and change X and Y

to the X and Y coordinates you want the mouse to move to



To simulate a left-click;

/dll c:\path\to\mouseevents.dll clicklmouse NA

change the directory again to the dll file, NA is used for nothing, but

you will have to have it there



To simulate a right-click;

/dll c:\path\to\mouseevents.dll clickrmouse NA

change the directory to the dll file again, NA is used for nothing here

also, but needs to be there



To hide the mouse cursor;

/dll c:\path\to\mouseevents.dll hidemouse NA

change the directory to the dll file, NA is used for nothing here, but

needs to be there



To show the mouse cursor;

/dll c:\path\to\mouseevents.dll showmouse NA

change the directory to the dll file, NA is used for nothing here also, 

but needs to be there



That's all.
```

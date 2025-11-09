# mfunc%5b06-07%5d v1.0 by Unknown

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

**Script Name:** mfunc%5b06-07%5d  
**Version:** 1.0  
**Category:** bot  
**Authors:** Unknown  
**Email(s):** <ejs@blueyonder.co.uk>  
**Website(s):** [http://xcl.cjb.net](http://xcl.cjb.net)  
**Release Year:** 2004  
**Tags:** highlight, bot, interface  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/mfunc%5b06-07%5d/mfunc%5b06-07%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "mfunc%5b06-07%5d.zip",
  "file_count": 3,
  "file_types": [
    ".dll",
    ".pas",
    ".txt"
  ],
  "max_file_date": "2004-06-07",
  "min_file_date": "2004-06-07",
  "total_size": 21.52,
  "largest_file": "mFUNC.dll",
  "text": [
    "mFUNC_README.txt"
  ]
}
```

## 📋 Text Content (from mFUNC_README.txt)

```text


mFUNC.dll  by IceB0x (ejs@blueyonder.co.uk)

---------



A Dll of miscellaneous Graphical/Picture Window related 

functions for mIRC.





SYNTAX: /dll <FILENAME>,<FUNCTION>,<PARAMETERS>

        $dll(<FILENAME>,<FUNCTION>,<PARAMETERS>)





mFUNC.dll Functions:

********************



SCREENSHOT

----------

Parameters: <DESKTOP|ACTIVE> <FileName>



 - If you use the DESKTOP parameter, A

   screenshot of the Desktop will be placed

   in the specified file. The full file

   path must be specified.

   

   If you use the ACTIVE parameter, a screenshot

   of the Active (foreground) window will be 

   saved.



NOTE: In this version, Only Bitmap files

      can be saved. However, you can convert

      these images to JPG by using the

      MOVEWINDOW function. See

      the example script at the bottom of this

      file.



example: //echo -a $dll(mFUNC.dll,SCREENSHOT,ACTIVE c:\mirc\sshot.bmp)





SETLAYER  

--------

Parameters: <HWND> <0-255> [RGB Value]



 - Sets the Opacity for any top level window.

   You pass the HWND of the window, and a number

   between 0-255. 0 = full transparency.

   Instead of a number you can also use the word 

   'off' to disable transparency.



   You can also specify an RGB value as a 3rd

   parameter. This will make pixels of that color 

   transparent only. 

            

   Note: This function is for Win2K/Xp only.



examples: //echo -a $dll(mFUNC.dll,SETLAYER,$window(@somewindow).hwnd 150)

          //echo -a $dll(mFUNC.dll,SETLAYER,$window(@somewindow).hwnd 150 $rgb(201,34,23))





ISFONTSMOOTH

------------

Parameters: <.>



- Returns $true or $false if Windows Font

  smoothing is enabled or not.

  

example: //echo -a $dll(mFUNC.dll,ISFONTSMOOTH,.)



  

GETCOLOR 

--------

Parameters: <SYSTEM COLOR NAME>



 - Returns an RGB value for the specified system color.



The Parameter for GETCOLOR must be one of the following:



Parameter:               Description:



DDKSHADOW	         Dark shadow for three-dimensional display elements.

3DFACE                   Face color for three-dimensional display elements.

COLOR_BTNFACE	         Face color for three-dimensional display elements.

3DHILIGHT                Highlight color for three-dimensional display elements (for edges facing the light source.)

3DHIGHLIGHT              Highlight color for three-dimensional display elements (for edges facing the light source.)

BTNHILIGHT               Highlight color for three-dimensional display elements (for edges facing the light source.)

BTNHIGHLIGHT             Highlight color for three-dimensional display elements (for edges facing the light source.)

	

3DLIGHT    	         Light color for three-dimensional display elements (for edges facing the light source.)

3DSHADOW                 Shadow color for three-dimensional display elements (for edges facing away from the light source).

BTNSHADOW	         Shadow color for three-dimensional display elements (for edges facing away from the light source).





ACTIVEBORDER	         Active window border.

ACTIVECAPTION	         Active window caption.

APPWORKSPACE	         Background color of multiple document interface (MDI) applications.

BACKGROUND               Desktop.

DESKTOP                  Desktop.

	

BTNTEXT	                 Text on push buttons.

CAPTIONTEXT	         Text in caption, size box, and scroll bar arrow box.

GRAYTEXT	         Grayed (disabled) text. This color is set to 0 if the current display driver does not support a solid gray color.

HIGHLIGHT	         Item(s) selected in a control.

HIGHLIGHTTEXT	         Text of item(s) selected in a control.

INACTIVEBORDER	         Inactive window border.

INACTIVECAPTION	         Inactive window caption.

INACTIVECAPTIONTEXT	 Color of text in an inactive caption.

INFOBK	                 Background color for tooltip controls.

INFOTEXT	         Text color for tooltip controls.

MENU	                 Menu background.

MENUTEXT	         Text in menus.

SCROLLBAR	         Scroll bar gray area.

WINDOW	                 Window background.

WINDOWFRAME	         Window frame.

WINDOWTEXT	         Text in windows.



example: //echo -a $dll(mFUNC.dll,GETCOLOR,MENUTEXT)





This .dll was made with Borland Delphi 6 and compressed with UPX. Source code is available on request.



22.01.03
```

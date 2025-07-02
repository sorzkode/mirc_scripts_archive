# RR-Paint v3.0 by EAE (Emil A Eklund)

## ⁉️ This is part of an mIRC script archiving project. Please read the [README](https://github.com/sorzkode/mirc_scripts_archive/blob/main/README.md) file located in the [main project repository](https://github.com/sorzkode/mirc_scripts_archive) for more information / disclaimers  

## ⚠️ Important Disclaimers

- **I am not the original author** of this script and do not claim any ownership or authorship
- **Historical Preservation Only**: This script is archived for historical and educational purposes
- **No Support**: I cannot provide support, updates, or fixes for this script
- **Not Thoroughly Tested**: The script has not been thoroughly tested in modern environments
- **Use at Your Own Risk**: Any use of this script is entirely at your own risk
- **Potentially Outdated/Incompatible**: This script was designed for much older versions of mIRC and Windows
- **Educational Value**: This archive serves to document the evolution of IRC scripting and early internet culture

## 🔍 Script Information (metadta parsed from files)

**Script Name:** RR-Paint  
**Version:** 3.0  
**Category:** addon  
**Author(s):** EAE (Emil A Eklund)  
**Email(s):** <msandin@hotmail.com>, <eae@ircweb.net>, <Plaza@A-Vip.com>  
**Website(s):** [www.mirc.co.uk](www.mirc.co.uk), [www.ircweb.net/eae](www.ircweb.net/eae)  
**Release Year:** 1998  
**Tags:** timer, plugin, alias, toolbar, dialog, addon, interface, nicklist, paint, draw  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990910142649_rr-paint3/19990910142649_rr-paint3.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990910142649_rr-paint3.zip",
  "file_count": 9,
  "file_types": [
    ".bmp",
    ".mrc",
    ".rrh",
    ".rrp",
    ".txt"
  ],
  "max_file_date": "1998-04-20",
  "min_file_date": "1998-01-18",
  "total_size": 120.27,
  "largest_file": "rr-paint3.mrc",
  "text": [
    "rr-paint.mrc",
    "rr-paint3.mrc",
    "rr-paint1.mrc",
    "readme.txt",
    "rr-paint2.mrc"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## readme.txt

```text
================= RR-Paint 3.0 =================

Author:		EAE (Emil A Eklund)
E-Mail:		eae@ircweb.net
Web:		www.ircweb.net/eae

================================================
Readme written by Plaza (Regev Schweiger)


------------
What's that?
------------

   RR-Paint 3.0 is a paint program, much
like paintbrush, with the ability to connect to other users
of the script and draw a picture with them.

------------
Requirements
------------
   
   RR-Paint is a script written for mIRC 5.31 only (Higher 
versions might work, though). 
   16bbp colors and above are highly recommended (RGB).

-----
Usage
-----

To install:

   1. Unzip the file RR-paint3.zip, to your mIRC directory 
      preferred.
   2. Open mIRC.
   3. From the command line on any window, type:

	/load -rs c:\mirc\RR-paint.mrc

      Replace the c:\mirc with the path to the unzipped 
      files.

   4. When mIRC asks whether to perform the script's automatic 
      commands, answer 'Yes'.

To activate:

   * Type in the command line from any window:

	/Paint

   * You can also activate it from the menubar (Paint).

--------
Features
--------

The left bar:

1.	Freehand lines 
	--------------
	Click the dot button (Upper first) to draw freely on
	the surface. Just click and drag to create lines.

2.	Straight lines
	--------------
	Click on the line button (Upper second) to draw 
	straight lines on the surface. Click and drag or
	Click one point to another.

3.	Rectangle
	--------
	Click on the square button (Upper third) to draw
	rectangles of all kinds. To do such you ought to
	click a point and drag to the wanted point (The
	rectangle's ending). 
	When clicking the square button, two more buttons
	will appear - Filled and outlined. To choose 
	whichever you want just click on the wanted option
	and draw the rectangle. 	

	
4.	Circle 
	------
	Click on the circle button (Upper fourth) to draw
	a circle or an ellipse.
	The using is similiar to the rectangle's drawing,
	but this one draws a cirlce or an ellipse. Those
	are filled only (mIRC doesn't support outlined
	ellipses yet).

5. 	Text
	----
	Press the 'A' button (Upper fifth) to enter text
	at a given point. Click the point where you want
	the text to appear. 
	A dialog box will open, asking you for the font, 
	size and text itself.

6.	Fill
	----
	Click the 'Fill' button (Upper sixth) to fill
	an area with the chosen colour. To do so, just
	click on an area the RR-Paint will fill all the
	space with the same colour.

7. 	Line width selectors
	--------------------
	The set of lines at the buttom of the left bar 
	is used to select to wanted line width. (The lines
	refer to freehand, straight lines, rectangles and 
	circles. 

The buttom bar:

8. 	Clear
	-----
	Click the 'Clear' Button to clear the whole
	drawing surface.

9. 	About
	-----
	Click the 'About' button to view basic information
	about RR-Paint 3.0 and its creators.

10.	Undo
	----
	Click the 'Undo' button to cancel the last action
	(Exclusive to RR-Paint 3.0).

11.	Special
	-------
	Click the 'Special' button to handle plugins and
	filters to RR-Paint 3.0.

12. 	Close
	-----
	Click the 'Close' button to close the window.

13.	Connections
	-----------
	Click on the 'Connections >>>' button to open a window
	that handles the connections (Who is connected to you,
	who are you connected to etc.).

The upper bar:

14.	Colour Index
	------------
	The script includes a 3177 colours index, which 
	allows you to choose various colours.
	To choose a colour move the mouse over the index.
	The colour you are on is shown more clearly on the
	right of the index, with their RGB (Red-Green-Blue) value.
	To choose a colour, left-click or right-click it.

15.     Current Colours
	---------------
	The current colours (Primary and Secondary) are shown
	at the left of the index, left and right respectively.
	Click on one of the color boxes to open a color selection
	window with 15 standard colors.

16.     Drag and Move
	-------------
	Move your mouse above the gray 'RR Paint 3.0 by EAE'
	text to move the window. Click and drag to move the
	window. Double click to restor its default position.

Generally:

17. 	Right Click
	-----------
	As explained, RR-Paint 3.0 supports right click 
	(Secondary) colour. You use it exactly the same as
	the primary (Left click) colour, except you cannot 
	drag it. To make rectangles and circles, right click
	the wanted point, and then move to the ending point, 
	and click again.
```

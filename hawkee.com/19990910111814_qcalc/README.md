# Quick Calc v2.00 by Daryth

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

**Script Name:** Quick Calc  
**Version:** 2.00  
**Category:** addon  
**Author(s):** Daryth  
**Email(s):** <paulc@ncia.net>  
**Website(s):** [unknown](unknown)  
**Release Year:** 1998  
**Tags:** timer, alias, color scheme, popup, addon, interface, calculator  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990910111814_qcalc/19990910111814_qcalc.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990910111814_qcalc.zip",
  "file_count": 4,
  "file_types": [
    ".bmp",
    ".ini",
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1998-05-30",
  "min_file_date": "1998-04-12",
  "total_size": 53.44,
  "largest_file": "qcalc.mrc",
  "text": [
    "qcalc.txt",
    "qcalc.ini",
    "qcalc.mrc"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## qcalc.txt

```text
------------| Quick Calc v2.00a for mIRC 5.31 |------------
                         by Daryth

1. [Table of Contents]

1) Table of Contents
2) About Quick Calc
3) Loading Quick Calc
4) What's New?
5) Things you should know
6) Contact Information


2. [About Quick Calc]

   Quick Calc is a calculator for mIRC 5.31. It does all normal 
calculations like addition, subtraction, multiplication, and division, 
and exponentials. Quick Calc also does trig functions in both Radians 
and Degrees, Natural & Common Logs, Factorials, and has Graphing capabilities
with Tables!

3. [Loading Quick Calc]

   To load Quick Calc simply start up mIRC 5.31 (wont work with previous 
versions) and type "/load -rs qcalc.mrc" , without the quotes of course. 
do not load qcalc.ini in mIRC this is the settings file for Quick Calc and
not the actual script itself.

4. [What's New in v2.00 & v2.00a]

   1.   Whole New Interface! Totally Redesigned to fit v2.00's needs new buttons
      have been added to house the new features.

   2.   Graphing Support!!! Cool eh? This may have some bugs in it so don't expect it
      to graph everything perfectly. The window is 30x10 and the cursor cordinates are
      displayed in the upper right.

   3.   Tables support in Graphing Mode... Enter a equation, hit graph, wait for it to 
      draw and then click on Table and it will show you the x value and what the 
      corrisponding y value is... Right Click in the tables window to change Min, Max, 
      and Scale.

   4.   About Window Removed

   5.   Radian and Degree Modes added
 
   6.   Options Window added for changing the Angle Type (Radians or Degrees) and the 
      Graph Drawing Speed... Increasing the graph drawing speed will make the graph 
      draw faster but will be less accurate and just plain wont look as nice (doesn't 
      effect table values)

   7.   Display Text 2 Color Added to the Display Window... This is for the history text
      and the x & y axis in Graphing Mode.

   8.   Recent Answer History!! Five previous answers are stored here.. If  you want to 
      clear the history just hold control and hit clear while in Normal Mode (not graphing
      anything). Click on the History Item to add it into the current equation.

   9.   Common and Natural Log buttons are added just use the Log and Ln buttons for them.

  10.   Factorial Support! just press the n! button and then the number and close the 
      parentheses.

  11.   Using Multiplication displays a multiply dot on the screen instead of a x so it doesn't
      get confused with the x variable

  12.   Division now uses � instead of a / ... it just plain looks better

  13.   Now graphs sin, tan, cos, log, and ln of x correctly.. (Only change in v2.00a)

  14.   A bug of other minor changes and additions that I'll let you find


5. [Things you should know]

   1.   Click on the the word "Display" above the display area (where the 
      numbers and answers appear, it will popup a window which will allow 
      you to change the default colors of Quick Calc. Just select the 
      item whose color you want to change (the selected item has a circle 
      to the left of it) and then click a color in the palette then close
      the Display Settings window for the changes to go into effect.
   
   2.   Clicking on Vars allows you to put in a prestored variable which you
      defined using the new stor button. Variables letters have to be a letter 
      between a and z no words, numbers, or double letters

   3.   Holding Control and Clicking Vars allows you to delete all the variables.

   4.   Click on Float will make the window a desktop window and then while it's a 
      Desktop window you can click dock to return it to the mIRC Taskbar.       

   5.   Clicking on Help will launch this file
   
   6.   Be sure you always close your parentheses when using functions like
      square root, and trig functions.

   7.   Last answer gets cleared when you enter a new problem after hitting 
      equals... if you want the problem to stay on the screen hold control 
      and then press equals and it will stay.

   8.   All answers are defaulted to being in Degrees unless you go to Options and 
      tell it otherwise

   9.   For Pi it puts 3.14 on the screen but when it does the calculations 
      it uses 3.14159265359

  10.   If you hold the control key and click on "Display" it will reset to the 
      standard color scheme and if you click on "About" while still holding down 
      control it will launch the url for my homepage :-) 

  11.   + � x buttons don't work unless there is something before them.

  12.   If for any reason you want to reset both the default colors and 
      window position you can just close mIRC, delete qcalc.ini (not qcalc.mrc)
      and then start mIRC up again, It should then say it's making a default
      qcalc.ini file.

  13.	Changing Graphing Speed under Options makes it draw faster but look less 
      accurate and worse.
  
  14.   Holding Control and Clicking Clear while in Normal Mode will clear the Recent
      answer history.

  15.   Holding Control and Clicking Graph while in Graphing mode will either redraw the
      current graph or if you put in a new equation will graph that on top of the old 
      one... useful for comparing things.

  16.   Only Graphs that fit in the the 30x10 window will show... currently there is no
      way of zooming out or in for that matter.
 
  17.   The X by the Graph button is NOT the multiplication button but actually the x 
      variable to graph stuff.. the multiplication button is to the right of the 3.

  18.   Clicking on a history item will insert it into the current equation.

 
6. [Contact Information]

I'm usually on Dalnet using the nick Daryth of course, and can be 
found in #hawkee.com or #mirc . 

Email: paulc@ncia.net


Humm.... guess that's it
  


```

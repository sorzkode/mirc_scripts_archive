# v.1.9.2%5b1108595373%5d v2 by many with their

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

**Script Name:** v.1.9.2%5b1108595373%5d  
**Version:** 2  
**Category:** channel  
**Authors:** many with their  
**Email(s):** <navarr@gmail.com>, <custserv@gtaero.net>  
**Website(s):** [http://navarr@gmail.com](http://navarr@gmail.com), [http://www.gtaero.net](http://www.gtaero.net)  
**Release Year:** 2005  
**Tags:** dialog, alias, weather  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mirc.net/v.1.9.2%5b1108595373%5d/v.1.9.2%5b1108595373%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "v.1.9.2%5b1108595373%5d.zip",
  "file_count": 5,
  "file_types": [
    ".db",
    ".gprg",
    ".ico",
    ".txt"
  ],
  "max_file_date": "2005-02-16",
  "min_file_date": "2005-02-07",
  "total_size": 29.51,
  "largest_file": "Calculator/calculator.gprg",
  "text": [
    "Calculator/Intro.txt",
    "Calculator/ReadMe.txt"
  ]
}
```

## 📋 Text Content (from Calculator/ReadMe.txt)

```text
[]------------------------------[]

[] GTAeroIRC Calculator Script

[]------------------------------[]

[]

[] .- 1.00 Introduction

[] |

[] |- 1.50 Loading the Script

[] |

[] |- 2.00 Commands

[] |

[] |-- 2.01 /calculator

[] |-- 2.02 /calculator RUN

[] |-- 2.03 /calculator README

[] |-- 2.04 /calculator UNINSTALL

[] |

[] |- 3.00 Calculator Functions

[] |

[] |-- 3.01 Negatives

[] |-- 3.02 Addition

[] |-- 3.03 Subtraction

[] |-- 3.04 Multiplication

[] |-- 3.05 Division

[] |-- 3.06 Pi

[] |-- 3.07 Percentages

[] |-- 3.08 Fractions

[] |-- 3.09 Absoloute Value

[] |-- 3.10 Powers

[] |-- 3.11 Roots

[] |-- 3.12 Grouping

[] |

[] |- 4.00 Whats Expected from Version 2?

[] |- 5.00 Copyright Information

[] `- 6.00 Contact Information

[]------------------------------[]

[]---> Section 1.00

[]---------------------

[] Introduction

[]------------------

[]  Calculators have been favored by many, with their huge usability

[] to do functions and help us with our equations.  They have been

[] scripted, however, only by an elite few.

[]------------------------------[]

[]---> Section 1.50

[]----------------------

[] Installing the Script

[]-------------------

[]  To Install this script, make sure that it is extracted to a location.

[] Remember that location, it is very important.  Once you have done that,

[] open up your mIRC program and type:

[] //load -rs $shortfn(<location>calculator.gprg)

[] Replacing, of course, <location> with the file directory you placed the

[] script in.  So, it should look like:

[] //load -rs $shortfn(C:\mirc\scripts\calculator\calculator.gprg)

[]

[] --> NOTE: Just an Example, it might not be installed to that directory.

[]------------------------------[]

[]---> Section 2.00

[]----------------------

[] Commands

[]-------------------

[] 2.01 - /Calculator

[]-----------------

[]  Typing the command, /calculator, opens up the introduction file,

[] which tells you just a basic little bit about the calculator program

[] itself.  The Introduction played, is the exact same as the introduction

[] that was played when the program was loaded.

[]-------------------

[] 2.02 - /Calculator RUN

[]----------------

[]  This command runs the calculator program. Basically, it just opens

[] the dialog that the calculator was programmed in.  Once that is open

[] you can use the calculator, just like an ordinary one, except for a few

[] details.

[]

[] -> Square Roots are Calculated AutoMatically before being put in.

[] -> Absoloute Value is Calculated AutoMatically before being put in.

[] and

[] -> Percentages are Calculated AutoMatically before being put in.

[]

[]  These objects may not be changed in the future, only time will tell.

[]-------------------

[] 2.03 - /Calculator README

[]----------------

[]  This command displays the ReadMe File (what you're reading now!) in a 

[] new window.

[]-------------------

[] 2.04 - /Calculator UNINSTALL

[]----------------

[]  This command brings up the Uninstall Information, which will allow you

[] to not only uninstall the program, but to delete all of the files it uses

[] including this readme!

[]------------------------------[]

[]---> Section 3.00

[]---------------------

[] Calculator Functions

[]------------------

[] 3.01 - Negatives

[]---------------

[]  Hit the Negative Key before entering a number to make it a Negative, it may

[] not be changed back.

[]-------------------

[] 3.02 - Addition

[]---------------

[]  Addition is the adding of two or more numbers together.  Just type in the

[] first number, the "+" button, and then the second number, etc until you have

[] all the numbers you wish to add.  Then press the "=" sign to get your answer.

[]-------------------

[] 3.03 - Subtraction

[]---------------

[]  Subtraction is the minusing of two or more numbers together.  Just type in the

[] first number, the "-" button (either of them work), and then the second number, etc 

[] until you have all the numbers you wish to subtract.  Then press the "=" sign to get

[] your answer.

[]-------------------

[] 3.04 - Multiplication

[]----------------

[]  Multiplication is the multiplying of two or more numbers together.  Just type in

[] the first number, the "x" button, and then the second number, etc until you have all

[] the numbers you wish to multiply.  Then press the "=" sign to get your answer.

[]-------------------

[] 3.05 - Division

[]----------------

[]  Division is the dividing of two or more numbers.  Just type in the first number, the

[] "" button, and then the second number, etc until you have all the numbers you wish

[] to divide.  Then press the "=" sign to get your answer.

[]-------------------

[] 3.06 - Pi

[]----------------

[]  Pi is called by the $full.pi parameter, which equals 3.1415926535897932384626433832795

[] To use Pi, just type the "Pi" button.

[]-------------------

[] 3.07 - Percentages

[]----------------

[]  To find the Percent of a numbe
```

# autobot4.2 v4.2 by Unknown

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

**Script Name:** autobot4.2  
**Version:** 4.2  
**Category:** protection  
**Authors:** Unknown  
**Email(s):** <herbal@satexas.com>  
**Website(s):**   
**Release Year:** 1997  
**Tags:** user levels, greet, kickban, dcc, rejoin, access list, flood protection, chat bot, timer, mass op, mass kick, protection, notify, bot, auto away, auto voice  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/xcalibre.com/autobot4.2/autobot4.2.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "autobot4.2.zip",
  "file_count": 6,
  "file_types": [
    ".1st",
    ".c",
    ".config",
    ".h",
    ".tcl"
  ],
  "max_file_date": "1997-03-14",
  "min_file_date": "1996-06-01",
  "total_size": 280.79,
  "largest_file": "autobot4.2.tcl",
  "text": [
    "README.1ST"
  ]
}
```

## 📋 Text Content (from README.1ST)

```text


  Hello there,



   If you are reading this than you are smarter than the

  average person. Thats good. Because without installing

  this correctly your bot:



   1) Can Flood off IRC.

   2) Will Not Recognize some Commands.

   3) Will not work correctly.

   4) "May" op people you dont want opped.

   5) "Could" Explode, killing several hundred people trying

      to enjoy IRC chat     =)







   Ok, heres the simple steps:



   1) get your copy of Eggdrop1.1.0 (ONLY this version+ will do)



   2) gunzip and tar -vxf the file, thus creating the eggdrop1.1.0

      directory with the source code.



   3) Edit autob41.tcl as stated in the TCL script itself





   4) place the eggdrop.h & main.c files that came with this tcl

      into the eggdrop1.1.0/src directory. type ./configure and

      then Make. Then place the autob41.tcl into the 

      eggdrop1.1.0/scripts directory.



   5) Edit your config file as desired and at the very bottom add

      a new line that says this: 

          

                     source scripts/autobot4.2.tcl





   6) Start your new improved Bawt.





    ** Remember, This TCL and the accompanying src files are

       for Eggdrop1.1.0+ Only!!!!!!!!!!





   Have fun from the Herbal Crew.







######## TROUBLESHOOTING #######################



Q: My bot wont compile. it says cant make eggdrop.h or something.



A: then when autobot was unzipped it read the eggdrop.h & main.c

   source files as EGGDROP.H & MAIN.C

   Go to your eggdrop1.1.0/src directory and cp EGGDROP.H eggdrop.h

   and cp MAIN.C main.c  and this should fix the problem.
```

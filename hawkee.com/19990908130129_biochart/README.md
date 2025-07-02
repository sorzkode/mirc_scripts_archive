# BioChart v1.2 by KiloVolt

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

**Script Name:** BioChart  
**Version:** 1.2  
**Category:** addon  
**Author(s):** KiloVolt  
**Email(s):** <unknown>  
**Website(s):** [http://www.missouri.edu/cc/pubs/news/1991-08/index.html#julian](http://www.missouri.edu/cc/pubs/news/1991-08/index.html#julian)  
**Release Year:** 1998  
**Tags:** popup, alias, charts, birthday, biorythm cycles, entertainment  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990908130129_biochart/19990908130129_biochart.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990908130129_biochart.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1998-02-07",
  "min_file_date": "1998-02-03",
  "total_size": 13.12,
  "largest_file": "biochart.mrc",
  "text": [
    "biochart.txt",
    "biochart.mrc"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## biochart.txt

```text
Instructions for BioChart v1.2, by KiloVolt, 1998

Put the file biochart.mrc in your mIRC directory
Type /load -rs biochart.mrc
Answer yes if the initialization caution window opens
You should see an opening message in the status window

The script adds the following to the status window popup:

BioRythm
---Chart
---BirthDate

Select BirthDate to enter the date for which the chart is to be drawn
Select Chart to start chart; it takes about 10 seconds or so to display

Close the window with the X box in upper right corner.

=========== What it does ===========
Charts the three main biorythm curves for any birthdate.

The Script calculates the number of days you have lived then divides
by the 23, 28, and 33 day periods corresponding to the physical, 
emotional, and intellectual biorythm cycles.  The remainder after division
is used to determine the starting point for each curve.

There are a lot of comments in the script to help understand it.

This script contains some useful date conversion routines and are based
on some FORTRAN code written by T. W. Edwards.  Credit and info on this
is stated in the load message screen and of course can be read from
the script directly.

After the chart is finished all variables are cleared except the birthdate.
If you unload the script you might want to delete the variable 
%BioBirthDStr from your variable list just for cleanup.

cya
KiloVolt 

```

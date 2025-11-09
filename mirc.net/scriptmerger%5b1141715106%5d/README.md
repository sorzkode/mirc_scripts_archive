# scriptmerger%5b1141715106%5d v1.00 by LemonButt

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

**Script Name:** scriptmerger%5b1141715106%5d  
**Version:** 1.00  
**Category:** addon  
**Authors:** LemonButt  
**Email(s):** <jeremy@mirc.net>  
**Website(s):**   
**Release Year:** 2006  
**Tags:** dialog, alias, addon  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mirc.net/scriptmerger%5b1141715106%5d/scriptmerger%5b1141715106%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "scriptmerger%5b1141715106%5d.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2006-03-07",
  "min_file_date": "2006-03-04",
  "total_size": 5.34,
  "largest_file": "scriptmerger.mrc",
  "text": [
    "scriptmerger_readme.txt"
  ]
}
```

## 📋 Text Content (from scriptmerger_readme.txt)

```text
Script Merger 1.00 Readme



================

Contact

================



Email: 	jeremy@mirc.net

IRC:	LemonButt on UnderNet



================

Installation

================



To install Script Merger:

	1. Extract files to mIRC directory or subdirectory.

	2. Type //.Load -rs $Shortfn($Findfile($Mircdir,scriptmerger.mrc,1)) in any mIRC window

	3. Type /SM in any window.



================

Usage

================



This addon will merge multiple remote and alias files into one remote file.  Alias files will be searched for aliases and prefixed with "Alias" so they function properly in alias files.  You can edit the prefix to localize alias files (Alias -l) or any other prefix by editing the SM.Prefix alias at the top of the script file.  Commenting code will insert begin/end comment lines for files.  Here is an example of a merged file using commented code:



;#################### Begin: file1.mrc ####################



----remotes----



;#################### End: file1.mrc ####################

;#################### Begin: file2.mrc ####################



----aliases----



;#################### End: file2.mrc ####################
```

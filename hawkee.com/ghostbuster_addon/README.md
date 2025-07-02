# Ghostbuster addon v1 by Hanzo

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

**Script Name:** Ghostbuster addon  
**Version:** 1  
**Category:** addon  
**Author(s):** Hanzo  
**Email(s):** <hanzo@rocketmail.com>  
**Website(s):** [http://idt.net/~shinobi9/)](http://idt.net/~shinobi9/))  
**Release Year:** 1997  
**Tags:** ghost killer, alias, popups, popup, addon, nickserv  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/ghostbuster_addon/ghostbuster_addon.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "ghostbuster_addon.zip",
  "file_count": 2,
  "file_types": [
    ".ini",
    ".txt"
  ],
  "max_file_date": "1997-05-12",
  "min_file_date": "1997-05-12",
  "total_size": 3.14,
  "largest_file": "ghoster.txt",
  "text": [
    "ghoster.txt",
    "ghoster.ini"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## ghoster.txt

```text
Ghostbuster Addon By: Hanzo (hanzo@rocketmail.com) 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Requirements: mIRC 5.02+ 
Ghostbuster v1.0
Addon: 2

The following addon will allow you to use the 'ghost' command with nickserv
automatically once a ghost is detected, and then changes your nick back to
the one previously ghosted. To get started unzip this file into your main 
mirc directory. i.e. c:\mirc\, Then paste the stuff below into the specified
sections and when have done that then just type /install and you will soon 
be prompted with the rest of the setup process. To activate the ghostbuster 
type /ghostbuster on or use the popups menu. To disable the ghostbuster just
type /ghostbuster off or use the popups menu.

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

This goes into the aliases section(ALT+A):

install .load -rs $mircdirghoster.ini


This goes into the popups section(ALT+P):

.ghostbuster
..toggle
...on:.enable #ghostbuster | set %ghostbuster on | echo -a $chr(3) $+ 2 $+ � Automatic ghost killer $chr(2) $+ activated. 
...off:.enable #ghostbuster | set %ghostbuster off | echo -a $chr(3) $+ 2 $+ � Automatic ghost killer $chr(2) $+ disabled. 
..-
..configure:set %ghost.password $$?="Enter nickserv password"


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-Hanzo (http://idt.net/~shinobi9/)

```

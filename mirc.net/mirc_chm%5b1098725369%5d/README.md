# mIRC Chm Help Enhancer v0.3 by Adrenalin from Moldova

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

**Script Name:** mIRC Chm Help Enhancer  
**Version:** 0.3  
**Category:** channel  
**Authors:** Adrenalin from Moldova  
**Email(s):** <adrenalinup+mirc@gmail.com>  
**Website(s):** [http://www.asachi.com/mirc_chm/](http://www.asachi.com/mirc_chm/)  
**Release Year:** 2004  
**Tags:** dialog, midi, sockets, wav, trigger, notify, alias, dcc  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mirc.net/mirc_chm%5b1098725369%5d/mirc_chm%5b1098725369%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "mirc_chm%5b1098725369%5d.zip",
  "file_count": 4,
  "file_types": [
    ".chm",
    ".db",
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2004-10-25",
  "min_file_date": "2004-10-24",
  "total_size": 343.13,
  "largest_file": "mirc.chm",
  "text": [
    "chm_version.txt"
  ]
}
```

## 📋 Text Content (from chm_version.txt)

```text
25/10/2004 - mIRC Chm Help 6.16 v.0.3

- Add a script(mirchm.mrc what also require mirchm.db) what allow open specify key

  using /help alias, example of ussing: /help $asc

  Thanks praetorian for suggestion.

- Also a custom dialog allow you chose from multiple topics

  what match same key, example: /help $+

- By typing just /help (or pressing F1) you'll get the Help Topics in a custom 

  dialog window like Help->Search one(the difference is what by 

  clicking a topic you'll get it in the .chm anchored version)..

- Again "really Full Updated to mIRC Help 6.16" lol..

  Added missed key's: &&,||,$inpaste,Groups. (missed probably in process of multiple conversions)

- Fixed again some html tags..



New TODO:

- Add anchors to the links inside help file..



17/10/2004 - mIRC Chm Help 6.16 v.0.2

- Lots of html tags issues fixed

- There are no more font tag, all css-ed!

- Now really Full Updated to mIRC Help 6.16(now ussing $md5 for comparing) ;) 

	- Dcc - Fixed a typo(sepcified -> specified)

	- License Agreement - (mIRC v6.14 is now mIRC v6.16)

	- Multi-server - Fixed typo(evaulated -> evaluated)





27/09/2004 - mIRC Chm Help 6.16 v.0.11

- Readded key: $ifmatch (ooopss.. the $ifmatch still remain in "other identifier" topic, error in my search tool).



26/09/2004 - mIRC Chm Help 6.16 v.0.1



Changes:

- Updated from mIRC Help 6.14 to mIRC Help 6.16(updated 17 files)..

	- Author - Now that section is much shorter..

	- COM Objects - 1. Added $comval() 

		        2. Added "Example 3"

	- Custom Windows - 1. Added new switch -H to /window 

			   2. Also Tjerk/Khaled forget to add the new H swith at "/window [-abBcCdeEfg[N]hikl[N]mnoprRsvwxz]".. I been added now(but i shoudn't do that.. it will create confuse for me when i'll update to next help version) ;)

	- File and Directory Identifiers - fixed comments about s switch at $read function..

	- If-then-else statements - 1. Added iswmcs operator

				    2. $ifmatch was replaced with $v1 and $v2 ($ifmatch is now undocumented)

	- Basic IRC Commands - 1. A little redesigned

			       2. Added /notice

	- mIRC Commands -  1. New -k switch to /filter

			   2. New -z switch to /font

			   3. Some changes in /load

	- mIRC Commands (p - z) - 1. Added -ils switch to /url

	- Nick and Address Identifiers - 1. $snicks fixed a typo

	- Notify List - 1. 2 reformulated sentences, nothing important

	- on FILESENT/FILERCVD - 1. Added $send(-1) and $get(-1)

	- on HOTLINK - 1. Added $hotlinepos

	- Other Identifiers - 1. New u option at $input

	- Picture Windows - 1. New -o switch in /drawpic

	- Playing Sounds - 1. New $inwave, $inmidi, $insong pause properties

	- Sockets - 1. "The sockwrite event is triggered.." reformulated

	- Text and Number Identifiers - 1. Added $replacex and $replacexcs



	- Added keys: $comval, iswmcs, $v1, $v2, /notice, $hotlinepos, $replacex, $replacexcs

	- Removed keys: $ifmatch (now it's undocumented)

	- Fixed some html tags in the converted chm version..
```

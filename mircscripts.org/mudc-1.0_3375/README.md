# Funky v1.0 by MonoTek

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

**Script Name:** Funky  
**Version:** 1.0  
**Category:** protection  
**Authors:** MonoTek  
**Email(s):**   
**Website(s):** [http://)](http://)), [http://www.mircscripts.org/comments.php?cid=1393](http://www.mircscripts.org/comments.php?cid=1393), [http://chan](http://chan), [http://aswell](http://aswell), [http://,](http://,)  
**Release Year:** 2006  
**Tags:** alias, wav, mp3, interface  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/mudc-1.0_3375/mudc-1.0_3375.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "mudc-1.0_3375.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2006-08-30",
  "min_file_date": "2006-08-30",
  "total_size": 5.33,
  "largest_file": "urldc.mrc",
  "text": [
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
MyURL Dupe Checker 1.0

  - Funky



----------------------------------------------------------

Stuff

----------------------------------------------------------

Very simply this script monitors a channel for URLs or URIs

whatever you want to call them. It's spammable and can be a

little easyer to use but it works well.



You need to create a database and create the table structure

below in that database. (MySQL).



You also need to load mIRC MySQL Interface v1.3 By MonoTek.

It is available here:



http://www.mircscripts.org/comments.php?cid=1393







What this script does:



When a user types a URL in the channel it gets logged in 

the DB. When the same user (same nick) types the URL again

it notices the user how long ago they typed the URL.



If another user types the URL after its already been seen,

the script messages the channel with the nick of the

original user who typed the URL and how long ago it was.



That's it that's all. One good thing about this is with a

DB it's easy to add this to a website aswell.





----------------------------------------------------------

MySQL Table Information:

----------------------------------------------------------



CREATE TABLE `url` (

 `id` int(10) NOT NULL auto_increment,

 `date` timestamp NULL default CURRENT_TIMESTAMP,

 `nick` varchar(9) collate latin1_general_ci NOT NULL,

 `chan` varchar(30) collate latin1_general_ci NOT NULL,

 `url` varchar(200) collate latin1_general_ci NOT NULL,

 `type` varchar(4) collate latin1_general_ci NOT NULL,

PRIMARY KEY  (`id`)

)  ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
```

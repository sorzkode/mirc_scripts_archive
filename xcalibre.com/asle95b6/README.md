# asle95b v1.0 by Ungod

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

**Script Name:** asle95b  
**Version:** 1.0  
**Category:** bot  
**Authors:** Ungod  
**Email(s):**   
**Website(s):**   
**Release Year:** 1997  
**Tags:** ascii art, bot  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/xcalibre.com/asle95b6/asle95b6.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "asle95b6.zip",
  "file_count": 5,
  "file_types": [
    ".diz",
    ".exe",
    ".nfo",
    ".txt"
  ],
  "max_file_date": "1997-01-10",
  "min_file_date": "1996-12-28",
  "total_size": 1713.07,
  "largest_file": "EGG95B6.EXE",
  "text": [
    "ASYLUM.NFO",
    "FILE_ID.DIZ",
    "QA.txt",
    "Readme.txt"
  ]
}
```

## 📋 Text Content (from Readme.txt)

```text
Installation of Eggdrop 95



Ok I am adding this readme file to the zip archive so you people don't keep emailing me trying to figure out how to get this program to work. 



The first thing you have to do is unzip this file into a temporary directory. 



Then you have to run the program Eggdrop95b6.exe, which will install all the files neccessary to what every drive and directory that you choose.



From there you need to edit the file called "lamestbot" it is the configuration file for eggdrop. You sorta need to know what you are doing here! Under the section called "General Stuff" add these two lines:



set my-hostname " "

set my-ip " "



Then when you connect to the internet open up mIRC and look at what your local host and IP address are under file/setup/local info and put that information in the " ". Then you need to edit the rest of the file to your setting that you want. Like the channel, servers, etc.



You must edit these next two things inorder to the program to work.



1) Under the "Files And Directorys" section change the "set temp" to the following 

	set tempdir "eggtemp/"



2) Look for #####  END OF IMPORTANT STUFF  ##### and at the end of the next paragraph it says REMOVE THIS LINE: remove what is on the next line.



Now everything should be configured!



Now you need to run either eggdrop7.exe which runs Tcl 7.6, or eggdrop8.exe which runs Tcl 8.0. I suggest running eggdrop7.exe. To do this go to your start button and select run, then select the drive and directory you install eggdrop 95 to, and select eggdrop7.exe. Now you need to add this next line to the command -m lamestbot(or whatever you called your config file). So the  line should look like this drive\directory\eggdrop7.exe -m lamestbot. That runs eggdrop and creates your bot. The next time you want to start the bot up you can just use drive\directory\eggdrop7.exe lamestbot.



Once the bot is online you must msg hello or whatever you changed access word too. Then the bot will tell you, that you are a master and to msg him your password etc.



I hope that this file helps, if you need anymore help please don't email me goto the #eggdrop95 on Efnet and ask for help.
```

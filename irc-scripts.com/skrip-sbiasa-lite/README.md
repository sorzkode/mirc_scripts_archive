# skrip-sbiasa-lite v5.82 by of Skrip Basa

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

**Script Name:** skrip-sbiasa-lite  
**Version:** 5.82  
**Category:** game  
**Authors:** of Skrip Basa  
**Email(s):** <roni@skripbiasa2000.com>, <lukisan@gurlmail.com>, <saran@skripbiasa2000.com>, <biasa@picauly.f2s.com>  
**Website(s):** [http://sBiasa.access.v2.checkaig](http://sBiasa.access.v2.checkaig), [http://www.skripbiasa2000.com/](http://www.skripbiasa2000.com/)  
**Release Year:** 2001  
**Tags:** wav, trigger, remote script, protection, notify, fserver, rejoin, away system, toolbar, nicklist, auto join, auto deop, bad word, slap, timer, alias, mp3 player, auto away, dcc, away log, last seen, access list, channel protection, auto ban, bot, auto voice, interface, uno, greet, kickban  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/skrip-sbiasa-lite/skrip-sbiasa-lite.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "skrip-sbiasa-lite.zip",
  "file_count": 120,
  "file_types": [
    ".bmp",
    ".ini",
    ".log",
    ".spc",
    ".txt"
  ],
  "max_file_date": "2001-03-10",
  "min_file_date": "1996-12-22",
  "total_size": 933.84,
  "largest_file": "sBiasaLite_Skrip/sbiasa_lite_s_mp3_02.ini",
  "text": [
    "Read-Me.txt",
    "vers.txt",
    "Read-sHelp.txt",
    "sBiasaLite_Data/sbiasa_scramble.txt",
    "sBiasaLite_Data/sbiasa_mp3_genre.txt",
    "sBiasaLite_Sounds/Read-Me.txt",
    "sBiasaLite_Teks/gbrkupu-kupu.txt",
    "sBiasaLite_Teks/gbrbintang.txt",
    "sBiasaLite_Teks/gbrbirthday.txt",
    "sBiasaLite_Teks/gbrbomb.txt",
    "sBiasaLite_Teks/gbrbunga2.txt",
    "sBiasaLite_Teks/gbrbunga3.txt",
    "sBiasaLite_Teks/gbrbungaspesial.txt",
    "sBiasaLite_Teks/gbrcangkul.txt",
    "sBiasaLite_Teks/gbreagle_m4n.txt",
    "sBiasaLite_Teks/gbrgubuk.txt",
    "sBiasaLite_Teks/gbrjumpa.txt",
    "sBiasaLite_Teks/gbrketupat.txt",
    "sBiasaLite_Teks/gbrkucing.txt",
    "sBiasaLite_Teks/gbrkupu-kupu2.txt",
    "sBiasaLite_Teks/gbrlaba-laba.txt",
    "sBiasaLite_Teks/gbrmasjid.txt",
    "sBiasaLite_Teks/gbrpantai.txt",
    "sBiasaLite_Teks/gbrparcel.txt",
    "sBiasaLite_Teks/gbrphnapl.txt",
    "sBiasaLite_Teks/gbrsenyum.txt",
    "sBiasaLite_Teks/sbiasa-gbrketupat.txt",
    "sBiasaLite_Teks/sbiasa-gbrparcel.txt",
    "sBiasaLite_Teks/sbiasa-txtlebaran-01.txt",
    "sBiasaLite_Teks/sbiasa-txtlebaran-02.txt",
    "sBiasaLite_Teks/sbiasa-txtlebaran-03.txt",
    "sBiasaLite_Teks/sbiasa-txtpuasa-01.txt",
    "sBiasaLite_Teks/sbiasa-txtpuasa-02.txt",
    "sBiasaLite_Teks/sbiasa_tips.txt",
    "sBiasaLite_Teks/sbiasa_notconnect.txt"
  ]
}
```

## 📋 Text Content (from Read-Me.txt)

```text
(Skrip)-sBasa-Lite v1.01c



=======================================================================

* March 2001 *







First, sorry if my english not good.



This is the first version of Lite edition.







I.   INSTALLATION

     ------------



     If you download the zip file, Unzip to a directory/folder by 

     a Zip Extractor (ex: WinZip).

     Or if you download the self extract file, open it and unzip 

     to a directory.



     To get the zip/selfextract file, go to www.picauly.f2s.com

     and click the download session.



     You are recommended to use a directory name without space 

     character (ascii chr 32).

     Ex:  C:\SkripBiasaLite\



     If you download the the zip file without .exe file. You must 

     copy the mirc32.exe file (mirc 5.82 or higher of 32 bits) 

     in to directory.



     Sorry, the mirc help file didn't exists in the zip file.

     If you get trouble with mIRC, you must download it from 

     www.mirc.com.



     And sorry if the sound fx files doesn't exists.







II.  UPGRADING

     ---------



     First, sorry if the previous version have error or bug.

     I hope that all was fixed in this version (v1.01c).



     Like lag monitor, didn't work because it was have error on 

     CTCP Reply detection, too many ":*:" in the event, just one ":*:"

     error, but it makes lag monitor cannot detecting the lag.



     Also on nick completer and text conventer.



     Fixed channel protection problem too, all errors almost have 

     wrong in the writting text, like; EnforcerBan, BanProtection, 

     CloneLimit, DeopServerOp, and a lil bit of on join events.



     Added UnderNet's CService & User control.



     And more...



     Installation of upgrading from previous version is easy, you can 

     unzip it to a new directory, or overwrite the old version but 

     it will changes the options and all variables to the default.







III. USING SCRIPT

     ------------



     If the script has been succesfuly installed on your computer 

     system, you can open it.



     First, check the options by F2.

     The main options are contains the most options of the script.

     Or you select from popups or write /options.



     Settings the script looks, auto system, simple bot features, 

     away system, private/channel protections, mp3 player options,

     and more.



     You might knowing the F keys:

     F2 = main options, F3 = private protections options, 

     F4 = channel protection options, F5 = away dialog, 

     F7 = send email, F8 = lag monitor, F9 = mp3 player, 

     F10 = about, F11 = play scramble game, 

     F12 = auto mode scramble.



     Shift+F2 = information window, Shift+F6 = background colours 

     settings, Shift+F7 = text conventer options, 

     Shift+F8 = lag monitor options, Shift+F9 = mp3 player options,

     Shift+F12 = auto mode scramble editor.

    

     Alt+o = mirc options, F1 = open the mirc help file (if exists).



     You can use the access system (auto voice, 100 (auto op), 200

     (super op), 300 (master), auto kick (banned), auto ignore) by 

     /adduser <level> <mask>, /deluser <level> <mask/number>

     and /listuser <level> [number].



     You are recommended to set the IAL (Internal Address List) on, 

     if you want to be a good channel protector. (/ial <on|off>)



     mIRC maintains an internal address list of all users who are 

     currently on the same channels as you.

     Note: Maintaining the integrity of the internal address list 

     requires quite a bit of processing. For people with faster 

     computers this won't make a difference but for others this 

     might slow down IRCing quite a bit if you are on several 

     channels with lots of people with many messages, modes, joins, 

     parts, etc. mIRC has to keep checking it's internal list to 

     make sure it is updated correctly. (Internal Ban List too)



     Don't change the remote script, cause it would be makes the 

     script error or not work properly.



     Al least, don't play IRC (chatting) too much, cause 

     it will wasting your time and your money.



     And thank you for support.







IV.  SYSTEM REQUIREMENTS

     -------------------



     1. Windows 9x, NT, Me, 2000, xp

     2. mIRC ver 5.82 or higher (32 bit)





     Windows is a trademark of Microsoft Corp.

     mIRC is a trademark of mIRC Co. Ltd.

     WinZip is a trademark of WinZip Computing, Inc.







-----------------------------------------------------------------------

Any bugs reports, suggestions or comments: saran@skripbiasa2000.com







Copyright (c) 1999-2001 Basa.
```

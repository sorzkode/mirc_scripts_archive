# MaLum v7.2 by PyroMan, KRAkeR

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

**Script Name:** MaLum  
**Version:** 7.2  
**Category:** Full  
**Author(s):** PyroMan, KRAkeR  
**Email(s):** <firestorm@mindspring.com>, <masterj97@aol.com>  
**Website(s):** [http://malum.home.ml.org/](http://malum.home.ml.org/)  
**Release Year:** 1997  
**Tags:** mass kick, notify, trigger, gui, full script, popup, popups, kickban, swear, alias, uno, auto away, hangman, dcc, fserver, ctcp replies, user levels, slap, trivia, stock quotes, addon, uptime, greet, protection, midi, fserve, bad word, timer, bot, mass op  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/malum_script/malum_script.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "malum_script.zip",
  "file_count": 48,
  "file_types": [
    ".faq",
    ".hlp",
    ".hng",
    ".ini",
    ".mal",
    ".mrc",
    ".pop",
    ".txt",
    ".wav"
  ],
  "max_file_date": "2025-06-28",
  "min_file_date": "1996-07-17",
  "total_size": 423.23,
  "largest_file": "original/MALUM.HLP",
  "text": [
    "original/ADDONS/ADDON.FAQ",
    "original/ADDONS/AOLADD.MRC",
    "original/ADDONS/BIGE.MRC",
    "original/ADDONS/BX.MRC",
    "original/ADDONS/BXREAD.TXT",
    "original/ADDONS/COUNTRY.INI",
    "original/ADDONS/IBL.MRC",
    "original/ADDONS/NETSEX.MRC",
    "original/ADDONS/REDNECK.MRC",
    "original/ADDONS/WUTANG.MRC",
    "original/CHATBOT.INI",
    "original/FINGER.TXT",
    "original/FSERVE.TXT",
    "original/MALUM.HLP",
    "original/MIRC.INI",
    "original/OPERNUT.INI",
    "original/README.TXT",
    "original/SERVERS.INI",
    "original/SPYBOT.INI",
    "original/URLS.INI",
    "original/VER.INI",
    "original/VERSIONS.TXT"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## original/README.TXT

```text
 	   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!  

           !!!              Welcome to:            !!!      

           !!!  MaLum v7.2 by PyroMan and KRAkeR!  !!!    

	   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!  \|/   ____  \|/

                                                         @~  / oO \ ~@

                                                         /__( \__/ )__\

                                                             \__U_/



!NOTICE!: Lately there's been a fag juping the nicks PyroMan and KRAkeR;

          WHOIS them first! If they're from ica.net then whois Pyr0Man

          and whois KRAk3R. Those are our alternate nicknames. Or better

          yet come to #MaLum ... We're ALWAYS there!



Contents: 



  1. New Users...

  2. Previous MaLum users...

  3. Loading MaLum (if not already autoloaded) 

  4. Bugs and problems...

  5. Notes from the creators





  1. Welcome New MaLum users!! MaLum is an all around script with many great

  features including: A portscanner, encoder, e-mail checker, server 

  list, /longtext, fserve, /mhelp, and much much more! I recomend you use 

  the /mhelp, it is a great help to new users. When you start MaLum 

  everything should already be loaded in aliases, popups, and remote.  If 

  not go to section #3,Loading MaLum. If you need further help you can 

  contact me(KRAkeR) and/or PyroMan in #MaLum on the undernet weekdays from

  3:00pm to around 10:00pm (usually) and on Friday - Saturday you can find

  us in #botz from around 2:00pm to 6:00am Saturday.   





  2. WELCOME BACK previous MaLum users! MaLum 7.2 has many changes and 

  updates. One big change is that MaLum doesn't use .ini's in the aliases, 

  popups, or remote anymore. It is now .mal's because of you can now store

  unlimited things in each file. You don't need popups.ini, aliases.ini, 

  aliases2.ini, talkers.ini, remote.ini, raw.ini, ctcps.ini, events.ini

  and events2.ini. If you still have those in your directory and you

  should delete them. DO NOT delete any other .ini's other than the 

  ones listed above!!! There are a few other new features in MaLum such as 

  /mhelp, cool msg, screwban, more servers to server list, bug fixes,

  new help file, a nice little comment sender, and much much more...

  For more read versions.txt. If you need further help you can contact 

  me(KRAkeR) and/or PyroMan in #MaLum on the undernet weekdays from 3:00pm 

  to around 10:00pm (usually). PLEASE read MaLum.hlp,versions.txt or 

  mIRC.hlp before you contact us about problems, we are very busy most of 

  the time and do not have time to answer your questions. Although we 

  might have some free time it'd just be better for you to read through

  any of those files I just stated BEFORE coming to us! 



  

  

  3. LOADING MALUM (if not already autoloaded)

   	In aliases load:

	     aliases.mal, aliases2.mal, talkers.mal, setting.mal, and aliases3.mal

   	In popups load:    

              Channel: cpopup.mal

	      Menubar: mpopup.mal

              Nicklist: npopup.mal

	      Query\Chat: qpopup.mal

	      Status: spopup.mal 

	In Remote load:

	      Script:

                ctcps.mal, events.mal, events2.mal, and raw.mal

              Users: users.mal

              Variables: vars.mal

  

                                -KRAkeR-





  4. Squashing those bugs and problems  

 

     Ok I'm only gonna say this once. If you find any bugs then you can email

     them to masterj97@aol.com and tell him EXACTLY what the bug is and where

     to find it. If you find you're having problems using the script then 

     please refer to the /mhelp or MaLum.hlp file included. We do not have

     the time to answer your questions because we are very busy most of the

     time. Although we might not be busy just refer to this files BEFORE 

     emailing us or talking to us. 





  5. Notes from the creators



             Good news! The email bomber,comment sender, and the regular 

             emailer now work so have fun! I think this version of 

             MaLum is TOTALLY bug free! If it isn't then fuck me up

             the arse because I thought I squashed all uv da bugs!

             There was a beta copy of MaLum 8.0 that I happend to

             give out to _Five_ and I forgot to give it to KRAkeR

             first. _Five_ is you're reading this then erase YOUR 

             MaLum 8.0 copy and replace it with this one because

             your colors are screwed up! Peace out peeps! 

   

                                -PyroMan-



     

           

             In the last version of MaLum we added a new help file

             (malum.hlp)We added this so the user could better understand

             MaLum and so you would not have to come to us to ask us

             all these questions. So please refer to the malum.hlp

             before asking us any questions.



             In the last few versions of MaLum we have been adding a

             lot of new stuff, and we are running out of ideas. So if

             you have a GOOD idea then come to #MaLum and tell us.

             Don't waste our time with lame ideas!!



                                -KRAkeR-




```

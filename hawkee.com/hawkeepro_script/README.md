# Hawkee Pro v2.0 by Scott Aikin (Hawkee)

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

**Script Name:** Hawkee Pro  
**Version:** 2.0  
**Category:** Protection  
**Author(s):** Scott Aikin (Hawkee)  
**Email(s):** <hawkee@hawkee.com>  
**Website(s):** [http://www.hawkee.com](http://www.hawkee.com)  
**Release Year:** 1997  
**Tags:** blackjack, notify, nicklist, swear, alias, channel protection, trigger, flood protection, auto away, protection, midi, fserve, popup, wav, dcc, auto-away, timer  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/hawkeepro_script/hawkeepro_script.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "hawkeepro_script.zip",
  "file_count": 24,
  "file_types": [
    ".bat",
    ".exe",
    ".ini",
    ".log",
    ".mid",
    ".txt",
    ".wav"
  ],
  "max_file_date": "1997-01-14",
  "min_file_date": "1995-01-04",
  "total_size": 428.13,
  "largest_file": "PRO20/MIDI/STAIRWAY.MID",
  "text": [
    "PRO20/ALIASES.INI",
    "PRO20/INFO.TXT",
    "PRO20/LOGS/LOGS.LOG",
    "PRO20/MIRC.INI",
    "PRO20/POPUPS.INI",
    "PRO20/README.TXT",
    "PRO20/REMOTE.INI",
    "PRO20/SERVERS.INI",
    "PRO20/UPLOADS/UPLOADS.TXT",
    "PRO20/URLS.INI",
    "PRO20/WELCOME.TXT"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## PRO20/README.TXT

```text


                            *******************

                            * Hawkee Pro v2.0 *

                            *******************

                           For use with mIRC 4.7

                      Released Sunday January 5th, 1997



Overview:



I made this script for the purpose of protection.  There are many people out

there who feel flooding and stealing files is ok and that nobody minds when

one committs such acts, but I feel this could be regulated.  That's why I 

made this script.  It is to be used for regulating file downloades on fserves

so that people don't lose their precious bandwith to unwanted transfers and

so that people with the urge to flood or cause trouble may be stopped.  

This script was also made to be simple enough for everybody to use.  I've

given extra effort to make sure it is usable by all and that very little

problems may arise from it's usage.  This script also does not contain any 

complicated features or any useless features that many other scripts have, 

it is made to be simple and easy to use.



New Features for Hawkee Pro:



-Channel protection now included, protection from text, action and nick

 floods.  Also includes swear protection



-Clone detection and protection included.  You may now regulate the number

 of clones allowed in your channel, starting from 0 clones to any number you 

 specify.  Clone scanning will show you the clones already in your channel so

 you may kick them at will



-An automatic away feature was added so when you remain inactive for a 

 certain amount of time, the script will set your nick to away.  The amount

 of time before you are set away may be adjusted.



-Better flood protection was used; it is also adjustable.  You may set it on 

 an extra sensitive setting or not quite such a sensitive setting, deafault

 value is 4 CTCP's before an ignore is activated.



-A duplicate file scanner was added.  Now when somebody initiates a DCC SEND,

 the script will scan your entire fserve directory for that same file and 

 will cease the transfer if the file is found, warning the sender that the 

 file already exists.



-You may now deactivate the ratio so free fserving can be initiated.



-Gambling can also be deactivated



-An IRCop block was added so for those of you who wish to block IRCops from

 your fserve for some reason or another, you may do so.  



-You may now adjust the # of files somebody can get at one time and you can

 also set the # of files that people can be sending you at one time.  This 

 will help those of you with lag problems upon too many transferrs.



-A mail feature was added so you may check and send email through the 

 confines of mIRC.



-A jukebox feature was added, for use with midi songs and wav sound files 

 (10 midi songs are included with the script, press F7 to choose one)



Hot Keys:



F1- Checks your mail

F2- Send an E-mail message

F3- Displays your Fserve configuration

F4- Displays your General Settings

F5- Allows you to adjust your E-mail settings

F6- Displays Wav Jukebox

F7- Displays Midi Jukebox

F8- Plays the last midi/wav to be uploaded or played

F9- Stops the playing of any Midi that may be active



Help:



To adjust any of the General settings, as displayed by the F4 key, you may 

choose the "Hawkee Pro v2.0" pull down option from the menu bar and choose

the switches section.  From there, you may adjust any of the General 

Settings



To adjust any of your E-mail settings you may choose the "Hawkee Pro v2.0" 

pull down menu and pick setup email, or you may simply press F5



To adjust any of your Fserve settings, as displayed by the F3 key, you may 

choose the "Hawkee Pro v2.0" pull down option from the menu bar and pick 

either the Fserve Switches option or the Fserve Setup option



Info:



Hawkee Pro v2.0 is a free product.  It was created for the purpose of helping

others and to be used by everybody.  I do not wish to put any restrctions on

it's use, such as any required cash payment.  You do not owe anything 

whatsoever for it's use.  But if you wish to send any type of donation, it 

will be gladly accepted, for I must now pay for a web page, offered to the 

public as a spot for which to download this script, and I must also pay for 

my internet charges.  These fees can grow quite large, so any donations made

will help me produce futher versions of this script in the future.  Thank 

You



Donations may be sent to:



Hawkee Donation

10790 San Jacinto

Morongo Valley, CA 92256



Thank you everybody for making my product what it is today.  Without you, 

there may not have been a Hawkee Pro



Beta Testers:



Special thanks to these people for helping me test this new version of my 

script:



][ce

Yungji

_-PyRo-_

msnbc/dilbert

think

TiAmaT

^EZrider

Cheesi

TooLMan

TimeLap

*all testers reside on Dalnet, my home



Hawkee 1.7, 1.8 and 1.9:



Hawkee versions 1.7, 1.8 and 1.9 were all fake copies of the actual script. 

Somebody copied Hawkee 1.6 and changed the version number in order to leech.

What he did was he added his nick to the list of people who can leech and 

release all of these versions, it's quite unfortunate that somebody would do

such a thing, but I couldn't do anything about it.  Now to avoid any further

problems such as this, you should check back at my homepage to know whether 

or not a new version is out.  The new versions will be posted on my homepage

at www.hawkee.com  If you notice any new versions popping up which are not 

posted on my web site, please inform me immediately at hawkee@hawkee.com, 

Thank you



Disclaimer:



This script is not to be used for any unlawful acts, such as the distribution

of copyrighted software and/or the distribution of child pornography.  Any 

persons using it for such cannot hold me responsible for their wrong-doings



Thank you all for using this script!
```

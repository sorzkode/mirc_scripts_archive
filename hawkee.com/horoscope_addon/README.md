# Horoscope addon v2 by `SDavis

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

**Script Name:** Horoscope addon  
**Version:** 2  
**Category:** bot  
**Author(s):** `SDavis  
**Email(s):** <manson@cdc.net>  
**Website(s):** [unknown](unknown)  
**Release Year:** 1997  
**Tags:** addon, popup, popups, bot, horoscope, entertainment  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/horoscope_addon/horoscope_addon.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "horoscope_addon.zip",
  "file_count": 2,
  "file_types": [
    ".txt"
  ],
  "max_file_date": "1997-03-24",
  "min_file_date": "1997-03-21",
  "total_size": 3.23,
  "largest_file": "HOROSETP.TXT",
  "text": [
    "HORO.TXT",
    "HOROSETP.TXT"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## HOROSETP.TXT

```text
Horoscope v2 for mIRC BY; `SDavis

I got bored one day and made this.
Use it if you want. Add more Horoscopes

First you take Horo.txt and put in in your tha Mirc Directory your using
Its setup to accept bboth cases (ex !leo or !Leo)

Here's whatcha do
 Add this to Events Section Of Your Remote.ini

#Horo Start
1:ON TEXT:!Horoscope*:*:/msg $nick %horo  [!Pisces] [!Aries] [!Taurus] [!Gemini] [!Cancer] [!Leo] [!Virgo] [!Libra] [!Scorpio] [!Sagittarius] [!Capricorn] [!Aquarius]
1:ON TEXT:!horoscope*:*:/msg $nick %horo   [!Pisces] [!Aries] [!Taurus] [!Gemini] [!Cancer] [!Leo] [!Virgo] [!Libra] [!Scorpio] [!Sagittarius] [!Capricorn] [!Aquarius]
1:ON TEXT:!Pisces:*:/msg $nick $read $mircdir horo.txt     
1:ON TEXT:!Aries:*:/msg $nick $read $mircdir horo.txt
1:ON TEXT:!Taurus:*:/msg $nick $read $mircdir horo.txt
1:ON TEXT:!Gemini:*:/msg $nick $read $mircdir horo.txt
1:ON TEXT:!Cancer:*:/msg $nick $read $mircdir horo.txt
1:ON TEXT:!Leo:*:/msg $nick $read $mircdir horo.txt
1:ON TEXT:!Virgo:*:/msg $nick $read $mircdir horo.txt
1:ON TEXT:!Libra:*:/msg $nick $read $mircdir horo.txt
1:ON TEXT:!Scorpio:*:/msg $nick $read $mircdir horo.txt
1:ON TEXT:!Sagittarius:*:/msg $nick $read $mircdir horo.txt
1:ON TEXT:!Capricorn:*:/msg $nick $read $mircdir horo.txt
1:ON TEXT:!Aquarius:*:/msg $nick $read $mircdir horo.txt
1:ON TEXT:!pisces:*:/msg $nick $read $mircdir horo.txt
1:ON TEXT:!aries:*:/msg $nick $read $mircdir horo.txt
1:ON TEXT:!taurus:*:/msg $nick $read $mircdir horo.txt
1:ON TEXT:!gemini:*:/msg $nick $read $mircdir horo.txt
1:ON TEXT:!cancer:*:/msg $nick $read $mircdir horo.txt!
1:ON TEXT:!leo:*:/msg $nick $read $mircdir horo.txt
1:ON TEXT:!virgo:*:/msg $nick $read $mircdir horo.txt
1:ON TEXT:!libra:*:/msg $nick $read $mircdir horo.txt
1:ON TEXT:!scorpio:*:/msg $nick $read $mircdir horo.txt
1:ON TEXT:!sagittarius:*:/msg $nick $read $mircdir horo.txt
1:ON TEXT:!capricorn:*:/msg $nick $read $mircdir horo.txt
1:ON TEXT:!aquarius:*:/msg $nick $read $mircdir horo.txt
# Horo End

No add this to your
Varibles sections of your Remote.ini

%horo 7���12AF7��� Horoscope v2 ��: `SDavis

Now last but no least add this to your Popups.ini (Menu bar would be tha best place)

Horoscope:/ame %horo [!Pisces] [!Aries] [!Taurus] [!Gemini] [!Cancer] [!Leo] [!Virgo] [!Libra] [!Scorpio] [!Sagittarius] [!Capricorn] [!Aquarius]

There your done
I will have a web site up soon with alot of mIRC addon's and my 
and my script [���AcidFreak���]
For more Info you can find me as `SDavis on EFnet or DALnet
Or just E-mail me at manson@cdc.net

```

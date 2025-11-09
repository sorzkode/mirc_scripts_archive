# dephmp3-06b%5b07-02%5d v0.6 by dephekt

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

**Script Name:** dephmp3-06b%5b07-02%5d  
**Version:** 0.6  
**Category:** game  
**Authors:** dephekt  
**Email(s):** <dephekt@yahoo.com>  
**Website(s):** [http://ircdev.cjb.net](http://ircdev.cjb.net)  
**Release Year:** 2001  
**Tags:** wav, mp3  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/dephmp3-06b%5b07-02%5d/dephmp3-06b%5b07-02%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "dephmp3-06b%5b07-02%5d.zip",
  "file_count": 2,
  "file_types": [
    ".dll",
    ".txt"
  ],
  "max_file_date": "2001-07-02",
  "min_file_date": "2001-07-02",
  "total_size": 216.63,
  "largest_file": "dephmp3.dll",
  "text": [
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
[deph]MP3Tools - version: 0.6 beta

               - created by dephekt (dephekt@yahoo.com)

               - [ircdev] : http://ircdev.cjb.net

-----------------------------------------------------------------------------------

Command: $dll(dephmp3.dll,mp3read,<mp3 filename>)

	 <mp3 filename> - name of the mp3 file with the tag you want

                          to read.



         Returns info in the order:

           <title>$chr(1)<artist>$chr(1)<album>$chr(1)<genre>$chr(1)

           <track no.>$chr(1)<year>$chr(1)<comment>

         if title, artist, year, track, or comment is not set, it will

         return NULL

         if genre is unset, it will return Unknown

         if there are no tags, it will return NO_TAG



Command: $dll(dephmp3.dll,mp3set,...)

	 ... can be:

           title <title>      - sets the title

           track <track no.>  - sets track no.

           artist <artist>    - sets artist name

           year <year>        - sets year

           genre <genre no.>* - sets genre

           comment <comment>  - sets comment

           set <filename>     - set the tags



           * for genre, you will have to set the number for now. the

             list for genres are:

              "Blues", "Classic Rock", "Country",

              "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz",

              "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap",

              "Reggae", "Rock", "Techno", "Industrial", "Alternative",

              "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno",

              "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion",

              "Trance", "Classical", "Instrumental", "Acid", "House", "Game",

              "Sound Clip", "Gospel", "Noise", "Alternative Rock", "Bass",

              "Soul", "Punk", "Space", "Meditative", "Instrumental Pop",

              "Instrumental Rock", "Ethnic", "Gothic", "Darkwave",

              "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance",

              "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40",

              "Christian Rap", "Pop/Funk", "Jungle", "Native US", "Cabaret",

              "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer",

              "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro",

              "Musical", "Rock & Roll", "Hard Rock",

              "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion",

              "Bebop", "Latin", "Revival", "Celtic", "Bluegrass",

              "Avantgarde", "Gothic Rock", "Progressive Rock",

              "Psychadelic Rock", "Symphonic Rock", "Slow Rock", "Big Band",

              "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech",

              "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony",

              "Booty Bass", "Primus", "Porn Groove", "Satire",

              "Slow Jam", "Club", "Tabgo", "Samba", "Folklore",

              "Ballad", "Power Ballad", "Ryhtmic Soul", "Freestyle", "Duet",

              "Punk Rock", "Drum Solo","Acapella", "Euro-House",

              "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore",

              "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk",

              "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal",

              "Crossover", "Contemporary Christian", "Christian Rock",

              "Merengue", "Salsa", "Trash Metal", "Anime", "Jpop",

              "Synthpop", "Unknown"

              starting at 0. Meaning a genre number of 0 gives Blues. It is

              recommended that you make a mirc identifier to return the

              appropriate number/category. I KNOW this is very inconvenient.

              It will be fixed in the next version.



Command: $dll(dephmp3.dll,dllinfo,.)

         gives back info about the dll.

-----------------------------------------------------------------------------------

 What's new:  

     0.6 beta - fixed bug where title/artist/album/track doesn't return NULL.

                (thanks to Trystan for pointing this out)

              - laid out some simple functions that would make functions a bit

                faster (and which will be needed for the next version)

     0.5 beta - first public release



-----------------------------------------------------------------------------------

 Coming soon: - set genres with name

              - an identifier to make mp3 listing a LOT easier :)

              - few new functions (maybe even playing mp3)

              - source code in next version

              - smaller size

-----------------------------------------------------------------------------------
```

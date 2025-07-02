# k-rad GUI MP3 player v3.0 by erawtic

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

**Script Name:** k-rad GUI MP3 player  
**Version:** 3.0  
**Category:** addon  
**Author(s):** erawtic  
**Email(s):** <erawtic@allusion.org>, <erawtic@dimensional.org>  
**Website(s):** [http://dimensional.org/~erawtic/mp3.html](http://dimensional.org/~erawtic/mp3.html), [http://px.cjb.net](http://px.cjb.net)  
**Release Year:** 1998  
**Tags:** timer, gui, greet, alias, popups, mp3 player, dialog, popup, mp3, addon, dcc, music  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19991110054109_mp3mrc/19991110054109_mp3mrc.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19991110054109_mp3mrc.zip",
  "file_count": 3,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1998-10-27",
  "min_file_date": "1998-10-27",
  "total_size": 40.06,
  "largest_file": "mp3.mrc",
  "text": [
    "mp3a.mrc",
    "mp3.txt",
    "mp3.mrc"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## mp3.txt

```text
                    ,-------------------------------------------------,
                    |    _ __  _ __|���/  _ __  _ _ __                |
                    |   | '  \| '_ \|� \_| '  \| '_/ _|  ____  ___    |
                    |   |_|_|_| .__/ � (_)_|_|_|_| \__| |_  / / _ \   |
                    |         |_|   ���         erawtic_/_ <_/ // /   |
                    |                                 /____(_)___/    |
                    '-------------------------------------------------'

	Wow. You're smart. You downloaded mp3.mrc v3.0!$@ The k-rad GUI
MP3 player. WOW!$@ You're REALLY smart!$@ You're reading the readme.txt
file too!$@!$@$@! I'm not big on readme's, so its small. I've explained
some identifiers, commands, and threw out a few greets too. That's what
I call a readme file. :P Anyways, read it all. Cuz like, you're /<-rad.

Contents:
   1. Files
   2. Installing
   3. Commands
   4. Identifiers
   5. Greets
   6. Contact info
   7. EOF


1. Files
   Files included in mp3.zip:
      1. mp3.mrc  (main routines file)
      2. mp3a.mrc (menu/popups file  )
      3. mp3.txt  (you're reading it )
   If you do not have all these files, contact me by email or IRC.

2. Installing
   READ THIS!$@ Its how to install the script:
      1. Unzip the files in mp3.zip to your mIRC v5.4 or higher directory.
      2. If not already, open mIRC.
      3. In ANY window with a text-box, type /load -rs mp3.mrc
      4. Fill in any and all information asked for.
   This script will automatically attempt to find your MP3 directory and
   the path to Winamp, (since it is the most popular). Don't worry if it
   doesn't displays either wrong, you can always change it in setup.

3. Commands
   These are the 928358923 commands:
      /mp3 <spec|rand|last|stop|list|text|player|setup> [string]
         - spec [string]
           Lets you choose a file. If you specify [string] it will try to
           find an MP3 file with [string] in it. (You can use wildcards)
         - rand
           Plays a random MP3.
         - last
           Plays the last MP3 you played.
         - stop
           Stops the current MP3 you're playing.
         - list
           Opens the GUI MP3 Playlist. This has a list of all the MP3's found
           in the MP3 directory you specified on the right, and buttons on the
           left to control them.
         - text
           Makes a list of all the MP3's found in the MP3 directory you specified
           in a text file.
         - player
           Opens the GUI MP3 player. "Play" will allow you to choose an MP3 to
           play. "Stop" will stop the current MP3 you're playing. "Random" will
           play a random MP3. "Last" will play the last MP3 you played. "Exit"
           will close the Player and stop the current MP3 you're playing. The
           "Repeat" Checkbox will allow you to repeat the MP3 you're currently
           playing. The "Shuffle" Checkbox will allow you to play a random MP3
           when one ends.
         - setup
           Opens up the MP3 Setup dialog. "Directory to MP3's" is where your
           MP3 files reside on your Hard Drive. "Path to Player" is the full
           path to the program you use to play your MP3's. "Show MP3's when
           played" will show the stats of an MP3 you play in a channel or
           status window, depending on what's the active window. "Allow users
           to "steal" MP3's" will allow anyone who wants an MP3 from you to
           get it by typing something like "!yournick mp3 file.mp3." "If exists,
           play MP3 on request" will play an MP3 when someone does a /ctcp SOUND
           or /ctcp MP3 to you and you have that MP3.

4. Identifiers
   Some identifiers you can do stuff with:
      $mp3.f(filename.mp3)
         - Finds an MP3 in the Playlist. (returns the line number)
      $mp3.t(NmNs)
         - Returns the seconds of the length of an MP3. Example:
           $mp3.t($mp3.len(filename.mp3))
      $mp3.c(text)
         - Looks for wierd characters in ID3 tags.
      $mp3.s(section)
         - Reads settings from mp3.ini file.
      $mp3.r
         - Returns a random MP3.
      $mp3.tagged(filename.mp3)
         - Checks to see if an MP3 is tagged or not.
      $mp3.song(filename.mp3)
         - Returns the song name of an MP3. (if its tagged)
      $mp3.artist(filename.mp3)
         - Returns the artist name of an MP3. (if its tagged)
      $mp3.album(filename.mp3)
         - Returns the album of an MP3. (if its tagged)
      $mp3.year(filename.mp3)
         - Returns the year of the album of an MP3. (if its tagged)
      $mp3.bitrate(filename.mp3)
         - Returns the bitrate of an MP3 in long format. (128000)
      $mp3.br(filename.mp3)
         - Returns the bitrate of an MP3 in short format with 'kbps' (128kbps)
      $mp3.len(filename.mp3)
         - Returns length of an MP3.
      $mp3.size(filename.mp3)
         - Returns the size of an mp3 in MB.

5. Greets
   These people are too k-rad for human kind:
      orb      - best friend, you rule.
      caylah   - just can't help but love her.
      grimmy   - i just dont know about you.
      deviate  - he's rad, he's the coolest.
      kabal    - elite idle cawlege boi.
      craq     - slobber!$@%#
      hexed    - he wants sops in #perplex really bad.
      treason  - you own me.
      drch     - i had sex with your sister, i think.
      drac     - i fear your doxx bnc!$@
      m00      - mad cool.
      unknown  - WHERE ARE YOU?!$@
      jh       - my prepubescent hunky pal.
      inuse    - he's like, still in use.
      m0de     - joey&*(!$^*&!@^%
      butane   - /join #comments-anonymous
      saint    - you always somehow wind up here.
      hellish  - someone with common sense.
      v9       - one = one of the best scripts.
      optik    - :) hi :) how are you? :) :) :) :) :)
      zerocool - he nuked me like 10+ times in march.
   Should you be here? too bad. :)

6. Contact info
   Here's how you contact me:
      IRC   - #perplex @ dalnet
      email - erawtic@dimensional.org
            - erawtic@allusion.org
      site  - http://px.cjb.net
  Don't DCC me on IRC unless your name is Caylah.

7. EOF
   Bye. Enjoy the addon.

```

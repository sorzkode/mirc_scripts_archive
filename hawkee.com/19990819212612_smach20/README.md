# Sound Machine v2.0 by [SB]Tikiman

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

**Script Name:** Sound Machine  
**Version:** 2.0  
**Category:** addon  
**Author(s):** [SB]Tikiman  
**Email(s):** <bkennedy@haverford.edu>  
**Website(s):** [http://www.students.haverford.edu/bkennedy](http://www.students.haverford.edu/bkennedy), [http://www.mirc.co.uk](http://www.mirc.co.uk), [http://www.hawkee.com.](http://www.hawkee.com.)  
**Release Year:** 1997  
**Tags:** timer, queue system, alias, popups, mp3 player, popup, mp3, dcc  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990819212612_smach20/19990819212612_smach20.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990819212612_smach20.zip",
  "file_count": 4,
  "file_types": [
    ".doc",
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1997-11-12",
  "min_file_date": "1997-11-12",
  "total_size": 78.11,
  "largest_file": "midijuke.mrc",
  "text": [
    "smach20.doc",
    "midijuke.mrc",
    "jukemenu.mrc",
    "smach20.txt"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## smach20.txt

```text
Sound Machine 2.0 -- [SB]Tikiman
-----------------------------------------------
Introduction -- So you are a wav/midi/mp3 junkie too eh?  Well even if
you are not, this script gives you a painless way of managing all you sound files, all within mIRC.

Getting Started -- The Boring Stuff

Get yourself a copy of mIRC 5.11, available at such fine web sites as http://www.mirc.co.uk and http://www.hawkee.com.

Firstly, delete and old midijuke.mrc files that are hanging around.  Place the two ".mrc" files into the directory that contains your mirc.exe.  While running mIRC, type "/load -rs midijuke.mrc".  This loads the scripts into your remote.  Note, you don't need to manually load the other mrc file, it is done for you.  Now you can hit F12 to open up the jukebox, or typr "/juke".  Be sure that your wav and midi directories are specified in your sound options, the script will look in those directories for your sound files.  If you would like to use mp3 files, right click and go into the preferences, and select "Configure mp3 player and directory".  Here you can configure which player you wish to use and where your mp3 files are located.  Do this now to avoid later confusion.

Features and Use -- The Good Stuff

Here is a list of cool features -- 

1. Full auto-request and auto-send capabilities using either the "!nick filename" of "ctcp get filename" methods
2. The ability to select "Preferred Channels" to send your sound files to
3. An advanced command line feature that completes sound file names. (Cool!  Try this!)
4. Continuous "Radio Play" for midis and "Random Timer Play" for wavs
5. "Wav Weeding" sessions that can help you maintain your wav collection
6. A queue system that saves play lists of midis that can be recalled at a later time
7. The ability to list your files in a convenient window for easy playing and transferring
8. A special (optional) window that removes sound request messages from the main channel
9. Another (optional) window that lists unknown files in a box, and lets you easily request them
10. Easy to configure dynamic pop-ups
11. Responds to CTCP MP3 and SOUND requests (It sends only with SOUND, the preferred method)
12. Added a mIRC utility to remove spaces from file names

Whew, thats a lot of features!  There is other random stuff too you will run across, such as the comment sender and the "Jukebox Position Saver".  Here is a brief description of the pop-ups:

The main Sound Machine Pop up has four sections.  The first section is devoted to playing sound files on your local machine.  Under the midi menu, you can select a midi to play, play a random midi, stop aplaying midi from any source, or enable "Local Radio Play".  This options will play continuous random midis until you manually halt them.  Under the Wav and MP3 submenus, you can select or play a random Wav or MP3. Under the filemaintenance section, you can delete the most recently played midi, wav, or MP3.  This is useful if you discover that a sound file is corrupted.  There is also a feature called "Wav Weeding".  This will gothrough your wavs one by one.  You can either hear the wav again, delete it, or continue to the next wav.  If your wav weeding session gets halted by a corrupt file, you can then continue your session inthis menu.  The Queue menus allows to create a list of midi files.  You can save your list under a description name, and then recall it at a later time.  You can also adjust the current queue new entries, deleting the last entry, or clearing the queue entirely.

The second section allows you to call up lists of sounds files in a separate window.  In these windows,you can select a file with the cursor and then either play it locally, send it to your preferred channel, send it to a specified nick or channel, DCC it to a nickname, or delete. In the midi list, you can also add the file to your queue.  If you have a tremendous amount of wav or midi files, it may take a while to fillthis box and it could lag you off IRC.  If this is the case, it's probably time to have a Wav Weeding session ;)

The third section allows you to send sound requests to other channels and people.  You can always send a random or selected sound file to a specified channel or your preferred channel.  With midi play, you can initiate radio play for a specified channel or preferred channel.  For Wavs, you can start random timer play, which sends random wav requests to a nick or channel at a specified interval.

The fourth section consists of miscellaneous stuff.  You can adjust your preferences here.  In the Wav section, you can specifically deny incoming wav requests, request unknown wav files, or deny wavs that are sent to you while a midi is currently playing.  In the midi section, you can deny request, auto-request, and have an option that queues incoming midis of one is already playing.  Under MP3 options, you can deny, auto-request, and configure your player/directory.  In the fourth section, you can specify several things.  You can say how you want to auto-request files -- the two methods are "!nick filename" in the channel or a ctcp "GET filename".  The CTCP is much cooler since it doesn't clutter the channel, but more people still use !nick filename.  You can also choose if you would like to respond to !nick requests, ctcp GET requests, both, or neither.  You can also disable the sound requests window, which is useful for keeping the clutter from sound requests out of the channel.  Its useful for the mega-wav channels.  You can also enable an incoming file list.  Files that you don't have that aren't being auto-requested go here.  You get a color coded list of incoming files, and you can right click one to request it by either method, or double click to request by your preferred method.  This is a nice option and I recommend you keep it on.  You can also adjust your preferred channels in this menu.  The next option allows you to save the current jukebox position, were it will open up upon the next use.  The Adjust Volume command runs the default windows sound control mixer.  You can also hit "Send Comment/Bug Report" which will ask for a reply address and send my a comment via E-Mail.  There is also a version checker which will check a web site for updates.  You can also run the space remover utility from here.  Finally, the last option is to close the jukebox.

Or you can just remeber, First section is local play, second is list boxes, third is IRC sound requests, fourth is configuration.

Ok, lets explain the command line commands.

Wav -- "/s file".  "File" can be either be the beginning of a filename, or an entire file.  Suppose you have the file "beer.wav".  Then "/s be" will play "beer.wav".  But what if you have a file called "bear.wav"? Then "/s be" will conveniently list all the matches.  Then you would know to type "/s bee" to play
"beer.wav".

Midi -- There two commands, "/m" and "/lm". "/m" send the following file to the channel you are on, and "/lm" play the midi locally.  This command takes the same file fragment system as the wav.


MP3 -- "/mp3" and "/lmp3" will play the following filename if only one parameter is given.  To utilize file name completion, you must use the following naming system:

(Group_Name)Song_Title-keyword.mp3 -- the keyword is option, and can say things like "live", "unplugged", "acoustic", "rare", etc. 

for example --

(Joe_Satriani)Summer_Song-live.mp3
(REM)Stand.mp3
(Janes_Addiction)Kettle_Wistle.mp3


Name your stuff this way!  It is worth it!  Here is why:

The wild card works like "/mp3 group title" so 

"/mp3 j s" will return "(Joe_Satriani)Summer_Song-live.mp3"

but what if you also have 

"(Jimi_Hendrix)Sgt_Peppers_Lonely_Hearts_Band-live.mp3" ?

then it lists all the matches.  You can also do stuff like

"/mp3 wu *" to list all your Wu-Tang Clan mp3's or
"/mp3 * *live" to list all your live mp3's.  Cool!

The command "/byebye" will unload the script so you can upgrade easily.

Ok that looks like it.  There are a few incompatibilities/problems.  The most annoying one is mp3 files with spaces.  Sound Machine doesn't like them, and mIRC doesn't like them either.  To this end, I created a file space remover utility, its in the main popup.  Use this and make your life easy.  So don't gripe about spaces, make life easier for those around you and run the utility.  Besides, don't you want to use my cool file completion system? ;) You may also notice that when the Juke starts, you get a "sound requests off" notice.  This is fine, it just turns off the default settings so the juke can take over.  You will also notice that if a file is corrupt, it will mess up the juke screen.  Just hit F12 twice to clear it of use the "refresh" option.  If you have problems with mp3 stuff, ie strange behavior, just reconfigure and restart the jukebox.  It should be ok.  Another slight oddity -- the file listing feature will tend to lag you if you have a lot of files.  In listing these, one can list them all 1 by 1 without the path (laggy) or display them all with the path (cluttered).  I opted for laggy, hopefully there will be a way around this in future versions.

If there is a feature you are dying to have, get in touch with me with the comment sender or send mail to me at bkennedy@haverford.edu, if it is a reasonable suggestion I can personalize a copy for you ;)

--[SB]Tikiman (bkennedy@haverford.edu)

Version stuff --

New Features since last version (1.20) -
1. Title changed from Midi Jukebox to Sound Machine.  I felt this was appropriate since it does a lot more than midis.
2. Added support for mp3's.  Playing these files requires an external application.  I personally recommend WinAmp for Windows 95.
3. Added a comment sender/bug reporter for communication with the author.
4. Vastly improved configuration techniques, which are all now accessible through pop-ups.
5. Removed the help box pop-ups -- all information is now discussed in this file
6. Split the script into two files due to space constraints.
7. File name completion
8. Window position saver
9. Cleaned up code where I could understand what I had written, left it alone if it worked
10. More little stuff I have forgotten to mention.
11. Little thing -- now echos to channel when you play stuff.
12. Space remover utility
13. Version Checker, News Checker
```

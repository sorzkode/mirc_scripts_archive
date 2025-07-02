# MidiWav Jukebox v1.20 by [SB]Tikiman

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

**Script Name:** MidiWav Jukebox  
**Version:** 1.20  
**Category:** addon  
**Author(s):** [SB]Tikiman  
**Email(s):** <14bkennedy@haverford.edu>, <bkennedy@haverford.edu>  
**Website(s):** [http://www.mirc.co.uk/.](http://www.mirc.co.uk/.), [www.students.haverford.edu/bkennedy/linkbot.zip](www.students.haverford.edu/bkennedy/linkbot.zip)  
**Release Year:** 1997  
**Tags:** timer, gui, alias, popups, popup, dcc, midi, wav, music  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19970707203535_midijuke/19970707203535_midijuke.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19970707203535_midijuke.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1997-05-27",
  "min_file_date": "1997-05-27",
  "total_size": 34.71,
  "largest_file": "midijuke.mrc",
  "text": [
    "midijuke.mrc",
    "midijuke.txt"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## midijuke.txt

```text
Midi/Wav Jukebox 1.20 for Mirc 5.02 -- by [SB]Tikiman

Installation --

1. Copy the file midijuke.mrc to your mirc direcory.
2. If you have a previous version -- type:
     /unload -a midijuke.ini
     /unload -rs midijuke.ini
   Otherwise, just continue to step 3.
3. Type in any box, " /load -rs midijuke.mrc ".  It will ask you a question about running initializion options, just say "yes"
4. Hit F12 to turn your jukebox on and off.  The command /juke does the same thing.

Menus -- 

The top part of the popup menu gives all your local commands.  The Midi and Wav menus just allow you to play either single files, random files, or continous random files (radio play).  The "Maintain File" section allows you to do some clean up if you have excessive numbers of wavs.  You can delete the most recently played wav or midi in this menu, good for getting rid of lame wavs you have forgotten about.  You can also start a "wav weeding" session that goes through all your wavs 1 by 1.  It will ask you to hit D to delete,  C to continue, or R to replay the wav.  If you encounter a bad wav that will not play it will end the session.  If this happens select "continue session".  The Queue allows you to add or remove files to a playlist that will be played in order.  You can also save up to 4 playlists for easy recall at a later date.

The second section has two options.  You may call up a special listbox of all your midis that remains open for easy access.  You can open a similar box for waves.  Note, if you have greater then 100-150 files, this may  take a while to do and may lag you off IRC.  If this happens you probably should do a full wav weeding sessions ASAP.

The third section allows to send sound requests to other people and channels.  Be sure your preffered channel is set from your preferences list.  Most options are pretty easy to understand here.  In the Wav section, random timer play will play a random wav after a given number of seconds.  Good for wav exchange channels.

The fourth section is miscellenous.  You may change your settings, call a help box with a help popup, adjust volume, and close the jukebox,

You will also find an addition to the channel popup contains commands to start the jukebox and setting your preferred channel.

Commands -- There are two commands that work in query windows and channel windows.  They are:

/s wavfile (note, it would be /s doh, not /s doh.wav for instance)
/m midifile (/m headhole, not /m headhole.mid)

This will be sent to the entire channel if used in one, or to a single person if used in a query window.

Midi Preferences -- (double click Jukebox window to view)

1. Deny Midi Requests -- this means whether or not you want to resond the the /sound command for midis played on a channel.  Note that accepting midi requests will never override a playing midi.

2. Queue Midi Requests -- if someone plays a midi, it will automatically add it to your queue list, to be played later.  Otherwise it will be ignored.  

3. Auto-request Midis -- This will allow you to send a request to get files that you don't have.  The request method is specified under general preferences.

Wav Preferences --

1. Accept Wav Request -- same as "Deny Midi Request" but digitized.

2. Deny Wav Request while midi is playing -- this will  halt wav sounds while your favorite midi is chiming away, useful in some circumstances.

3. Auto-request Wavs -- Same as Midis

General Preferences --

1. Auto-get method -- this asks whether you wish to request files with the "ctcp GET file.mid" method, which I strongly reccomend.  If you say no, you may then decide to use the old style "!nick filename" method which is cluttered and annoying.

2. Send method -- You can listen for !nick filename, ctcp get, or both.

3. Disable sound request window  -- You can disable the "Incoming Sounds" window in favor of the old style, but I think the window is super cool.

4. Preferred Chanels -- This allows you to play midis and wavs to a specific channel w/o having to reenter the name each time.

Possible Problems --

If you are not seeing any midis or wavs in the selection boxes, make sure you have the directories correctly specified and your files are present in them.  You may notice the ** SOUNDS OFF when you start up, this is fine since I am bypassing all built in routines -- I just can't suppress the message.

If you are not responding to "!nick filename" requests, it may be due to conflicting on 1:TEXT commands.  In this case you will have to turn off or remove conflicting lines of script, a potentially difficult task.

When requests happen rapidly, the Jukebox may not "unflash" a wav or get request.  This is fine, as soon as you play a midi or wav it will return to normal.

Future Versions --

Dunno, this does basically everything you could hope for from a mirc midi jukebox.  Got any ideas?

Comments/Questions --

This add-on may be freely distrubuted to other people and web sites, I give my permission.  If you wish to use this in a script, be sure to give credit where credit is due.  Send questons/comments to bkennedy@haverford.edu.  Thanks!

--[SB]Tikiman

Thanks to the other SB's and LAG's who have been my guinea pigs on this one.

Don't forget to check out LinkBot, available at www.students.haverford.edu/bkennedy/linkbot.zip

version 1.20 --
upgraded for mirc 5.02 -- made use of on 1:LOAD 
crammed it all into one mrc file
added wav weeding system
added timed random play for wavs
added ctcp requests/responces
included online help
minor bug fixes

version 1.0 -- 
first release
```

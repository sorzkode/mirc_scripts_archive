# SB-Mp3 v1 by [SB]Tikiman

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

**Script Name:** SB-Mp3  
**Version:** 1  
**Category:** addon  
**Author(s):** [SB]Tikiman  
**Email(s):** <bkennedy@haverford.edu>  
**Website(s):** [unknown](unknown)  
**Release Year:** 1998  
**Tags:** timer, gui, alias, popups, mp3 player, popup, mp3, interface, dcc, music, winamp  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990910155101_sbmp3/19990910155101_sbmp3.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990910155101_sbmp3.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1998-05-13",
  "min_file_date": "1998-05-13",
  "total_size": 31.08,
  "largest_file": "sbmp3.mrc",
  "text": [
    "SBMp3.txt",
    "sbmp3.mrc"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## SBMp3.txt

```text
SB-Mp3 v1.0 -- by [SB]Tikiman

I have seen many recent sound scripts that provide a jukebox like interface to mIRC.  This is not one of them; this can be considered as a front end to WinAmp.  It provides a quick and easy to manage and play your collection of Mp3's.  When used correctly, every Mp3 is one very short alias away.

Setting Up:

Type /load -rs c:\directory\sbmp3.mrc to load the script.  Be sure to include only "\" backslashes, as mirc has problems with the $scriptdir identifier otherwise.

Hit F5 or type "/mp3" and read this section carefully -- many of the more powerful aliases in this section depend on having a uniform naming system.  The defualt is (Group_Name)Song_Title.mp3.  To completely avoid any problems, rename your mp3's to this format.  If this is impractical, you may go into Preferences and select "Name Format".  A window will pop up with directions.  You should enter the naming format you use, using your format, ie " { Group Name } Song Title.mp3 " .  Be sure to actually use the words "Group Name" and "Song Title".  After this, is will count the number of matching mp3's.  Trust me, even if it is a pain to rename a large collection of mp3's, its worth it.

Use:

Hit F5 or type "/mp3" to start up.  A nifty directory will pop up with all your mp3's listed.  If you select one mp3, you may do several things -- play it locally, play to preferred channel, and addtionally you dust play a random mp3.  There is also a file control menu you can use to rename, copy, remoce, DCC send, or move.  If you select multiple mp3's, you may only play them locally for technical reasons.  Double-clicking a single mp3 will play it to your preferred channel or locally, depending on how your preferences are set.

The directory navigation is fairly straightforward, double click a directory to go there or use the popups to navigate.  There is also a Preferences menu, Comment sender, volume control, exit option, and a filename despacer.  This just replaces the spaces in filename with underscores, which in general are easier for mirc to handle.  Note, it does not touch directories that have spaces in them, you may temporarily rename them for it to work.  It will also change you filenames to lowercase -- sorry about that.

In the preferences menu, you may select your mp3 dir, send double clicks to channel or play them locally, reassign function keys and aliases, change the name format, change your preferred channel, and decide whether or not to request transfer requests.  

Aliases:  

Assuming you got the name system working, you may now name fragments for group name and song title.  I will refer to them as <gr> and <so>

/mp3 fullname.mp3 or /mp3 <gr> <so>

Suppose I have an mp3, "(Foo_Fighters)Down_In_The_Park.mp3".  I could type something like "/mp3 fo d" to play it.  If there happen to be none or multiple matches, I will be informed.

/lmp3 fullname.mp3 or /lmp3 <gr> <so> -- local mp3 play
/rgr <gr> -- plays a random mp3 from <gr>
/rpl # -- will play # random mp3's locally
/ten -- this will randomly select ten mp3's.  You may then use F7 and F8 to cycle through the names of them.  This a useful semi-random play.

You may hit F6 at any time to send a random mp3 to your preferred channel.  

Transfer Requests:

If enabled, users may type:

!yournick filename.mp3
/ctcp yournick GET filename.mp3

or

!yournick <gr> <so>
/ctcp yournick GET <gr> <so>

or 

!yournick last
/ctcp yournick last

to get the last mp3 you played.

Other Things:

Hitting F5 will either open the script, bring it to the front if its running and not active, or hide it.  A note on spaces, any time there would be confusion about a filename, enclose it in quotes.  Thus dont type "/mp3 (Sublime) What I Got.mp3" type "/mp3 "(Sublime) What I Got.mp3"".  Acually, its much easier to type "/mp3 su wh".  Finally, there is limited support for running .vqf files.  They will appear in the directory listing, and can be played in all the aliases that have <gr> and <so>.  They will not be selected randomly at any time, mostly because there is no player that will play both mp3's and vqf's.  So don't add them to playlists either.

In the preferences, you may select alternate function keys for the four that are listed.  I recommend using the default ones, since they are conveniently located.

Notes:

There is no attempt to monitor ctcp SOUND traffic to play mp3's you have or request those you don't have.  I found this to be basically be a pain in the ass -- I never really appreciated other people playing sounds on my machine, and mp3's are large enough that transferring every one that is played is impractical.  Thus, its out.  Also, there is a tendency for most mirc commands to strip the capitals out of filenames and make them lowercase.  This is annoying, but there is not much to be done.

Please send questions/comments to bkennedy@haverford.edu or use the comment sender.  Thanks! 

--[SB]Tikiman

Appendix A -- Creation notes
Everything here is pretty standard.  One thing I did was using DOS directories to obtain the directories much faster than looping with $findfile.  I didn't send the output of $findfile to a custom window since that has ugly path names, and makes everything lowercase.  I also used the esoteric /filter command to find filenames with spaces.  That was kinda cool.

```

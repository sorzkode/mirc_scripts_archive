# jbot v1.0 by FA-Q

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

**Script Name:** jbot  
**Version:** 1.0  
**Category:** protection  
**Authors:** FA-Q  
**Email(s):** <w@channels2.undernet.org>, <x@channels.undernet.org>, <nudedude@alias.undernet.org>, <W@channels2.undernet.org>, <X@channels.undernet.org>  
**Website(s):** [http://n67=...xurl:/msg](http://n67=...xurl:/msg), [http://www.globaldialog.com/~volker528/](http://www.globaldialog.com/~volker528/)  
**Release Year:** 1997  
**Tags:** wav, protection, notify, ascii art, nicklist, auto-op, slap, timer, alias, dcc, bot, swear, ctcp replies, dialog, midi, popup, flood protection, highlight, popups, mp3  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/Other/jbot/jbot.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "jbot.zip",
  "file_count": 9,
  "file_types": [
    ".bat",
    ".exe",
    ".ini",
    ".pif",
    ".txt"
  ],
  "max_file_date": "1997-04-20",
  "min_file_date": "1996-12-28",
  "total_size": 90.03,
  "largest_file": "_popups.ini",
  "text": [
    "control.txt",
    "JBOT.TXT"
  ]
}
```

## 📋 Text Content (from control.txt)

```text
;This is the popup file for the Control window.

;Please don't edit it unless you know how it works.

&ON: {

if (Pinger isin $sline(@Control,1)) { enable #pinger | unset %p }

if (replies isin $sline(@Control,1)) { set %replier on }

if (Pager isin $sline(@Control,1)) { set %nickpage On }

if (Auto-send isin $sline(@Control,1)) { enable #dccsend }

if (Shitlist isin $sline(@Control,1)) { enable #groupSHIT | set %groupSHIT On }

if (Swear isin $sline(@Control,1)) { enable #groupSWEAR }

if (Text isin $sline(@Control,1)) { enable #TEXT }

if (Auto-op isin $sline(@Control,1)) { enable #autoop }

if (CTCPs isin $sline(@Control,1)) { enable #ctcpreply }

if (Wallops isin $sline(@Control,1)) { enable #wallops | window -n @WallOps }

if (Cloner isin $sline(@Control,1)) { enable #anticlone | rescan }

if (warning isin $sline(@Control,1)) { set %clonealert On }

if (Away isin $sline(@Control,1)) { enable #groupAWAY | away $$?="Write Your Message" | unset %awaymsgs %awaynicks | titlebar AWAY: No messages }

control

}

O&FF: {

if (Pinger isin $sline(@Control,1)) { disable #pinger | set %pinger Off }

if (replies isin $sline(@Control,1)) { set %replier off }

if (Pager isin $sline(@Control,1)) { set %nickpage Off }

if (Auto-send isin $sline(@Control,1)) { disable #dccsend }

if (Shitlist isin $sline(@Control,1)) { set %groupSHIT Off }

if (Swear isin $sline(@Control,1)) { disable #groupSWEAR }

if (Text isin $sline(@Control,1)) { disable #TEXT }

if (Auto-op isin $sline(@Control,1)) { disable #autoop }

if (CTCPs isin $sline(@Control,1)) { disable #ctcpreply }

if (Wallops isin $sline(@Control,1)) { disable #wallops | window -c @WallOps }

if (Cloner isin $sline(@Control,1)) { .disable #anticlone | unset %clonestat | title $me }

if (warning isin $sline(@Control,1)) { set %clonealert Off }

if (Away isin $sline(@Control,1)) { away | disable #groupAWAY | title $me }

control

}

-

&More

.&Help: {

  if (Pinger isin $sline(@Control,1)) { echo 4 -a  Help On: Pinger  | echo 4 -a This pings a person when they say "ping" then sends the reply to the channel. }

  if (replies isin $sline(@Control,1)) { echo 4 -a  Help On: Pinger  | echo 4 -a This sends your ping replies via a notice to the person.  If it is off, it will send it to the channel they said "ping" in. }

  if (Auto-send isin $sline(@Control,1)) { echo 4 -a  Help On: Auto-DCC  | echo 4 -a This will send a specified file to a person when they type !<your nick> <filename>.  The file must be in the specified DCC directory.  Note: It only works if they use your current nick. }

  if (Shitlist isin $sline(@Control,1)) { echo 4 -a  Help On: Shitlist  | echo 4 -a This kicks a shitlisted person off any channel you have ops in. }

  if (Swear isin $sline(@Control,1)) { echo 4 -a  Help On: Swear "Kick"  | echo 4 -a This warns a person that swearing is not welcome in your channel. It then kick/bans them if they swear again. }

  if (Text isin $sline(@Control,1)) { echo 4 -a  Help On: Text Flood Protection  | echo 4 -a When a person says the specified number of lines in 10 seconds without anybody else saying anything in between,   the script will kick them.  It will not kick 400 level users or users with ops on that particular channel. }

  if (Auto-op isin $sline(@Control,1)) { echo 4 -a  Help On: Auto-op  | echo 4 -a This ops a 400 user when they enter a channel.  This is not recommended, because it is possible for another person to make themselves look like a 400 user.  Tell your friends to get ops by typing /notice <you> !opme <channel> }

  if (CTCPs isin $sline(@Control,1)) { echo 4 -a  Help On: CTCPs  | echo 4 -a If you set it to active window, the ctcp replies (eg. ping, version, etc.), will be shown in the active window. }

  if (Wallops isin $sline(@Control,1)) { echo 4 -a  Help On: Wallops  | echo 4 -a When set to "Wallops in Wallop Window," this will open a window for the wallops and stop the messages from being displayed in the status window. }

  if ((Cloner isin $sline(@Control,1)) || (Operating isin $sline(@Control,1)) || (warning isin $sline(@Control,1))) { echo 4 -a  Help On: Cloner  | echo 4 -a The cloner detects clones.  First, you have to set the channel you want it to check for clones on.  Do that by clicking "Set Cloner" and typing in ALL the channels you want it to watch.  Keep in mind that it has to do a /who list everytime you join one of those channels.  Next, decide if you want the cloner to alert the channel with a notice when it detects a clone by setting the channel alert notice accordingly. If it does find clones, you can kick (F11) }

} 

.&Configure: {

  if (Text isin $sline(@Control,1)) { set %tripper $$?="How many lines of text in 10 seconds?" }

  if ((Cloner isin $sline(@Control,1)) || (Operating isin $sline(@Control,1)) || (warning isin $sline(@Control,1))) { set %clonechans $$?="What channels do you want the cloner to scan?" }

control

}
```

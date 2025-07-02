# i Final v2.0 by pai

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

**Script Name:** i Final  
**Version:** 2.0  
**Category:** full  
**Author(s):** pai  
**Email(s):** <i2@pairc.com>  
**Website(s):** [www.pairc.com/i2/](www.pairc.com/i2/)  
**Release Year:** 1998  
**Tags:** auto-away, raw events, ctcp replies, mp3, channel protection, auto-op, timer, flood protection, popup, addon, dcc, kickban, nicklist, auto-join, protection, gui, interface, auto op, dialog, auto join, highlight, trigger, away system, user levels, rejoin, alias, dns lookup, popups  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990909081159_i2/19990909081159_i2.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990909081159_i2.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1998-10-22",
  "min_file_date": "1998-10-20",
  "total_size": 87.89,
  "largest_file": "I2.TXT",
  "text": [
    "I2.MRC",
    "I2.TXT"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## I2.TXT

```text
----------
--------- i� final
-------- an exercize in scripting
------- by pai (i2@pairc.com)
------ www.pairc.com/i2/
-----
----
---
-- introduction
-

i� is a 'full' script for mIRC 5.41 or later. (a script designed to do a lot of general tasks, as opposed to an 'addon' script with one specific purpose)

i� was designed with a slightly different origin than most. It was created for a number of different reasons- For one, I needed a break from scripting Peace and Protection, so I started designing something different. As well, I wanted to design a script that was more 'light-weight' and could run fine on lower end machines and be easily transported around on a floppy, as well as just being easier to 'manage' and 'comprehend'.

My main goal, however, was simply to see how much I could fit into a single script file. The end result is i�, checking in at exactly 30,000 bytes, the 'limit' for a mIRC script file. I know you can load larger files, but the mIRC editor generally enforces a 30,000 byte limit. I know you can load multiple files, but I wanted to see what I could do in a single file. I think I did rather well. :) (as a side note, the script is also exactly 365 lines, one for each day in a normal year, and this text file is exactly 60,000 bytes. Coincidence? You decide.)

---
-- loading i�
-

Unlike most 'full scripts', i� doesn't come with mIRC or a mirc.ini file. Simply put i2.mrc into your mIRC directory, and type "/load -rs i2.mrc" (without the quotes) in any window.

When i� is loaded, it will set any default settings if you haven't previously loaded it, and all features work without needing any settings, so you can immediately start using i� and worry about browsing through the configuration options later.

---
-- features
-

The following features are each covered in more detail in seperate sections.

  Away system
  Channel protection
  Userlist
  Clone detection and scans
  Messages window
  Nicklist coloring
  CTCPs
  Pinging
  mIRC titlebar
  Nickname completion
  Flashing
  Nicknames
  Channels
  Notify
  Sound system
  Graphical user interface
  Being banned
  Sound schemes
  Other display
  Miscellaneous

  Function keys
  Commands
  Popups
  Configuration

You can search this file for '-- section' to find any of the sections above, or for '-- /command' for notes on that command.

---
-- away system
-

i� includes a simple but comprehensive away system. Use popups, F11, or /a to set yourself away, and popups, F12, or /b to set yourself back. You will be asked for a reason, then set away. (You can also specify a reason on the command line if you use /a.)

When you set away and back, you will announce this in all open channels. To avoid this and set away/back quietly, choose the appropriate popup, or hold Ctrl while pressing F11 or F12, or use the . (dot) prefix with the /a or /b command. (IE use /.a instead of /a)

Note that the announcements will also go to any open DCC chat windows. Also note that you will retain your away 'status' even if you disconnect, reconnect, set away while disconnected, etc.

When setting back, you will announce the amount of time you were away. When setting away, you will announce if your pager and/or message log is on- these may be enabled or disabled using popups or the /mlog and /pager commands. "/pager on" will turn the pager on, "/pager off" will turn it off, and "/pager" by itself will view the current setting. The same syntax applies to /mlog.

i� can automatically set you away after a certain amount of time, either quietly or announcing in open channels. The amount of time can be configured in away system configuration. (via popups or /cfg a) Enter a number of minutes, or leave it blank to disable the auto-away feature. You can also configure whether to set auto-away quietly or not. You can configure mIRC (in options, under IRC Switches) to automatically set back on keypress- i� will set you back quietly or not depending on whether you have auto-away set to be quiet or not.

From away system configuration you can also turn the pager and message logging on or off, as well as select a sound file for your pager. If no sound is selected and your pager is activated, a beep will be used. A user can page you (if your pager is on) by sending your a CTCP of PAGE, with an optional message. When you are paged, your pager will sound, the mIRC icon will flash if not active, and within mIRC the Messages Window will be made active with a line showing you who paged you.

Message logging works through mIRC's built-in Messages Window. (a.k.a. dedicated query window) If message logging is enabled and you set away, all private messages will go to a single, seperate window, which will be shown to you when you set back. (users whom you have a query window with will still have their messages shown in the query window.) In addition, all private notices will appear in the window. Any channel text that has your nick or any of your highlight words  (set in mIRC options, Perform section) will also be copied to the window.

A quick note- even if you normally use the dedicated query window, this should not 'mess up' your settings.

---
-- channel protection
-

i� has some simple channel protections that will automatically run in any channel you have ops. (or 'helper' status, on EFnet) Note that other channel ops will be immune to these protections. (IE a channel op will never be auto-kicked by i�)

The first method of channel protection is CTCP flood protection. i� will automatically tempban any site that floods a channel with a given number of CTCPs in a given number of seconds. (site meaning a single user or clones) All CTCPs except SOUND and DCC CTCPs are counted towards a flood. The flood trigger (number of CTCPs in number of seconds) can be configured in Channel Protection configuration. (from popups or /cfg p) Set either value to blank to disable this protection.

The second channel protection is text flood protection. i� automatically kicks any user who floods the channel with too many lines of text within a given number of seconds. Again, the flood trigger is configured in Channel Protection configuration. (from popups or /cfg p) Set either value to blank to disable this protection.

The third channel protection is word kicks. i� will kick any user who says a word that is in a list you define. This list is configured in Channel Protection configuration. (from popups or /cfg p) When specifying a list of words, seperate them with commas. You can specify 'patterns' as well as words using wildcards- For example, while 'hell' will only match that exact word, 'hell*' would match 'hello', 'hellp', etc. '*az' would match any word ending in 'az', '*blah*' any word with 'blah' in it, etc. Word kicks ignore punctuation and colors in the users' messages, but otherwise must match an exact word or pattern. ('blah' would match 'blah-' or '(blah)' but not 'blahblah'.)

The fourth channel protection will kickban any user who brings too many clones into a channel. The max number of clones allowed is set in Channel Protection configuration. (from popups or /cfg p) Offending users will automatically receive a 'permanent' ban and all clones will be kicked. The ban will match the site of the user (*!*@site.domain.com format) and then a second ban will be added in 'standard' type 3 form (*!*ident@*.domain.com) unless it would ban innocent users. Note that unlike other protections, clone protection does not take op status into account, as when a user joins they do not have ops.

Remember that you can set any setting (including channel protection values) to 'nothing' (select the option and press ESC) to disable that protection.

By default, i� protects all channels you are in. (as long as you are opped, or 'helper' on EFnet.) You can force i� to only protect certain channels in Channel Protection configuration (from popups or /cfg p) by specifying a single channel or list of channels seperated by commas. If a list is not specified, all channels are assumed; otherwise, only channels in the list are protected.

Any site (user or clones) that retriggers a protection within a certain number of seconds will get a 'permanent' ban and kick. The number of seconds is configurable from Channel Protection configuration. Leave this setting blank to disable this feature. Note that the ban will occur even if the protection triggered the first time and protection triggered the second time are different. For example, if someone text floods, gets kicked, then rejoins and sets off a word kick, they will get banned for a repeat offense. This was left this way on purpose.

See the next section for details on i�'s userlist, which is related to channel protection.

---
-- userlist
-

i� has simple userlist features built-in. You can add users to your userlist as either immune users or exiled users.

Immune users are immune to ALL channel protections. An immune user will never set off channel flood protections, clone kicks, etc. This will not stop you from manually kicking, banning, etc. the user.

Exiled users will automatically be kicked and banned as soon as they join, in any channel you have ops in. (unlike channel protections, this works in all channels you have ops in, disregarding the 'protect channels' list.)

You can add and remove users from your userlist using nicklist popups, under 'lists'. From there you can add or remove from the immune or exiled lists. (note that if you add a user to the exiled list from the nicklist popups, you will immediately kickban them if you are opped.) Adding users in this way always uses the standard (type 3) *!*ident@*.domain.com mask. (use the userlist editor for better control over this.) From these popups, you can also add and remove nicknames on mIRC's protect list, or add users by mask to mIRC's auto-op list for a specific channel. (see mIRC options to enable these lists, or mIRC help for details on how these work) You can also permanently or temporarily ignore users.

Note that i� is not 'smart' enough to kickban exiled users that are already in the channel when you become opped.

You can use the 'userlist' popup (channel or menubar) or the /user command to view and edit your userlist. You can select one or more users and right-click for popups to remove those users from your userlist, or add/remove the immune/exiled status. (Note that although you CAN give a user both immune and exiled status, this doesn't make much sense.) You can also add a user- you must enter a full address mask. (for example, *!*blah@*.earthlink.net, not just *blah@*.earthlink.net.)

The userlist and userlist editor is designed to be compatible with other scripts that use userlevels. Users in your userlist with other levels (from other scripts) will also be shown in the /user command, and can be removed. You cannot, however, view or change these 'other' levels- so be aware of this if your other scripts use userlevels. (i� does not use numeric user levels, so there should be no conflicts there.)

---
-- clone detection and scans
-

i� will display when a clone joins the channel, telling you how many clones the user has and their nicks, using bold to grab your attention. A note will be included reminding you that you can press F7 for 'details'. F7 at that time will run a clone scan on that channel.

The /scan command or 'clones' popup (or F7 at the appropriate time, see above) will run a clone scan on a channel. You may either specify the channel (using /scan #channel) or use it within a channel window to scan that channel. The scan will bring up a window (if any matches are found) showing all clones on the channel.

You can also specify an address mask using /scan, or use the 'scan' popup, to scan a channel for all matching users. (for example, "/scan *.earthlink.net" or "/scan #anime *.earthlink.net" will scan for all users on Earthlink.) Again this will bring up a window showning all matching users on the channel.

From this window, you can select one or more users, just like a nicklist, and right-click for all the normal nicklist options such as whois, ping, etc. Op commands such as kick and ban will be shown if you are opped on the channel, and all commands will work on multiple users. (see nicklist popups for more details.)

For each user, the window will show the scanned address, a number, the nickname, and the user's full address. A total count of matching users will be shown in the window's titlebar.

---
-- messages window
-

i� uses mIRC's built-in Messages Window (a.k.a. dedicated query window) for a number of useful purposes. Not only does the away system make clever use of it (see above) but you can also use it to convieniently catch notices. In Miscellaneous Configuration (/cfg or via popups) you can seperately configure i� to show op and channel notices and/or private notices in this seperate window. You can also configure the window to open minimized or not.

This is most useful to keep track of your opnotices seperate from your main windows, or keep all your private notices in one place. i� will automatically fill the editbox of the Messages Window if it is active, so that you can quickly reply back to the notice. For example, if you receive an opnotice on #mirc, the editbox will automatically contain "/n @#mirc ", so you can simply enter a message to reply. When you do, the editbox will again contain "/n @#mirc " to allow you to continue to send messages. Private notices will cause "/n nick " to appear, instead.

Note that the window will not catch DCC notices, which mIRC automatically places in the Status Window anyways.

---
-- nicklist coloring
-

i� can color-code your channel nicklists based on a user's channel status. You can select a different color for yourself as well as ops, voiced users, and regular users. (as well as 'helpers' on EFnet.) You can configure the colors used via Nicklist Color configuration. (/cfg n or via popups)

---
-- ctcps
-

i� has a number of features related to CTCP display and protection.

i� will automatically protect you from any CTCP flood, not replying to excess CTCPs and totally ignoring all CTCPs if needed. When you receive a CTCP, i� will display the user and their address, as well as the CTCP received, to a window. i� automatically stops sending replies after any three CTCPs- If you reply to a CTCP, i� will show it in bold, otherwise it will not. After too many CTCPs, an alert will be shown and all CTCPs are ignored for 60 seconds.

i� replies to FINGER, PAGE, PING, TIME, and VERSION CTCPs. Like standard mIRC (as of 5.4) it does NOT respond to USERINFO or CLIENTINFO CTCPs.

i� will display CTCPs in a channel if they originated from that channel, otherwise they will be shown to either the active, status, or a seperate window, depending on how you configure it. (/cfg c or via popups) i� will display CTCP replies to the active, status, or a seperate window depending on configuration as well- this can be a different setting from CTCPs.

---
-- pinging
-

i� sends special pings that allow measuring ping times to millisecond (ms) accuracy, and will show these times in display of ping replies. i� can be configured to show ping replies in the active, status, or a seperate window, in CTCP Configuration. (/cfg c or via popups; this is, again, a different setting than for normal CTCPs and replies.)

If shown in the active or status window, the ping time will be colored different based on whether it is under 5 seconds, betweem 5 and 20 seconds, or over 20 seconds. (the default colors are blue, purple, and red- these can also be configured in CTCP Configuration.)

If showing pings to a seperate window, the information will be shown in columns, with a colored bar to represent the ping time. (the number of seconds is still shown.) The bar itself will be colored depending on the time. (under 5 sec, 5 to 20 sec, or over 20 sec.) Note that the bars are based on an exponential scale- The bar will increase a lot more noticably for the first few seconds, and a lot slower for pings over one or two minutes, for example.

Note that i� will try to detect 'fake' ping replies, displaying it differently if the timestamp appears to be tampered with.

---
-- mirc titlebar
-

i� shows various useful bits of information in the titlebar of mIRC. If you are away, your away reason will be shown there. If the current window is a channel, i� will show the number of ops, 'helpers', (EFnet) and voiced users, as well as percentages and a count of all users total. If the current window is not a channel, your current nickname and address will be shown instead.

i� also measures your self-lag (lag to the server) approximately every thirty seconds, and will show this in the titlebar as well, rounded to the nearest tenth of a second. Other than the display in the titlebar, this measurement of self-lag is completely quiet and transparent.

---
-- nickname completion
-

i� contains some basic nickname completion features. You can configure the characters that will trigger nick completion in text you enter. (/cfg or Misc. Config in popups) To use nick completion, follow a partial nickname with the character. For example, if your trigger character is : (a colon) and you enter "so: hello there" in a channel, it (may) appear as "SomeGuy: hello there". This only works for the first word in your line of text.

You can also trigger nick completion automatically when using i� one-letter command abbreviations. For example, when using /k to kick, /q to query, /p to ping, etc. you only need to enter part of the nickname if the user is in the current channel. (a trigger character is not needed.) This will not trigger on users not in the current channel, and if you want to avoid nick completion, use the full command (in these examples, /kick /query or /ping.) You can enable or disable this feature in Misc. Config. (/cfg or via popups.)

Note that the nickname completion only works on users in the currently active channel window, and is not perfect. (for example, if more than one user matches, it may get the wrong user.) It also doesn't work if you specify multiple users for a command.

---
-- flashing
-

i� can automatically flash the mIRC icon (if mIRC is minimized) on certain events. It automatically flashes if you are disconnected from IRC. You can also configure i� to flash for a new query window, any private message, and/or any DCC message. These can be enabled or disabled in Miscellaneous Config. (/cfg or via popups.) Note that ALL flashing is disabled when you are away, except for a flash if you are paged.

---
-- nicknames
-

If you try to change to a nickname that is already in use, i� will automatically perform a /whois on the user. You will also be told that you can press F7 to rety the nickname. If you press F7 at this time, i� will grab the nickname as soon as it is no longer in use. i� will check the nickname approximately every thirty seconds, and will change to that nickname as soon as it is free.

You can also use the /retry command (/retry nick) to retry a nickname, or /retry by itself to halt any nickname being retried. Any retries are automatically halted if you get disconnected.

---
-- channels
-

i� can store up to nine channels in the menubar/channel popups for quick access. The popups contain options for adding and removing the channels, as well as a popup to join them all and a popup to enable or disable auto-join. If auto-join is on, you will automatically join all channels in the popups when you connect to any server.

You can also press Ctrl and F10 to join all channels in the popups.

If you try to join a channel but cannot, you will be told why (invite-only, banned, key needed, channel limit is full) and be able to press F7 to automatically retry the channel. i� will try to join approximately every 30 seconds.

You can also use the /retry command (/retry #channel) to retry a channel join, or /retry by itself to cancel all channel retries. More than one channel can be retried at a time. As soon as the ban or mode is removed that is preventing your access, or you gain access by some other method (an invite, for example) you will automatically join the channel within thirty seconds.

---
-- notify
-

i� enhances mIRC's built-in notify list to provide some additional functionality. In order to use the added features, you must enable them in Display Configuration. (/cfg d or via popups) Enable notify address checks, and optionally enable notify display in active window and hiding of notify if address check failed.

Once i�'s notify features are enabled, i� will look up the full address of anyone on your notify list who comes on to IRC, and display it in the notify message, along with a note on whether they are away or here.

You can put an address mask as the first word of a user's notify note, and i� will verify that the address matches. For example, if the note for pai is "*goddess*", then you will be told whether or not pai (when they are online) has an address that matches *goddess*.

The option to display to the active window will show notify events in the current window; otherwise, they will be shown in the status window. If you elect to hide notify events if the address check fails, you will not be told when users come online or offline if their address does not match the mask given in their note. (see above) This will not apply to users who have no address check in their notify note.

Note that for these features to look best, you should turn ON the mIRC option "Only show notifies in notify window" in the notify list options. (Alt+B for the address book, go to the Notify tab, and enable this option if you have i�'s notify features enabled.)

---
-- sound system
-

i� has a simple sound system for playing MP3s and MP2s as well as the usual wavs and midi files. All the usual mIRC options for sound files apply to WAV and MID files, and you configure MP-related options in i�. (/cfg m or via popups) From there, you can configure your MP player (leave it blank and you will use the default player associated with MP2/MP3 files) and your default MP directory, as well as a leech command. You can also configure i� to only play MP files locally (IE only on your screen) and/or to play MP files that other people play.

The simplest way to play a sound is via i� commands. Use /wav for WAVs, /mid for midis, and /m for MP2/MP3 files. The command by itself will ask you to pick a file. You can specify a filename, a wildcard mask, or one or more words to find a matching file- for example, "/m cure" would play a random MP that had the word 'cure' in it. Use * to play any random file, or ? to ask you what to search for. For example, "/mid *" will play a random midi. /r will play a random MP- a shortcut for "/m *".

You can also play midis and WAVs through mIRCs /sound command- You can also use i�'s shortcut /s which has 'expanded' the command to automatically ask you to pick a file and action if you do not enter one. (An action is what is shown when you play the file) When using /wav and /mid you will also be asked for an action- if you do not give one, a default one stating what you are playing and it's size will be shown.

In MP2/MP3 configuration you can set a leech command. (leave it blank to disable this feature) When a leech command is enabled, anytime you use /wav /mid or /m in a window, the command will be announced. Any user can use the command to 'leech' (get) the LAST file you played. They cannot request any old file- mIRC however has support for this feature. The leech command is ignored if that user is already leeching that file.

If the proper option is enabled in MP configuration, you will play MP files that other users play if they play them using a compatible script. (such as P&P or most MP scripts that use SOUND CTCPs.) When a user plays an MP, the script will search for a matching file in your directory, and if found, it will tell you and play it.

You can play files using /wav /mid and /m in the status window if you do not want to play them 'to a window' and have everyone see them.

Sounds are sent using SOUND CTCPs. Filenames with spaces are supported- In the SOUND CTCP, the spaces are replaced with ? (question marks) to keep it as one word. (this is compatible with P&P and any MP script that uses $findfile())

---
-- graphical user interface
-

i� includes a simple GUI interface for configuration. (amazed I managed to fit a decent GUI into the script? so was I!) It is simple to use, however it is mouse-only- Sorry, there are no keyboard alternatives. (although if ESC is set to minimize windows in mIRC options, you can use ESC to cancel.)

Most dialogs contain some sort of checkboxes- they look like little buttons, and when clicked toggle between on (checked) and off. (blank) Some checkboxes are mutually exclusive- selecting one in the group will disable all others in the group. (similar to Windows radio buttons.) In this case you cannot turn off the current option- you must instead select another option.

Dialogs also contain buttons- OK/Cancel buttons are used to confirm or cancel any setting changes. Other buttons, when clicked, allow you to set an option. Enter nothing or press ESC to 'clear' and 'disable' the option. Some options require you to select a file or directory- do this as you usually would. Some buttons are for picking a color- clicking the button will cycle through each of mIRC's 16 colors. When picking sound files, there will be a little '!' button next to the file selected. Click this to 'test' the sound file.

Remember that, for options that require you to enter text or a number, you can always press ESC or enter nothing for a 'blank' value. This will disable an option or feature.

---
-- being banned
-

If you are banned in a channel, i� will alert you to the fact. If you are opped, it will automatically unban it. If you were the one to set the ban, nothing more will happen, otherwise i� will attempt to kick the user who set the ban, for your (and possibly the channel's) safety. (it does not try to ban the user in 'revenge')

---
-- sound schemes
-

i� allows you to assign sounds to fourteen different IRC events. (fifteen if you count the away system's pager) You can configure 'system' sounds (/cfg s or via popups) and 'user' sounds. (/cfg s u or via popups)

'System' sounds include- connecting to IRC, disconnecting from IRC, you joining a channel, you parting a channel, you being opped, you being deopped, and any user being kicked.

'User' sounds include- notify, new query, new DCC chat, new DCC file transfer, a file being fully received, a file being fully sent, and any file send/receive error.

Sounds will play even when you are away. Note that the sounds for when you are opped and deopped also apply to being voiced and devoiced, and given/losing 'helper' status on EFnet.

Sounds can be any standard WAV or midi file.

---
-- other display
-

i� has a number of other display-related features and options.

Most IRC messages/errors/raws are displayed in a different (nicer?) format. A good number of raws are displayed to the active or appropriate (query/channel) window, in various colors. (CTCP color for errors, etc.) The topic and who set it is displayed to the channel. The mode and channel creation time are hidden on join, but shown in the channel if requested using /mode.

The 'user is away' message will no longer fill your status window- instead, it will appear once in the appropriate query (or other window) and then not appear again unless you don't message the user for 45 seconds.

The same goes for 'no such user'- If you send multiple messages to a user who has left, you will only see one 'no such user' error, instead of it 'flooding' your status screen.

Whois replies can be configured to be shown in the active, status, or a seperate @Whois window. (in Display Configuration; /cfg d or via popups) You can also configure channel names replies (which you automatically receive when you join a channel) to appear in status, the channel, or be entirely hidden. (also in Display Configuration) This only applies to names display when joining a channel- if you request a names list using /names #channel, it will always show in status.

All i� display uses your standard mIRC color choices. (these colors are chosen in mIRC color configuration in Tools or by pressing Alt+K) For example, CTCPs are shown using the CTCP color, notify events using the notify color, and many raws using CTCP, info, or normal colors. Many other i� echos are displayed using the 'other' color. No seperate i� configuration is needed for display colors. (although you can configure ping time colors and nicklist colors, per earlier sections)

---
-- miscellaneous
-

When you disconnect from IRC, i� will show the amount of time you were connected, in the status window.

i� will have no problems if you change the mIRC command character, in options, from the default /. (slash)

All mass modes (opping, deopping, etc. via popups, etc) are done in sets of four. This is supported by 99% of all networks. Although some networks support six modes at a time, this was not implemented.

mIRC's IAL is forced on and filled when you join a channel, as i� requires it for quick clone/user scans and nick completion, among other things.

All variables begin with %� to avoid conflicts with other scripts, and i� will run fine even if you clear all it's variables. (although you will lose some settings.)

i� has an option to show 'highlighted' lines in the active window. (in misc options; /cfg or via popups) When on, any line that contains one of your 'highlight' words (set in mIRC options, perform section) will be re-echo'ed in the active window if needed, so that you will see it.

You can quickly set any modes in a channel using the 'pseudo-commands' /+ and /-. For example, /+tn will set modes +t and +n, or /-o pai will deop pai. For opping, deopping, etc. modes you can specify multiple people or a filter mask and it will work properly. (such as /+o user1 user2 user3 or /-v *.net)

When a new query opens from a user's message, i� will add a line stating which channel(s) that user is in with you, if any, so you know 'where they are coming from'.

All /dns will appear in the active window, and include a reminder that you can press F7 to copy the last result to the clipboard.

When a netsplit occurs, the flood of QUITs will be 'compressed' into a single line. (although it may wrap to multiple lines)

i� replaces the default /userhost command for it's own purposes, but it will still work in other scripts and for yourself. (in fact, for your personal use it will be much more 'readable' output.)

You can scan your current server's ports using the /ports command or appropriate popup in status, and connect to another port using a double-click. The ports will be sorted by speed. (this may not work on some networks such as DALnet.)

All custom windows in i� (port scan, ping/CTCP window, whois window, clones/scan window, userlist editor) automatically remember their position and font settings, so if you move them or change their font, they will open at the same place and with the same font next time.

---
-- function keys
-

i� includes the following function key definitions-

-- Ctrl and F1

Open this text file

-- F4

Allows you to reply to the last notice you received (whether a private notice or an opnotice)

-- F5

Pings the current window (query or channel) If you select a nickname in a channel nicklist, you can immediately press F5 to ping that nick.

-- F6

If used in an open query window, this will close the query and attempt to DCC chat the user.

-- F7

Varies. Whenever this can be used, a note will be displayed onscreen as to what it will do. This is used to show details on clones when a clone joins a channel, copy the most recent DNS to the clipboard, retry a nickname that is in use, or retry an attempt to join a channel if you were prevented from joining.

-- F8

Run/open the last file you received via DCC.

-- Ctrl and F8

Open the folder containing the last file you received via DCC.

-- F9

Edit the topic in the currently active channel window.

-- F10

Connect to the server and port you most recently connected to.

-- Ctrl and F10

Join all the channels in the channels popup menu. (menubar/channel popups)

-- F11

Set yourself away.

-- Ctrl and F11

Set yourself away, quietly.

-- F12

Set yourself back.

-- Ctrl and F12

Set yourself back, quietly.

---
-- commands
-

i� includes a good number of single-letter 'quick' commands as well as a number of other useful commands.

[parameter] is an optional parameter, *parameter* is a required parameter. Optional parameters may be requested of you if not given.

ALL single-letter commands (except /i) perform nickname completion, unless that option is disabled in configuration. (if you specify multiple nicks, they are NOT nick completed.) In alphabetical order, the single-letter commands-

-- /a [reason]

Set yourself away. You will be asked for a reason if you do not give one. Use /.a to set away quietly.

-- /b

Set yourself back from being away. Use /.b to set back quietly.

-- /c <target(s)> <ctcp>

Sends a CTCP to a user or channel. You may specify multiple targets if you seperate them with commas.

-- /d [nick]

Initiates a DCC chat.

-- /e <nick(s)>

Performs an 'extended' whois on a user. This is like a normal whois, however it grabs the information from the user's server. This is affected by lag (and may take a long time to return) but will include the user's idle and signon time. (like a normal whois, you may specify multiple nicks.)

-- /f [nick(s)] [file(s)]

Sends a file to a user. (DCC send) If you specify the file, you must specify the user as well. You may specify multiple users (seperated by commas) and the file will go to each user SEPERATELY. (unlike a normal dcc send, which will not be sent properly to multiple users.) You may specify multiple files seperated by spaces. (to specify filenames with spaces, enclose them in quotes.)

-- /h <nick(s)|mask>

Gives 'helper' status (EFnet) to one or more users. Specify one or more nicknames, or a mask (such as *.earthlink.net) to act on all matching users. If multiple nicks are specified, they will NOT be nick completed.

-- /i [ignore parameters]

Simply a shortcut for /ignore. (no nickname completion or parsing is performed)

-- /j [channel(s)] [key(s)]

Joins channel(s). You may leave the # symbol off of a channel if you desire. If you do not specify any channels, you will be asked for the channel to join.

-- /k [channel] [num] <nick(s)|mask> [reason]

Kicks one or more users from a channel. The channel is optional and will default to the current channel. You may specify multiple nicks seperated by commas, a single nick, or a mask to kick matching users. (such as *.aol.com) If a reason is not given you will be asked for a reason. (hold Shift while pressing Enter for no reason)

The 'num' parameter is optional. If given and non-zero, users will be banned as well using the appropriate banmask from the mIRC help file. For example, 3 performs a standard *!*ident@*.domain.com ban, 2 will do a *!*@site.domain.com ban, 4 a full *!*@*.domain.com ban, etc. (see mIRC help, under $mask(), for details.)

The number may also have a decimal portion, which specifies the number of seconds before any bans are undone. For example, if 'num' is 3.20, a type 3 ban will be performed and then unbanned after 20 seconds.

If banning is being done, all matching users are deopped first (in as few mode changes as possible) and then the ban(s) are performed in as few mode lines as possible.

Note that even if you specify a mask to kick, if you ask to perform a ban, the ban will be performed on each individual user. For example, /k 3 *.net will kickban every user who matches *.net individually, not simply ban *.net.

The /k command basically handles almost any kick, ban, tempban, filterkick, or masskick situation once you know how the parameters work.

-- /l [reason]

Leaves (parts) the current channel. Some networks allow you to specify a part reason.

-- /m [filename|searchstring|?|*]

Plays an MP2 or MP3 file. (see sound system section) Specify nothing to select a file, ? to be asked for a search string, (or specify the search string on the command line) specify a filename or file mask to use that file, or * to play any random file.

-- /n <target> <msg>

Sends a private notice. 'target' can be a user, a channel, or @#channel to send an opnotice. (this works even on networks that don't support the usual /notice @#channel format.)

-- /o <nick(s)|mask>

Ops one or more users. Specify one or more nicknames, or a mask (such as *.earthlink.net) to act on all matching users. If multiple nicks are specified, they will NOT be nick completed.

-- /p [target]

Pings a target user/channel/etc. If no target is given, the active query or channel is used. You may specify multiple targets if you seperate them with commas.

-- /q <nick(s)> [message]

Opens a query window with one or more users. (if you specify multiple nicknames, seperate them with commas) You may optionally specify a message which will be said in the query window.

-- /r

Plays a random MP2 or MP3. Simply a shortcut for /m *.

-- /s [file] [action]

A shortcut for mIRC's /sound command. If parameters are given, this is exactly like using /sound. If not, you are asked to select a WAV or midi file, and to enter an optional action.

-- /t [topic]

Changes the topic on the given channel. If no topic is given, this will view the topic on the channel.

-- /v <nick(s)|mask>

Gives voice to one or more users. Specify one or more nicknames, or a mask (such as *.earthlink.net) to act on all matching users. If multiple nicks are specified, they will NOT be nick completed.

-- /w <nick(s)>

Performs a whois on the given nickname(s).

-- /x [channel] [num] <nick|mask|address> [reason]

Bankicks a user or address from a channel. The channel is optional and will default to the current channel. You may specify a single nick, a full or partial address, or a banmask. If no reason is given, when the kick is performed a reason of 'banned' will be given. (you cannot specify multiple nicks.)

The 'num' parameter is optional and defines what sort of ban will be used from the mIRC help file. For example, 3 performs a standard *!*ident@*.domain.com ban, 2 will do a *!*@site.domain.com ban, 4 a full *!*@*.domain.com ban, etc. (see mIRC help, under $mask(), for details.)

If you specify a nickname, a full address (nick!ident@address.com) or a nickless address (ident@address.com) the default ban is *!*ident@*.domain.com. If you specify nick!ident, you will get a nick!*ident@* ban. If you specify just a domain.com, you will get a *!*@domain.com ban.

If you specify the banmask yourself, it will be used verbatim.

The number may also have a decimal portion, which specifies the number of seconds before the ban is undone. For example, if 'num' is 3.20, a type 3 ban will be performed and then unbanned after 20 seconds.

All matching users are deopped first (in as few mode changes as possible) and then the ban is performed in it's own line. (there will always be exactly one ban.)

Note that if you specify a mask to ban, the ban will be set exactly as given, then all matching users kicked. For example, /x *.net will ban *.net, then kick every user who matches.

The /k command can usually handle your bans, but /x can be shorter to type and is geared more towards banning, while /k is geared more towards kicking.

-- /@ [channel] <msg>  

Sends an opnotice to the given channel. Defaults to the current channel if none is given.


Other commands included- (none of these support nickname completion)

-- /ctcp <target> <ctcp>

Just like mIRC's built-in /ctcp command, however it was 'replaced' so i� could support millisecond pings.

-- /ping [target]

Pings the given target (user or channel) or pings the current window (query or channel) if no target is given.

-- /wav [filename|searchstring|?|*]

Plays a WAV file. (see sound system section) Specify nothing to select a file, ? to be asked for a search string, (or specify the search string on the command line) specify a filename or file mask to use that file, or * to play any random file.

-- /mid [filename|searchstring|?|*]

Plays a midi file. (see sound system section) Specify nothing to select a file, ? to be asked for a search string, (or specify the search string on the command line) specify a filename or file mask to use that file, or * to play any random file.

-- /scan [channel] [mask]

Scans a channel. If no channel is given, the current is used. This actually performs two seperate tasks- If no mask is given, a scan for clones is performed. If a mask is given, a scan for matching users is performed.

-- /away [reason]

Sets yourself away (if a reason is given) or back. (if no reason is given) This supports many additional 'features' that the usual /away does not support. (see away system, above, for more details.) Use /.away to set away or back quietly.

-- /dns [parameters]

Just like mIRC's normal /dns command, except output is displayed to the active window.

-- /cfg [code]

Opens up an i� configuration window. Specify a code for the settings window to open- 'p' for channel protection, 'a' for away system, 'd' for display, 'c' for CTCPs, 'n' for nicklist colors, 'm' for MP2/MP3 options, 's' for system sounds, 's u' for user sounds, or nothing for miscellaneous config.

-- /userhost <nick(s)>

Just like the normal /userhost command, except with improved display of output.

-- /retry [channel|nick]

If a channel is given, this will try to join that channel every 30 seconds (quietly) until you are let in. If a nickname is given, this will check that nickname every 30 seconds (quietly) and change your nick to that once it is free. If nothing is given, this will cancel all channel and any nickname retries. (multiple channels can be retried at once.)

-- /pager [on|off]

This will turn your pager on or off, or if no setting is given, view the current pager setting. (see away system for details.)

-- /mlog [on|off]

This will turn your message logging on or off, or if no setting is given, view the current setting. (see away system for details.)

-- /ports

Performs a port scan on the current server, if it supports /stats l. (DALnet, for example, does not support this.) You can then double-click on a better port to reconnect using that port.

-- /user

Opens up your userlist for viewing and editing. From here you can add/remove users, or give or remove immune or exiled status of users.

-- /+modes
-- /-modes

This is a special 'pseudo' command. It will set or unset any channel modes. For example, /+tn will set the modes 't' and 'n'. /-p will unset the mode 'p'. Things like /+t-pl+k test will work. Basically, this is exactly like a mode command.

If you specify /+o, /+v, or /+h, you can specify as many nicks as you want, or a mask, and it will work on all the nicks you specified. (using multiple lines if needed). This also goes for /-o, /-v, and /-h. (Note that this means you don't need /+ooo a b c, just /+o a b c.)

If you specify /+b, /+e, or /+I, you can specify as many masks as you want, and it will work on all the nicks you specified. (using multiple lines if needed). This also goes for /-o, /-v, and /-h. (So instead of /+bbb *.net *.com *.edu, use /+b *.net *.com *.edu.)

---
-- popups
-

This section briefly covers the popup menus available in i�. Note that most popups work under circumstances that other scripts might have trouble with. (for example, ALL nicklist popups will work with multiple selected users.)

-- Query/DCC chat window popups

whois:
Looks up information (/whois) on a user.

extended:
Like a normal whois, but also gets idle and signon time.

dns:
DNS lookup on a user. (gets IP address)

ping:
Pings a user. (to get lag time)

chat:
Sends a DCC chat request to a user.

send:
Sends a file to a user via DCC.

ignore:
Lets you perform an ignore on a user using one of the given masks, or a temporary (three minute) ignore. Any ignore, except for a temporary ignore, will also close the query window.


-- Status window popups

connect:
Lets you enter a server and port to connect to.

ports:
Performs a port scan on the current server.

server name:
A list of the nine most recent server and ports you were connected to, for quick connection.

quit:
Quit IRC and disconnect from you current server.


-- Channel and Menubar popups (same)

config:
Lets you configure various i� settings.

channels:
Lets you join one of up to nine channels you have set, add or remove channels from this list, join them all, clear the list, or toggle auto-join for these channels on or off. (auto-join will join all the channels when you connect to any server, as will Ctrl and F10) add/remove work on the current channel window, or ask you for a channel if none are active.

mp2 / mp3:
Select or find an MP2/MP3 file to play.

wav:
Select or find a WAV file to play.

midi:
Select or find a midi file to play.

clones:
Scan the current channel for clones.

scan:
Scan a channel for matching users.

userlist:
View and edit your userlist (immune and exiled users)

away:
From this submenu you can set yourself away or back, or set away or back quietly, as well as view and toggle the current status of your pager or message logging.


-- Channel nicklist and @Scan (clone/user scan) popups

(note- ALL these popups work on multiple users)

opping :
Op, deop, voice, devoice users. (also includes giving and taking 'helper' status on EFnet) Works on multiple users.

kick:
Kick one or more users.

tempban:
Temporarily ban (30 seconds) and kick one or more users.

bankick:
Ban and kick one or more users using a selected banmask style.

whois:
Looks up information (/whois) on a user or users.

ping:
Pings one or more users. (to get lag time)

query:
Opens up a private query window with a user. (works on multiple users as well)

chat:
Sends a DCC chat request to a user. (works on multiple users as well)

send:
Sends a file to a user via DCC. (works on more than one user if desired)

lists:
Allows you to add or remove users to and from your immune list, your exile list, or mIRC's protect list. You can also temporarily or permanently ignore a user, or add them to mIRC's auto-op list for a channel using a specified mask. Note that your immune and exile lists are controlled by i� and are based on masks, the protect list is controlled by mIRC and based on nicknames, and the auto-op list is controlled by mIRC and based on masks. (you must turn on mIRC's auto-op and protect lists in mIRC options, under Control, for them work.) These popups will all work on one user or many users. Exiling a user will also bankick them.

---
-- configuration
-

This section covers the configuration options available in i�. All configuration sections can be reached via the popups in channel or menubar, under 'configuration'. Each section includes the command you can type to access the configuration manually.

Remember that you can clear ANY setting (leave it blank) to disable that feature.

-- protection (/cfg p)

Here you can configure options for channel protection.

'Tempban on X CTCPs in X seconds' allows you to configure how many channel CTCPs in how many seconds (from one site) will trigger a tempban.

'Kick on X text lines in X seconds' allows you to configure the number of channel text lines in how many seconds (from one site) will trigger a kick. This also counts actions and channel notices.

'Bankick on X clones total' allows you to configure the number of clones from one site (in a single channel) before you kickban them all.

'Word kicks' allows you to configure words and word patterns (using * wildcards) that you will kick users for. Seperate multiple words or patterns using commas.

'Channels' allows you to configure the channels you will protect. Leave it blank to protect all channels, or enter one or more channels (seperated with commas) to protect only those. (You still must be opped or have 'helper' status on EFnet.)

'Ban repeat offender within these seconds' is the number of seconds during which a repeated offense will cause a user to be 'permanently' kickbanned. A repeated offense means a user triggering your channel protection a second time, whether it be the same protection or a different protection.

-- away (/cfg a)

You can configure how your away system works here.

'Autoaway after this many minutes' sets the number of minutes before you are automatically set away from being idle. (IE if you don't talk or perform any commands during this time, you will be set away.) Remember that you can clear this to disable this feature.

'Quiet autoaway / back on keypress', if set, will set you away quietly when you are autoaway, and set you back quietly if you use the mIRC option 'Cancel away on keypress'. If not set, these events will be done 'not quietly', IE you will state you are away or back in all channels.

'Pager on' will enable or disable your pager.

'Message logging' will enable or disable message logging.

'Pager sound' allows you to set the sound that will play when your pager is activated. (if not set, beeps are used.) Use the '!' button to test the sound.

-- other (/cfg)

This is where miscellaneous options are configured, that did not fit into other categories.

'Nick completion on these characters' allows you to set the characters (such as colon, dash, comma, etc.) that will trigger nickname completion in text you enter in channels. For example, if this is a colon, and you type "bla: hello" in a channel, you might end up saying "Blargh: hello" if that user is on the channel. Remember that you can clear this to disable this feature.

'Use nick completion in commands', if on, will attempt to nick complete nicknames used in one-letter aliases such as /k, /p, /q, etc. (you don't use the above characters, just type the partial nick, such as /q bla) This will not affect other commands such as /kick, /ping, etc.

'Show highlighted lines in active', if on, will echo lines to your active window if they contain your nickname or one of your highlight words, and it was said in another window. (highlight words are set in mIRC options, under Perform.)

'Show channel/op notices in dqwindow', if on, will use a seperate 'Messages Window' to show all channel and op notices you receive.

'Show private notices in dqwindow', if on, will use a seperate 'Messages Window' to show all private notices you receive.

'Minimize dqwindow when opened', if on, will minimize the 'Messages Window' when it is opened, if due to a notice from the above options. If not on, it will become the active window.

'Flash on new query' will cause the mIRC icon to flash if you are in another application and someone opens a new query window with you. (this is automatically disabled when you are away.)

'Flash on private message' will cause the mIRC icon to flash if you are in another application and someone privately messages you. (this is automatically disabled when you are away.)

'Flash on DCC message' will cause the mIRC icon to flash if you are in another application and someone says something in a DCC chat window you have open. (this is automatically disabled when you are away.)

-- display (/cfg d)

From here, you can configure display-related options.

'Whois in status' will show all /whois replies in the Status Window.

'Whois in active' will show all /whois replies in the currently active window, if possible.

'Seperate Whois window' will put /whois replies in a seperate window, preventing them from cluttering up your other windows.

'Names (on join) in status' will show the list of users in a channel in status, when you join the channel. (like normal mIRC)

'Names (on join) in channel' will show the list of users in a channel in the channel, when you join the channel.

'Hide Names (on join)' will not show the list of users in a channel at all, when first joining the channel. (they will still show if you request them manually with /names.)

'Perform notify address checks' enables i�'s notify features, which not only show in a more informative manner but allow you to check the address of a user.

'Notify in active' will show notify and unnotify events in the active window. (instead of Status) This only works if the above option is enabled. (otherwise, use mIRC's options.)

'Hide if failed address check' will hide notify and unnotify events for a user if their address check fails. (if you have notify address checks enabled.) See the notify features section of this document for details.

-- ctcps (/cfg c)

Here you can configure how CTCPs are displayed. (note that all CTCPs received via a channel are always shown in that channel.)

'CTCPs in status' will show CTCPs in the Status Window.

'CTCPs in active' will show CTCPs in the currently active window, if possible.

'Seperate CTCP window' will show CTCPs in a seperate window, to avoid cluttering up your other windows.

'Pings in status' will show ping replies in the Status Window.

'Pings in active' will show ping replies in the currently active window, if possible.

'Seperate ping window' will show ping replies in a seperate window, in a slightly different format.

'CTCP replies in status' will show other CTCP replies (other than pings) in the Status Window.

'CTCP replies in active' will show other CTCP replies (other than pings) in the currently active window, if possible.

'Seperate ping window' will show other CTCP replies in a seperate window, to avoid cluttering up your other windows.

'Low lag color' is a color that will be used in ping replies that are under five seconds, to show at a glance that the user is not lagged.

'Medium lag color' is a color that will be used for ping replies that are between five and twenty seconds, to show at a glance that the user is lagged, but not so lagged that you can't talk to them.

'High lag color' is a color that will be used for ping replies that are over twenty seconds, to show at a glance that the user is so damn lagged that you probably need to change servers or use a DCC chat to talk to them.

-- nicklist (/cfg n)

Here you can configure the colors i� uses to color your channel nicklists. Note that this feature cannot simple be 'disabled'- to turn it 'off' you must manually set all (or most of) the colors to the same color.

'Op color' is the color that will be used for channel ops.

'Helper color' is the color that will be used for users with 'helper' status on EFnet.

'Voiced color' is the color that will be used for voiced users. (unless they are also opped or 'helper', of course.)

'Regular color' is the color used for users with no special status. (no ops, not voiced, no 'helper' status.)

'Your color' is the color always used for your nickname, regardless of any other status.

-- mp2 / mp3 (/cfg m)

Here you can configure how i� works with MP2 and MP3 files.

'MP player' allows you to define a specific program to play your MP2 and MP3 files. If you don't specify a player, i� will attempt to use whatever program is associated with your MP files, but this does not always work.

'MP directory' allows you to define the default directory for storing your MP files. (including subdirectories) If not specified, this defaults to your mIRC directory.

'Leech command' allows you to define a command that, when people type, will 'grab' the last file you played. For example, if this is '!gimme' and you play 'hi.mp3', people can type '!gimme' in a window with you to get 'hi.mp3'. It only works on the most recent file- they cannot specify a filename.

'Only play locally', if enabled, will play MP files but only show them to yourself, not saying anything in the current window.

'Play MPs from others', if enabled, will play MP files that other people play in windows with you, if you own them.

-- sys sounds (/cfg s)

Here you can configure sounds for system-related events. Remember that you can press a '!' button to test a sound. Also note that all sounds are disabled if you are away.

'Connect' is a sound played when you connect to a server.

'Disconnect' is played when you quit or are disconnected from a server.

'You join' is played anytime YOU join a channel.

'You part' is played whenever YOU leave a channel.

'You opped' is played whenever someone gives YOU ops, voice, or 'helper' status on EFnet.

'You deopped' is played when you get deopped, devoiced, or lose 'helper' status on EFnet.

'User kicked' is played when ANY user is kicked from a channel. (by any other user) 

-- user sounds (/cfg s u)

Here you can configure sounds for user-related events. Remember that you can press a '!' button to test a sound. Also note that all sounds are disabled if you are away.

'Notify' is played whenever anyone on your notify list comes online. This works regardless of whether notify address checks are enabled, but if address checking is enabled, the user fails the address check, and the event is hidden due to this, the sound will not play.

'New query' is played whenever someone messages you and opens up a new query window.

'DCC chat' is played whenever someone attempts to DCC chat you.

'Incoming file' is played whenever someone attempts to send you a file.

'File received' is played when you successfully receive a file.

'File sent' is played when you successfully finish sending a file to someone.

'File error' is played whenever a file you are sending or receiving encounters an error.

---
-- scripting notes
-

You shouldn't have many, compatibility problems with i�. It uses variables to store settings- all variables begin with %� to avoid conflicts, and the script will run fine even if you clear all it's variables. (although you will lose some settings.)

I have not skimped on compatibility issues to save space, either. Proper use was made of local aliases, the & event prefix, etc. It is unlikely that there will be any problems with other properly-made scripts, nor with any of the built-in mIRC features and settings. If you are having compatibility problems, try moving i� to the end of the script order. (Go into Remotes by pressing Alt+R, go to the File menu, select 'Order', select i2.mrc, and press Down until it is the last script in the line) This causes i2.mrc to run it's events last, which may prevent some compatibility problems, especially with raw events.

I'm sure there are probably ways I've missed for squeezing a few more bytes out of the script. I'm not changing my /if or other formats- the /if (condition) style is IMO much more readable (and less prone to errors) than /if condition. I'm not going to remove code that provides combatibility or other enhancements, either. Otherwise I'm open to suggestions. :)

Anyways, hope everyone enjoys this script, or maybe says 'neat, didn't think you could fit that many things into one script file'.. or something.. Actually it's really not THAT much stuff, but it makes a lovely minimal script, and I don't think anyone will be ripping my code. ;)


cya. :)
```

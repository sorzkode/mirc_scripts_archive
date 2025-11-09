# The SMF Away Sys v4.11 by SMFF_of_TS

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

**Script Name:** The SMF Away Sys  
**Version:** 4.11  
**Category:** protection  
**Authors:** SMFF_of_TS  
**Email(s):** <rewt@dgsoft.cjb.net>  
**Website(s):** [http://dgsoft.cjb.net/away/](http://dgsoft.cjb.net/away/)  
**Release Year:** 2000  
**Tags:** auto-away, gui, dialog, popup, wav, trigger, log viewer, timer, addon, protection, alias, color scheme, bot, auto away  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/away411/away411.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "away411.zip",
  "file_count": 5,
  "file_types": [
    ".mrc",
    ".txt",
    ".wav"
  ],
  "max_file_date": "2000-04-11",
  "min_file_date": "1996-03-13",
  "total_size": 98.16,
  "largest_file": "page.wav",
  "text": [
    "help.txt",
    "readme.txt"
  ]
}
```

## 📋 Text Content (from help.txt)

```text
                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~

                          the SMF Away Sys v4.11

                          for mIRC 5.7 or higher

                                  Help File

                         ~~~~~~~~~~~~~~~~~~~~~~~~



Homepage : http://dgsoft.cjb.net

Away Sys : http://dgsoft.cjb.net/away/





-=<Setup>=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=



After loading the addon using the /load command, Setup will automaticly

search for it's default sound files (page.wav and phone.wav) inside your

mIRC directory (subdirectories included of course), if the file is not

found, it will open a browser window which will allow you to select a file

of your choise instead. after that, setup will write down the settings

needed into away.ini, then open the setup dialog.



-=<Setup Dialog>=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-



allows you to costumize several options according to your personal

preferences:



Auto-away      : automaticly sets you away after a specified amount of time

                 (default is 15 minutes) (can be disabled).

Auto-quit      : when in auto-away mode, quits IRC after a specified amount

                 of time (disabled by default).

Nick           : Consists of two options:



                 Partial : adds the specified word to the end of your nick

                           (default is _Away).

                 Full    : Changes your nick to a new one.



Read MSGes     : Opens the log viewer (see section).

Read Pages     : Opens the page viewer (see section).

Page           : Allows you to select a new sound file for the page event.

Message        : Allows you to select a new sound file for the msg event.

Message editor : Allows you to edit all of the external messages sent by

                 the script.



-=<Main Away Window>=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-



Opens a window with 5 checkboxes and 3 buttons:



Logging      : When selected, logs all private messages that you get during

               your away time.

Pager        : When selected, logs all pages that you get during your away

               time.

Change Nick  : When selected, changes your nick (see nick section in the

               "Setup Dialog" section).

Away Message : Lets you set an away message - if this option is not

               selected, the away message will be "BRB".

Silent       : Will not show the away message in the channels.

OK           : closes the settings window and opens the pager dialog

               (see section).

Cancel       : closes the window.



-=<Pager Window>=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-



The window that monitors your status on IRC during your away time, the

options and info on it are:



Away Message : shows your current away message.

Gone For     : shows the time you have been away.

Messages     : shows you how many messages you recieved since you went away

               (Read button opens the viewer (see section)).

Pages        : shows you how many pages you recieved since you went away

               (Read button opens the viewer (see section)).

Return       : sets you back, and closes the dialog.



-=<Viewers>=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=



Two dialog boxes, one for viewing the pages you've recieved and the other

one for messages you've recieved (all look and work the same)



Listbox A    : Lists the groups of messages you've recieved over the time

               (shown by date), when a group is selected, the messages

               inside it (if there are any) will be shown in listbox b.

Listbox B    : Lists the messages from each group, shows the time of the

               message and the nick that has sent it. when a message is

               selected, the message itself is shown in the editbox below.

Delete Group : deletes the current group selected in lisbox a from the

               database.



-=<Message Editor Variables>=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-



The message editor uses a set of internal variables for the messages,

which are:



<away message> : Returns your current away message.

<away time>    : Returns the time you've been away.

<pager>        : Returns on or off depending on the state of the pager.

<logger>       : Returns on or off depending on the state of the logger.

<hours>        : Returns the time specified for the auto-quit in hours.

<minutes>      : Returns  the time specified for the auto-quit in minutes.

<seconds>      : Returns  the time specified for the auto-quit in seconds.
```

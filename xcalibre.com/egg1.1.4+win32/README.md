# egg1.1.4+win32 v0.6 by Unknown

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

**Script Name:** egg1.1.4+win32  
**Version:** 0.6  
**Category:** game  
**Authors:** Unknown  
**Email(s):** <lash@webzone.net>, <botadmins@luckynet.co.il>, <cmwagner@soder.net>, <gandolf@iglou.com>, <spackard@mines.edu>, <cmwagner@sodre.net>, <crf@photo.bchs.uh.edu>  
**Website(s):** [http://www.calweb.com/~xerxes/eggdrop/](http://www.calweb.com/~xerxes/eggdrop/)  
**Release Year:** 1997  
**Tags:** wav, trigger, protection, notify, rejoin, auto-op, script pack, timer, alias, dcc, channel protection, dice, uptime, bot, uno, greet, kickban, gui, rpg  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/xcalibre.com/egg1.1.4+win32/egg1.1.4+win32.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "egg1.1.4+win32.zip",
  "file_count": 249,
  "file_types": [
    ".conf",
    ".dll",
    ".doc",
    ".exe",
    ".faq",
    ".howto",
    ".list",
    ".tcl"
  ],
  "max_file_date": "1997-07-08",
  "min_file_date": "1996-10-15",
  "total_size": 1939.41,
  "largest_file": "eggdrop1.1.4/Cygwin.dll",
  "text": [
    "eggdrop1.1.4/doc/eggdrop.doc",
    "eggdrop1.1.4/doc/tcl-commands.doc",
    "eggdrop1.1.4/doc/compiling.FAQ"
  ]
}
```

## 📋 Text Content (from eggdrop1.1.4/doc/eggdrop.doc)

```text
This documentation is not finished.  In fact it's barely even started.

Currently completed sections are:



(1) About Eggdrop

(2) Starting Out

(3) User Records

(4) Access Levels?  No, Flags

(5) The Party Line

(6) Botnet

(7) Userfile Sharing

(8) Bans and How They Work



Appendices:

(Y) What Are Runts?

(Z) Weird Messges That Get Logged





If you have questions or comments about this file, please send me email

at <eggdrop@sodre.net> (after subscribing).  Thanks.







(1) ABOUT EGGDROP



    Eggdrop was created around December 1993 to help stop the incessant

    wars on #gayteen.  It spawned from another bot I had been writing

    at the time called "Unrest".  The purpose of Unrest was to answer

    help requests from other bots (the equivalent of eggdrop's current

    helpbot option).  The first public release was (I think) v0.6, and

    it's grown a lot since then.



    To use eggdrop, you need:

    * some sort of Unix account -- it does not compile for Windows or

      Mac machines, nor will it probably ever compile there

    * pretty good knowledge of IRC and Unix, including how to compile

      programs and what DCC chat is, at absolute minimum

    * about 500k of disk space, or more, depending on your system (on

      Linux, the executable takes up about 400k currently -- it will

      be a lot larger on a RISC system)

    * the Tcl libraries -- if you don't have them (and most systems

      should), check the README file on info about how to install it

      yourself (you don't need to be root)



    Before starting, ask yourself if you really need a bot.  Most IRC

    servers allow only a handful of bots -- some forbid them outright.

    The reason?  Too many people run bots as "toys" or as a means of

    destruction.  If you want to use eggdrop for destructive purposes,

    go ahead and erase this directory now.  It's almost impossible to

    do what you want with this bot.



    You should try to find at least one server that will allow you to

    run a bot.  If you use an ISP (Internet Service Provider) that runs

    its own IRC server, check to make sure that bots are okay.  If you're

    going to use a server somewhere else, read the MOTD (message of the

    day) and find out what their bot policy is.  Following the rules will

    go a long way toward making your bot accepted.



    Generally speaking, you only need a bot on EFnet if your channel has

    a constant supply of users (24 hours a day) and no bot.  If your

    channel already has a couple of bots on it, it probably doesn't need

    any more.  More bots don't do any more good, and waste bandwidth.

    On the Undernet you will probably never need more than one bot per

    channel.  Also note that it's generally not acceptable to use a bot

    to "keep a channel open" when it's not in use.  However, policies

    differ from net to net and server to server so check around before

    starting.



    Bots CANNOT provide absolute protection.  Nothing can.  Eggdrop will

    try its hardest but there are no guarantees.





(2) STARTING OUT



    Obviously the first thing you want to do is compile the bot.  The

    README file tells you what to do and answers some frequenty-asked

    questions about compiling.  If you're in a rush and you know what

    you're doing, you don't have to read this at all -- the README file

    tells you how to quickly compile and start up the bot.



    If you've read this far, then, I'll assume you have successfully

    compiled eggdrop and edited the config file.



    First of all, eggdrop has some command-line options -- not many,

    because most things should be defined through the config file.

    However sometimes you may want to start up the bot in a different

    mode, and the command-line options let you do that.  Basically,

    the command line for eggdrop is:



    % eggdrop <options> <config-file>



    The options available are:



    -n   Don't background.  Normally eggdrop will move itself into the

         background when you start it up, meaning you'll get another

         shell prompt and you can do other things while the bot is going.

         With -n, you won't return to the shell prompt until the bot

         exits (which won't normally happen until it's killed).  By

         default, -n will send all log entries to the console.



    -nt  Don't background, use terminal.  This is just like -n, except

         that instead of seeing log entries, your console will simulate

         a DCC chat with the bot.



    -nc  Don't background, show channel info.  This is just like -n,

         except that instead of seeing log entries, every 10 seconds

         your screen will clear and you will see the current channel

         status, sort of like "top".



    -m   Create userfile.  If you don't have a userfile, this will make

         eggdrop create one, and give master/owner status to the first

         person that
```

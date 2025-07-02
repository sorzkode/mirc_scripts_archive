# PervScan v2.0 by Thinline

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

**Script Name:** PervScan  
**Version:** 2.0  
**Category:** addon  
**Author(s):** Thinline  
**Email(s):** <chris@christianlinks.net>, <owen4@ixpres.com>, <Warrior4JC@juno.com>  
**Website(s):** [www.christianlinks.net/cb/](www.christianlinks.net/cb/)  
**Release Year:** 1999  
**Tags:** swear, timer, gui, nicklist, auto ban, alias, popups, dialog, popup, channel protection, trigger, auto kick, interface, protection  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/20010614103649_pscan201/20010614103649_pscan201.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "20010614103649_pscan201.zip",
  "file_count": 4,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1999-02-22",
  "min_file_date": "1999-02-15",
  "total_size": 56.94,
  "largest_file": "pervpop.mrc",
  "text": [
    "pervnick.mrc",
    "pervscan.mrc",
    "psReadMe.txt",
    "pervpop.mrc"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## psReadMe.txt

```text
                         ****PervScan v2.01****
                            **By Thinline**
                             for mIRC 5.5+
Please read:

NOTE: PervScan will NOT function on any version lower than mIRC 5.5. If you are using a previous version of PervScan, please remove the old files running the old version, before loading this one. Several changes have been made, that could cause conflicts or redundancies.

Thank you for choosing PervScan for your channel protection. PervScan protects the channels you op in from offensive nicks, user ID's, and real names. It detects offensive channels, and also has a powerful swear kicker. 

All you need to do to operate Pervscan, is to load the accompanying psreadme.txt file along with ALL three script files into your mirc directory, and type the following line in any window in mirc....

/load -rs pervscan.mrc

PervScan does not use conventional popups for controlling the script. Instead it utilizes a brand new feature with mirc 5.5. All the controls for the script are activated from the new dialog box style GUI, that opens by clicking on the "PervScan" popup located in either the Channel or Status window popup area.

New to version 2.0 and 2.01
----------------------

1) Better interface, through new mIRC dialog boxes
2) You can now select for the entire script to protect all channels, or just those channels in your "Protected Channels" list.
3) You can now choose whether the script sends op notices to other ops, when someone is sent a warning, and for some kicks.
4) All sections of PervScan now set timed bans based on one ban time, set by the user.
5) (2.01 only) Fixed problem with triggering dialog windows from within events for mirc 5.51.
6) (2.01 only) Hitting Enter while adding a word to a list, now adds the word to the list.

The following is a list of the options available to you with PervScan. Please read them over, so you are familiar with everything that is possible with PervScan. This list of options is also available in the "Help Window" option located in the interface window, activated by the "PervScan" popup.

General Options
---------------
*Protect: With this option, you can choose to protect all channels you are in, or selected channels only.

*Report Offenses: You may choose to have the script send a report of each kick and/or ban it makes, to a dedicated window.

*Op Notices Sent: If checked, the script will send op notices when users have been sent warnings, to let the ops know that the person has been warned. It also sends op notices explaining kicks/bans, on some of the kicks.

*PervScan Whois (in nicklist popups): To do a manual scan to check for bad channels/user ID/real name after someone has been on the channel or after you join a channel, make sure you use the "PervScan Whois" popup in the Nicklist popups, because the script needs to set a couple variables before it begins the scan.

*Ban Length: This allows you to customize the length of time (in seconds) that the offender will be banned for.

*Protected Channelst: You can add,remove or view channels in your list of protected channels with this option.

PottyMouth
----------
*Enable: If checked, then PottyMouth is turned on

*Query/Msg: When checked, a user will be put on private ignore, and kick banned from all channels you are an op in, if they swear at you in private message.

*Ban on 1st/2nd offense: You can set PottyMouth to kick on the first offense, and ban on the second, or you can have it ban on the first offense. If you choose to only kick on the first offense, if they swear again within two minutes, they will be kick/banned. If PottyMouth bans the same nick twice in 5 minutes, the second ban will be a non-timed ban.

*PottyMouth Word List: With this button, you can add to, remove from, or view the current list of words that PottyMouth kicks and/or bans for.


PervNick
--------
*Enable: If checked, PervNick will be turned on

*Questionable Nicks: When checked, you will be notified if someone with a questionable nick, joins the channel. This is a nice function, because there are words in nicks that can be ok or offensive, given the context. (i.e. the word "d*ck" in the nick Dick_Tracy). This option will simply alert you that the nick is in use on the channel. If you decide that the nick is offensive, press F6 and they will be kick/banned.

*Warning: if checked, the violator will recieve 2 warnings, 20 seconds apart to change their nick, before they are kicked. If not checked, they will be kicked immediately upon entering the channel.

*Self Join Scan: If checked, when you join the channel, it will scan the nicks in the channel, and report the violators back to you, as well as take action on the violators.

*Ignore Violators: This is very helpful for stopping violators from harrassing you. When checked, it will ignore (for a period of 60 seconds) anyone on yourPervNick list who tries to /msg you. This can be turned off easily if you wish.

*PervNick list: With this button you can add/view/remove words from your PervNick list

*Questionable Nick list: With this button you can add/view/remove words from your Questionable Nick List.


Offensive Channel Scan
---------------------
*Channel Scan On (with/without warnings): This will enable PervScan's offensive channel detector and kick/ban anyone in a channel that contains a word in your channel list. If warnings is enabled, they will recieve 3 warnings, 20 seconds apart, before they are kick banned. If warnings is disabled, they will be immediately kick/banned. First ban is 2 minutes. If they come back, and repeat the offense within 10 minutes, a non-timed ban will be set.

*Channel Scan Word List: With this feature you can add, remove, and view words in your channel list, that the channel scanner will look and kick/ban for.


User ID/Real Name Scan
----------------------
*User ID/Real Name Scan (on/off): This will enable or disable PervScan's offensive Real Name/User ID detector. When turned on, it will look in the User ID and Real Name portions of each /whois responce for words in your User ID/Real Name list, and kick/ban offenders. First ban is 2 minutes. If they come back and repeat the offense within 10 minutes, a non-timed ban will be set.

*Real Name/User ID Scan Word List: With this feature you can add,remove and view words in your channel list, that the channel scanner will look and kick/ban for.

-----
If you have any questions, please feel free to email me at one of the following email addresses.

Chris Payne (Thinline on dalnet)
owen4@ixpres.com
chris@christianlinks.net
Warrior4JC@juno.com
```

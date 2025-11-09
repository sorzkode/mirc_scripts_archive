# nnscript402_1991 v1.01 by rob panzer

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

**Script Name:** nnscript402_1991  
**Version:** 1.01  
**Category:** game  
**Authors:** rob panzer  
**Email(s):**   
**Website(s):** [http://rss.slashdot.org/Slashdot/slashdot](http://rss.slashdot.org/Slashdot/slashdot), [http://cservice.undernet.org/live/](http://cservice.undernet.org/live/), [http://www.fool.com/xml/foolnews_rss091.xml](http://www.fool.com/xml/foolnews_rss091.xml)  
**Release Year:** 2006  
**Tags:** wav, trigger, log viewer, raw events, protection, notify, rejoin, away system, toolbar, nicklist, auto-join, auto-op, bad word, slap, timer, alias, color scheme, dcc, away log, last seen, auto-away, access list, channel protection, sockets, 8ball, uptime, bot, auto voice, interface, uno  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/nnscript402_1991/nnscript402_1991.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "nnscript402_1991.zip",
  "file_count": 1941,
  "file_types": [
    ".dat",
    ".dll",
    ".fon",
    ".ico",
    ".ini",
    ".jpg",
    ".mdx",
    ".nns",
    ".nnt",
    ".nnv",
    ".png",
    ".pop",
    ".tbl",
    ".tmp",
    ".txt",
    ".url",
    ".wav"
  ],
  "max_file_date": "2006-03-19",
  "min_file_date": "2006-01-30",
  "total_size": 3368.24,
  "largest_file": "script/setup.nns",
  "text": [
    "themes/data/thmhelp.txt",
    "nnchanges.txt",
    "nnreadme.txt",
    "iconsets/buttons/\u00bb \u00a0Button set #1.txt",
    "iconsets/jaffa/readme.txt",
    "iconsets/megapack/readme1.txt",
    "iconsets/megapack/readme2.txt",
    "iconsets/metrox/readme.txt",
    "iconsets/moonshine/readme.txt",
    "script/txt/awpages.txt",
    "script/txt/banhist.txt",
    "script/txt/cmdlist.txt",
    "script/txt/cprog.txt",
    "script/txt/dcchist-g.txt",
    "script/txt/dcchist-ig.txt",
    "script/txt/dcchist-is.txt",
    "script/txt/dcchist-s.txt",
    "script/txt/kickhist.txt",
    "script/txt/kickmsg.txt",
    "script/txt/quitmsg.txt",
    "script/txt/slaps.txt",
    "script/txt/switchbar-defs.txt",
    "script/txt/toolbar-defs.txt",
    "script/txt/toolbar.txt",
    "script/txt/totd.txt"
  ]
}
```

## 📋 Text Content (from themes/data/thmhelp.txt)

```text
[general]



 General identifiers:

<gt>: The '>' character. Use this instead of just '>'.

<lt>: The '<' character. Use this instead of just '<'.

<me>: Your nickname.

<myaddress>: Your address.

<myhost>: Your hostname/IP.

<myident>: Your ident.

<myport>: The server port you're connected to.

<myserver>: The server you're connected to.

<mynetwork>: The network you're connected to.

<timestamp>: The timestamp.

<pre>: The prefix for the current theme (you cannot use this in the "Prefix" section itself.)

<linesep>: The line separator for the current theme (you cannot use this in the "Linesep" section itself.)



 General Properties:

align="N": Aligns the nicknames with N characters spacing. Negative values are possible.

Example: <nick align="15">



brackets="1": Only displays the identifier if it is not empty and covers it in brackets. Useful in part messages for example.

Example: <message brackets="1">



 General prefixes:

!if <identifier> ...: Only displays the line if <identifier> has a value.

Example: "!if <opchans> The user is opped in: <opchans>" would only be displayed if the user is opped in a channel.



!script ...: Executes the script after the prefix. If possible, do not use these in themes. <identifiers> are preferred and already provide many possibilities. Also, !script lines will not be shown in previews for security reasons.

Example: "!script join #nnscript" would join #nnscript in a certain event.



!empty: Doesn't display the event at all.



 Other info:

You can use any mIRC $identifier in the theme, they will however not be evaluated in the preview. They will work in the loaded theme, but you will not see a preview of them. This is due to security reasons.

[e-normal-1-0-Author]

 Description:

The author of the theme.

[e-normal-1-0-Name]

 Description:

The name of the theme.

[e-normal-1-0-Version]

 Description:

The version number of the theme.

[e-normal-1-0-NNTVersion]

 Description:

The version number of the NoNameScript theme engine required for the theme.

[e-normal-1-0-Email]

 Description:

The theme author's e-mail address.

[e-normal-1-0-Homepage]

 Description:

The theme author's homepage.

[m-normal-1-0-Description]

 Description:

A short description of your theme and/or other notes.

[o-normal-2-0-Colors]

 Description:

The colors used for the various events and lists.

[r-normal-2-0-RGB]

 Description:

The RGB color codes used in the theme. You can create various schemes which use different colors to make your theme more appealing.

[f-normal-3-0-Font]

 Description:

The font the theme is using.

[s-normal-3-0-FontSize]

 Description:

The font size the theme is using.

[c-normal-4-0-TimestampEnabled]

 Description:

Determines if global timestamping is enabled.

[e-normal-4-0-Timestamp]

 Description:

Your timestamp format.



 Identifiers:

Year	yy	= 99

	yyyy	= 1999

Month	m	= 1

	mm	= 01

	mmm	= Jan

	mmmm	= January

Day	d	= 1

	dd	= 01

	ddd	= Mon

	dddd	= Monday

Hours	h	= 5

	hh	= 05

	H	= 17

	HH	= 17

Minutes	n	= 1

	nn	= 01

Seconds	s	= 1

	ss	= 01

AM/PM	t	= a/p

	tt	= am/pm

	T	= A/P

	TT	= AM/PM

Ordinal	oo	= st/nd/rd/th

Timezone	z	= +0

	zz	= +0000

	zzz	= +0000 GMT

[d-normal-5-0-NickColSelf]

 Description:

The color of yourself in the nicklist/chat windows.

[d-normal-5-0-NickColOp]

 Description:

The color of operators in the nicklist/chat windows.

[d-normal-5-0-NickColVoice]

 Description:

The color of voiced users in the nicklist/chat windows.

[d-normal-5-0-NickColRegular]

 Description:

The color of regular users in the nicklist/chat windows.

[d-normal-5-0-NickColProtect]

 Description:

The color of protected users in the nicklist/chat windows.

[d-normal-5-0-NickColIgnore]

 Description:

The color of ignored users in the nicklist/chat windows.

[m-info-11-1-GenEcho]

 Event:

The script echoes a general info-type message.



 Identifiers:

<text>: The message's text.

[m-info-11-1-GenError]

 Event:

The script echoes an error message.



 Identifiers:

<text>: The error's text.

[e-normal-11-1-GenHighlight]

 Description:

The highlighted parts of GenError and GenEcho messages.



 Identifiers:

<text>: The highlighted text.

[m-normal-11-1-LineSep]

 Description:

The line separator used by the script.

[e-normal-11-1-Prefix]

 Description:

A custom prefix you can use in any event.

[m-join-6-1-Join]

 Event:

A user joins a channel.



 Identifiers:

<address>: The user's address.

<chan>: The channel in which the join takes place.

<clonenum>: The number of clones on the channel.

<clones>: The nickname of the clones in the channel, if any.

<comchannum>: The number of channels both you and the user have joined.

<comchans>: The channels both you and the user have joined.

<nick>: The user's nickname, or nickname:channel in non-channel windows.

<users>: The amount of users in the channel.

[m-join-6-1-JoinOwn]

 Event:

You are joining a channel.



 Identifiers:

<chan>: The channel in which the join takes plac
```

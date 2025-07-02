# ServLink Aut0Bot Addon v1 by Quartz

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

**Script Name:** ServLink Aut0Bot Addon  
**Version:** 1  
**Category:** addon  
**Author(s):** Quartz  
**Email(s):** <unknown>  
**Website(s):** [http://www.gillette.demon.co.uk/](http://www.gillette.demon.co.uk/)  
**Release Year:** 1998  
**Tags:** timer, alias, popups, popup, dcc, sockets, nicklist, bot, links  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990916005716_connect/19990916005716_connect.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990916005716_connect.zip",
  "file_count": 6,
  "file_types": [
    ".bmp",
    ".ini",
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1998-04-17",
  "min_file_date": "1998-04-01",
  "total_size": 63.95,
  "largest_file": "Connect.mrc",
  "text": [
    "slserv.ini",
    "Connect.mrc",
    "readme.txt"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## readme.txt

```text
************ by quartz 16/4/98
* ServLink *
* ======== *
************ part of The <�> Aut0Bot <�> 1996-8

Hi, this is lets you connect to a second IRC server, while having just one 
mIRC program open. Yeah, it uses a dcc chat, and not sockets. So sue me...

Installation:

1. Copy the accompanying files into your mirc directory
2. In any mIRC window, type /load -rs connect.mrc
3. Enter the details asked for
4. Type /rawconsole to run

The script uses desktop windows, but you can change to them using the mirc window
button bar. It simulates a normal mIRC channel window, using a different font so you
can tell it's not a normal channel window. You can join up to 5 channels and have 
any number query windows open. You *can't* have DCC connections (send or chat).

Technically there isn't a limit to the number of channels you can join, but I didn't
want to strain the script. It does a reasonable bit of processing to keep the nick 
list up do date, I've had it running on a channel with 300+ nicks without a problem.
Select 'Update channel Info' from the channel popups at any time to manually update 
it, or type /update in a channel. When a lot of people quit or change nicks, there 
might be very slight freeze.

Several of the mIRC comands work, type 'help' anywhere to see what you can do - typing
'help' in the channel will bring up the help, and not broadcast it, because the script
does special stuff to send your input to the other IRC server.

This is a 'working version', I think it's a fairly complete script, although I'll add
more to it later.

Things to do...

* Add banning facility
* Add channel linker

If, when you try to Main --> Connect, and it /dns's the server, but doesn't open a chat,
close the @DNS_Console window, and type /rawconsole again, and try connecting again.

Thanks to C-Scripts MServer for a few bits of code.

Please memo me if you have any probs,

cheerz, quartz/DALnet

*                                  *
* http://www.gillette.demon.co.uk/ *
*                                  *
```

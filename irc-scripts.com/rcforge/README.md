# rcforge v1.0 by Quension

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

**Script Name:** rcforge  
**Version:** 1.0  
**Category:** bot  
**Authors:** Quension  
**Email(s):**   
**Website(s):** [http://www.non-prophet.org/](http://www.non-prophet.org/), [http://ciphersaber.gurus.com/cryptanalysis.html](http://ciphersaber.gurus.com/cryptanalysis.html), [http://ciphersaber.gurus.com/](http://ciphersaber.gurus.com/), [http://www.non-prophet.org/rcforge/](http://www.non-prophet.org/rcforge/)  
**Release Year:** 2000  
**Tags:** dialog, alias, bot, interface  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/irc-scripts.com/rcforge/rcforge.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "rcforge.zip",
  "file_count": 4,
  "file_types": [
    ".c",
    ".ini",
    ".txt"
  ],
  "max_file_date": "2000-03-28",
  "min_file_date": "2000-03-25",
  "total_size": 55.77,
  "largest_file": "RCForge.ini",
  "text": [
    "rc4toolkit.txt",
    "Readme.txt"
  ]
}
```

## 📋 Text Content (from Readme.txt)

```text
****************************************************************************

* RCForge Encryption script for mIRC32                                     *

*                                                                          *

* Written by Matt (say-tan@IRC)                                            *

* Copryright (c) 2000 say-tan. All rights waived.                          *

*                                                                          *

* This script is provided AS IS, with no warranties explicit or implied!   *

* Use at YOUR OWN RISK!                                                    *

* WARNING: Export of this script is subject to federal strong encryption   *

* regulations.  If you have a question as to whether you are allowed to    *

* modify and distribute or redistribute this script and it's accompanying  *

* files, DO NOT EXPORT IT.  If you wish to refer a friend to the use of    *

* the script, send them to the download page at:                           *

*                  http://www.non-prophet.org/rcforge/                     *

****************************************************************************



Introduction:

-------------



RCForge is an encryption script for mIRC that uses 256-bit Strong encryption

over private and channel messages.  With a secure key, you are almost

totally secure in your conversations.



RCForge.zip includes the following files:



- Readme.txt       : This help file

- RCForge.ini      : The .ini file containing the mIRC script

- rc4toolkit.dll   : The .dll containing the ciphers and a few handy calls

- rc4toolkit.txt   : A detailed explaination of the interface between mIRC

                      and rc4toolkit.dll

- rc4toolkit.c     : The ANSI C source code for rc4toolkit.dll





Installation:

-------------



First, use winzip or a similar program to unzip all of the above-listed files

to your mIRC root directory.



note:  All files must be in your mIRC directory for the script to function

        correctly.



Next, open mIRC.  In your status window, type:  /load -rs RCForge.ini

This will begin the loading procedure for the RCForge script.  A dialog

box will pop up asking whether you wish to continue loading the script...

You MUST say 'yes' at this dialog for the script to load properly.



As the script initializes, you will be asked for a secret encryption key.

This key is your default key when entering new channels with encryption

on by default.



note:  A key is similar to a password.  It should only be known by you and

        anyone you wish to carry on an encrypted conversation with.  The

        key may contain up to 256 typeable characters (including spaces).

        See the section below on 'Cryptographic Weaknesses' for more info

        on choosing a safe key.



After you have entered your key, a confirmation dialog will pop up and ask you

to re-enter your key.  Type your key in in the same manner you did previously.



Once the script is loaded, you will notice new entries on several pop-up

menus from which you will be able to control the encryption properties.



At this point the script is finished installing/loading.  From here, you will

want to check a few setting in mIRC.



In order for the .dll file to be accessed, you need to enable the /dll command.



Go to:  General Options -> General -> Lock, then, under 'Disable Commands',

uncheck the box labeled '/dll'.





Tips:

-----



You can set several default values, which are used when you have not explicitly

set the value for a particular window, from the status pop-up menu and the

menubar menus.  There is also a 'Default Settings' option in the query and

channel pop-up menus.



Every query and channel window is able to have different option from the others.

Simply right-click in that window and Set up the options as you see fit.



If you log channel and/or private conversations and you don't wish to have your

encrypted information logged, you can use 'Encrypt to Window' to send all of

the sent and recieved encrypted text to another window, which prevents you from

having to turn logging on and off frequently.





Cryptographic Weaknesses:

-------------------------



256-bit RC4 is an extremely hard cipher to brute-force attack (attempt to discover

the message contents by trying every possible key).  It took several months for

several hundred-thousand computers working in their idle time to break even 64-bit

RC4.  However, there are a few ways that plaintext can be leaked by the RC4 cipher.

To avoid this problem, several measures have been added...namely, the CS1 and CS2

modifications.  It is recommended that you use CS1 or CS2 when seriously trying to

conduct an encrypted conversation.  Because very few people actually have the

crytographic backbround to break plain RC4, and because it is 'novel' to have it

listed, it is included in the list of algorithms.



Key size is a possible factor in the strength o
```

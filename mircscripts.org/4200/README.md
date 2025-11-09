# After much peer pressure I v1.0 by changing nicks loads

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

**Script Name:** After much peer pressure I  
**Version:** 1.0  
**Category:** game  
**Authors:** changing nicks loads  
**Email(s):** <irccompanion@gmail.com>  
**Website(s):** [http://www.sectoor.de](http://www.sectoor.de), [http://www.mirc.com/download/openssl-0.9.8o-setup.exe](http://www.mirc.com/download/openssl-0.9.8o-setup.exe), [http://www.creativewebstudios.co.uk](http://www.creativewebstudios.co.uk), [http://studios.co.uk](http://studios.co.uk), [http://www.creativewebstudios.co.uk](http://www.creativewebstudios.co.uk), [http://www.proxy.org](http://www.proxy.org), [http://www.textproxylists.com](http://www.textproxylists.com), [http://www.mirc.net](http://www.mirc.net), [http://mirc.net/download/screenshots/1228997938.jpg](http://mirc.net/download/screenshots/1228997938.jpg)  
**Release Year:** 2011  
**Tags:** swear, kickban, gui, dialog, nicklist, rejoin, channel protection, flood protection, wav, trigger, bad word, timer, addon, protection, notify, alias, bot, uno  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/4200/4200.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "4200.zip",
  "file_count": 4,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2011-01-03",
  "min_file_date": "2010-08-10",
  "total_size": 91.36,
  "largest_file": "ProtectionBot/protectionbot.mrc",
  "text": [
    "ProtectionBot/Pbot Install.txt",
    "ProtectionBot/pbot-helpfile.txt",
    "ProtectionBot/readme-pbot.txt"
  ]
}
```

## 📋 Text Content (from ProtectionBot/pbot-helpfile.txt)

```text
If you are having trouble with any of pbots features, please have a read through the help-file.  This file is also available 

from within pbot. 



We have included an index at the beginning of this file to help you quickly find what you need.



Should you need anymore help, you can contact the Pbot help centre directly from within the help dialog. Or type /pbhelp in any window. 









Index of contents:



- Pbot Overview

- Getting to know pbot

- Protections

- Advanced spam shield

- Further protections

- Badwords list

- Botnet protections: - The serious threat to IRC

- Scanning incoming connections

- DDOS attacks

- Blacklist

- Cmd on connect







Pbot Overview:



Pbot is a little guy who sits in your IRC channel, and will protect the channel for you. It has a full GUI and everything seems to be able to be configured. It is a socket bot that will open one unobtrusive window and silently does its work letting you carry on with other things. You are assured a irreplaceable security bot that complements services ensuring constant protection on any channel its opped on.



Getting to know pbot:



Pbot is built with the approach that allows users to have fun and chat on a channel. Pbot is not made to be trigger happy and will react only when a recognized spammer or attack is taking place on a channel. If this means minor floods will be ignored then so be it. Special care has been taken to reduce false positives as much as possible. Pbot is far from overly strict. But should an attack take place or a continuous abuser is using i.e colors and you have kick colors checked depending on your settings you will find pbot dealing with these threats qot will part the deleted channel.



Protections:



Pbots flood protection will kick all flooders (protections do not apply to ops) out of a channel. If the flood is repeated several times the user will be kick banned from the channel. pbots spam protection is second to none and will prove itself over and over again by catching spammers. It parses each line of text with complex code to capture spam patterns and act accordingly. For example excessive characters (like aaaaaaaaaa....) in a line of text or the same word repeated many times in a line of text will trigger the spam protection.



Advanced spam shield:



The advanced spam shield will monitor spam patterns on every event not just text. For example if a user parts a channel with an excessive part message it will result with an instant ban on his host or if a user joins a channel with excessive text or matches a spam pattern the user will also instantly be removed from the channel. This feature is especially useful on large channels where it is paramount to keep the channel free of spammers, trolls and random drones.



Pbot is also able to catch random spammers. i.e if random text like "jdlishfkjsdhgjsghfdkgjskghd fulkgjdhfh hfkdsjhgkhdkghslkskdlghds" is typed in a channel, pbot will monitor the user and remove the user if necessary. 



Further protections:



The partjoin protection will prevent users flooding a channel by parting and joining repeatedly, this option should be checked as it will pick up other spammers (excessive quits etc.) and is imperative for efficient protection. The advertising protection will kick users if a URL is typed in a channel, complex parsing is used to ensure that only if a true URL is typed in the channel it would trigger and not if someone just typed "www|ftp" etc. Please note that by design pbot will not kick channel operators.



Badwords:



The badwords option when selected will kick users when a badword is used. It is intelligent and will trigger even when people try and fool the bot. For example if "badword" is added to the list pbot will kick if a user says "badword" or "bad_word" or even "bad_w_o54rd". Please take care when adding really short badwords as this could lead to innocents being kicked.



Botnet protections: - The serious threats to IRC.



The flood bot protections if checked will look out for spam bots which are one of the biggest threats on irc. If Pbot detects excessive quit, nick changes or joins it will lock the channel with a mode that will allow other users to carry on chatting normally whilst barring the possible flood bots. Pbot will attempt to keep the disturbance to a minimum. After two minutes pbot will reset the protective modes to normal. Pbot will set standard channel protective modes allowing other registered users to chat undisturbed whilst notifying opers of the disturbance



Scanning incoming connections:



If selected Pbot will scan incoming ip addresses against a global RBL blacklist. One can set sensitivity with 0 being the highest. It is recommended to set it between 0 and 5 as really any ip matched on the list is bound to be a threat to your server. You can also select a channel where incoming client connections are reported to with threat status after pb has checked on them. Having this feature enabled will guarante
```

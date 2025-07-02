# JQ Mail v0.3.1 by JoeyQ

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

**Script Name:** JQ Mail  
**Version:** 0.3.1  
**Category:** addon  
**Author(s):** JoeyQ  
**Email(s):** <minsner@peganet.com>  
**Website(s):** [http://www.mirc.co.uk/ ](http://www.mirc.co.uk/ )  
**Release Year:** 1998  
**Tags:** timer, alias, toolbar, ascii art, popups, popup, addon, interface, dcc, sockets, email, POP3, SMTP  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990909143212_jqm031/19990909143212_jqm031.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990909143212_jqm031.zip",
  "file_count": 5,
  "file_types": [
    ".bmp",
    ".doc",
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1998-02-18",
  "min_file_date": "1998-01-19",
  "total_size": 493.42,
  "largest_file": "jqmail.bmp",
  "text": [
    "readme.doc",
    "mailsign.txt",
    "readme.txt",
    "jqmail03.mrc"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## readme.txt

```text
JQ Mail by JoeyQ
Version 0.3.1
readme.txt

* Requirements

mIRC or mIRC32 v5.3 or v5.31
POP3 and SMTP account (Internet e-mail account)

* What is JQ Mail?

JQ Mail is a mIRC addon that allows a user to send and receive
electronic mail over the internet.

* Install

To install JQ Mail, simply run the jqm031.zip file and extract the
files into your any directory. After extracting the files, run your
mirc.exe or mirc32.exe, then type "/load -rs jqmail03.mrc" in your
status window without the quotes. A window will pop up telling you if
you successfully or unsuccessfully loaded JQ Mail. If you succeeded,
when you close that window, the @JQ Mail Setup window will be created.
You can add/edit each item by double-clicking on it in the right frame
of the window. After adding all the values, close the window. You can
always edit these setup values by going to the JQ Mail popup menu in
the @JQ Mail right-click popup menu. Note: This Setup info would be
located in your present e-mail client. Another note, JQ Mail will have
problems if the directory it is located in has a space, for example
JQ Mail will have problems with "C:\Program Files\" and it's
subdirectories.

* Checking for Mail

To check for mail, first make sure you are connected to the internet.
Next, click on the JQ Mail popup in the Commands and Status window, or
type '/jqmail' without the quotes. The window @JQ Mail will be created.
The @JQ Mail window is used to display everything JQ Mail tells you.
JQ Mail will connect to your e-mail server once you double-click on
Check E-Mail. If @JQ Mail says "You have no messages.", then JQ Mail
will automanically disconnect from the server. If it says "Connected"
in the titlebar, then you have mail. A new window will be created if
you have mail, called @JQ Mail Inbox, which will list the mail that you
have. This may slow down mIRC for awhile depending on the amount of
messages you have. To read a message, double-click on the message.
Sorry, mIRC does not allow more then one space in text, so any form of
ascii art will not display correctly. To delete the message off the
e-mail server, double-click on Delete in the @JQ Mail window. If you
have the AutoDelete feature turned on, then you do not have to
double-click on Delete. AutoDelete is explained further later in the
readme. If you are finished reading your mail, double-click on Quit
under Delete. Also, if you wish to reply to the sender, double-click on
reply while that message is displayed in the window. This will transfer
you to the Send Mail option explained later, and will automanically
attatch the old message. Finally, if you want to forward a message to
someone, double-click on Forward while that message is displayed in the
@JQ Mail window.

* Sending Mail

To send mail, first make sure you are connected to the internet. Next,
click on the JQ Mail popup in the Commands and Status window, or type
'/jqmail' without the quotes. Now double-click on Send E-Mail. Next,
two prompt windows will appear and ask you for the recipient's e-mail
address and for the subject of the message. Fill in the blanks, and hit
the OK button. Enter message. Use as many lines as you like, but sorry
don't skip lines because mIRC will not accept them. When you're
done, double-click on the Done text in the right frame of the window. 
Now just let JQ Mail send the message to the e-mail server and it will
automanically disconnect from the mail server when finished.

* Aliases

/jqmail
	Opens the @JQ Mail window.

/mailin [User Number]
	Activates the POP3 E-Mail Checker. User Number is optional.

/mailout [E-Mail Address] [Subject]
	Activates the SMTP E-Mail Sender. The E-Mail Address and
	Subject parameters are optional.

/mailsetup
	Opens the @JQ Mail Setup window.

/mailuninst
	Uninstalls JQ Mail.

Note: /mailin and /mailout automanically runs the /jqmail command, and
by default F5 and F6 also activate /mailin and /mailout. You can modify
or delete the F5 or F6 keys by going into jqmail03.mrc and editing the first
lines "alias F5 mailin" and "alias F6 mailout" changing the F5 and/or
F6 to whatever key you want, or you can delete those two lines if you
do now want any F keys at all or if there are no available F keys.

* Other Features

Note: The JQ Mail menu can be found by right-clicking inside of the
@JQ Mail window. The popup menu to open up @JQ Mail is located under
mIRC's Commands menu above the mIRC toolbar at the top of your screen
or by right-clicking in the status window. Another script may have
renamed the Commands menu to another name, so if that has happened, it
is under the fourth menubar name between DCC and Window.

AutoCheck:

The AutoCheck feature found in the @JQ Mail right-click popup menu
is used to automanically check for mail right when you connect to an
irc server and rechecks every so many minutes that you told it to and
tells you if you have mail in the status window.

AutoDelete:

The AutoDelete feature is used to automanically delete your mail once
your read it from the server so you do not have to double-click on
Delete after you've read your mail. At my opinion this is not a good
idea in case someone sends you an attatchment, which JQ Mail cannot
recieve. In the case of an attatchment you may recieve it from an
e-mail client.

Signature:

The Signature feature is used to automanically send signature text at
the end of each message. Put the signature text inside the
mailsign.txt file in the mIRC directory. Sorry, no skipping
lines or multiple spaces due to mIRC not accepting them.

AutoSave:

Toggles if you want JQ Mail to automanically save incoming mail inside
the mailsend.txt file in the mIRC directory.

Debug:

Saves the server and client input and output to maildbug.txt.

Address Book:

Lets you store up to 5 e-mail addresses, so that you can easily send
e-mail to someone without filling in their e-mail address.

Uninstall:

Unloads and removes JQ Mail off of your system. This can be found in
the Setup menu under JQ Mail.

* Troubleshooter

Q: My F5 and F6 function keys are taken by another mIRC script! How can
   I remove them or change them to an available function key?
A: To assign the function keys to another function key, go to the Tools
   menu, then Remote, View, jqmail03.mrc. Next, scroll down the code
   below until you locate "alias f5" and "alias f6". Simply change the
   f5 and f6 to different keys which are available, between f1 and f12.
   To remove the function keys, simply remove the two "alias f5" and
   "alias f6" lines.

Q: I got a JQ Mail Error saying there's no POP3 or SMTP server entered
   in setup. What's wrong?
A: You have not installed JQ Mail properly. Go to the install section
   at the top of this readme and follow the instructions.

Q: I clicked on the message inside @JQ Mail Inbox once and nothing
   happened! What's wrong?
A: You must double-click on the message with the left mouse button, not
   single click.

* Versions

Version 0.3.1: 2/18/98

Added value showing popups
Added username to AutoCheck
Added Debug feature

Version 0.3: 2/7/98

Extended connection time out period to 30 seconds.
Added users feature to switch between different setups for different
  users using JQ Mail.
Added more error checking.
Added new interface, now much easier to use and better looking, now all
  in one window, @JQ Mail.
Converted the DCC Chat socket method the mIRC sockets.
AutoCheck now rechecks for mail every so many minutes.
Added new Setup window.
Added encryption of the POP3 password.
Added new logo.
Added anti-timeout NOOP command.
Fixed misc. bug fixes.

Version 0.2: 11/26/97

First public release of JQ Mail.
Modified SMTP and POP3 code, now more compatible.
Fixed signature popup bug.
Added AutoSave feature to save incoming mail to mailsave.txt.
Added Address Book which stores up to 5 e-mail addresses.
Added Reply and Forward support.
Added word wrap feature which divides up a long line into more than one
  line when sending an e-mail message.

Version 0.1: Early 1997

First private release of JQ Mail.

* Credits

AlecStaar, programmer and author of Windows magazine recommended
software, for his tips on coding.

The JQ Mail beta testers, for helping me test all the new features i've
developed in JQ Mail.

* About the Author

I am a mIRC coder known on IRC's DALnet as JoeyQ. I have started coding
mid 1996 and have been coding since. My "home channel" on IRC's DALnet
would be #Windows95 which I have founded in late 1996. I very much
enjoy coding and love finding new challenges.

* Copyright and Restrictions

You may distribute this archive to any individual person without
modifying any file contained in this archive, but you may not
distribute this archive other than to individual people without the
author's permission. You may not distribute any file individually from
this archive. You may not charge currency for this archive without the
author's permission.

JQ Mail is provided "AS IS" without warranty of any kind, either
express or implied, including but not limited to the implied warranties
of merchantability and fitness for a particular purpose. In no event
shall the author be liable for any damages whatsoever including direct,
indirect, incidental, consequential, loss of business profits or
special damages, even if the author has been advised of the possibility
of such damages.

The author can be contacted by electronic mail at minsner@peganet.com.

mIRC is a registered trademark of mIRC Co. Ltd.
All rights reserved.
```

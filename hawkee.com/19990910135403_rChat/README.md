# remoteChat vbeta by Da' Kool Cat

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

**Script Name:** remoteChat  
**Version:** beta  
**Category:** full  
**Author(s):** Da' Kool Cat  
**Email(s):** <kcat@thearmy.com>  
**Website(s):** [http://kcat.cjb.net](http://kcat.cjb.net)  
**Release Year:** 1999  
**Tags:** alias, dialog, interface, welcome message, dcc  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990910135403_rChat/19990910135403_rChat.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990910135403_rChat.zip",
  "file_count": 6,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1999-02-16",
  "min_file_date": "1999-02-03",
  "total_size": 21.81,
  "largest_file": "rchat.mrc",
  "text": [
    "Todo.txt",
    "encryption.txt",
    "motd.txt",
    "rchat.mrc",
    "readme.txt",
    "Changes.txt"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## readme.txt

```text
remoteChat v0.26b
by Da' Kool Cat <kcat@thearmy.com> <http://kcat.cjb.net>

  As of v0.26b, rChat is now officially a 5.5 script, due to the use of dialogs.
-
  This isn't nearly as complete as I'd like it to be, take a look at Todo.txt to see
what I mean.  If you can complete anything in Todo.txt or you come up with any other
enhancements, send me the modified version and we'll discuss it.
-
  Special thanks go out to pai and hellish of paiRC for pointing out bugs
and missing features, and letting me update it before the review. :)
-
  All scripting contained in rChat.mrc is � 1998-99 by Da' Kool Cat (that's me)
I've written all of it from scratch, with help from the mIRC help file too.
If you rip this off and I find out, you'll regret it for a very long time.
You can, as stated below, use this in your own script, but you must give
me credit somewhere (like in the readme, or when it starts).

Now, with that all out of the way...
-
  Well, I've noticed that most scripts have dcc partylines, so I decided
one cold Febuary morning (1998) to make a partyline using 5.3's socket commands,
feel free to use this in your script, but I recommend waiting until 1.0
Keep in mind that if you distribute/modify this script, you need to send
me the modified version so I can see what I can change.
(include your script too, or give me the URL for it)
-
  To connect to the partyline, start up your telnet client and connect to the
port you've chosen (default 4444), enter your username and password when
prompted, and you'll be on your way.

(local) Commands:
/rChat.chpass  <user> <pass> 	- Change's <user>'s pass to <pass>
/rChat.adduser <user> <pass> 	- Gives <user> access to your partyline.
/rChat.deluser <user>		- Deletes <user> from your partyline.
/rChat.start			- Startup the partyline
/rChat.stop			- Shutdown the partyline
/rChat.console			- Open the rChat console window

Variables:
Alot of these will be removed and replaced by the ini file...
%rChat.name       - the name of your partyline (used with joins and quits).
%rChat.motd       - the motd file used when a user is connected.
%rChat.port       - the port rChat listens on (default is 4444).
%rChat.console    - open @rChat when the partyline is started
%rChat.welcome    - echo neat information to @rChat when the partyline is started
%rChat.tmp/temp   - my temporary variable, "should" be removed after each function
%rChat.ver        - current rChat version reply (used like, once or twice)
%rChat.1          - used in username and passwd prompts (arg 1)
%rChat.passwd     - used in passwd prompt, "should" be removed after passwd function
%rChat.tmp.line   - used in motd
%rChat.tmp.num    - used to reset all stored users to not-connected state on startup
%rChat.tmp.user   - used to reset all stored users to not-connected state on startup
%rChat.users      - list of connected users
%rChat.users.num  - number of connected users

```

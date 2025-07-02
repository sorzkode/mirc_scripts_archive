# SB-Httpd v1 by [SB]Tikiman

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

**Script Name:** SB-Httpd  
**Version:** 1  
**Category:** addon  
**Author(s):** [SB]Tikiman  
**Email(s):** <bkennedy@haverford.edu>  
**Website(s):** [http://www.mirc.co.uk](http://www.mirc.co.uk)  
**Release Year:** 1998  
**Tags:** timer, alias, sockets, interface, web design, html, http  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990910154259_sbhttpd/19990910154259_sbhttpd.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990910154259_sbhttpd.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1998-02-13",
  "min_file_date": "1998-02-12",
  "total_size": 13.63,
  "largest_file": "SBHTTPD.MRC",
  "text": [
    "SBHTTPD.MRC",
    "SBHTTPD.TXT"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## SBHTTPD.TXT

```text
SB-Httpd v1.0 by [SB]Tikiman

This script provides a fast easy alternative to big web server packages.  It's ideal for running a quick temporary page, either to show off your html skills or offer files while on irc.  It handles multiple file requests, and generates quick lists of files and URL's.  Its cool, eh.

Features --
1) Stable socket coding to support multiple connections and avoid crashes
2) Easy to use status window 
3) Ability to generate file lists
4) Ban Controls
5) Ability to generate a bookmark of URL's in your catcher
6) Current Transfer Window

Use:

To start this script, type /httpd or hit F9.  This is your main status screen.  Hit F9 again to hide/unhide this window.  The server remains active unless you manually go offline or close the window.  First you will need to select a home directory.  The contents of this directory become the root directory on the web server.  The default web page is index.html.  For example:

http://your.ip/ is the same as c:\homedir\index.html
http://your.ip/stuff/stuff.html is c:\homedir\stuff\stuff.html

You may set bans be IP address, for instance 165.82.* will ban all from the 165.82.* domain.  This must be an IP address ban, not a hostname ban.  The default web port is 80, you may change this only when you are offline.  Click "Go Online" to activate the web server.  By hitting F9 again, the window becomes hidden, but the server remains active.  Hit F9 to toggle modes.

Another useful feature is the "Generate File List" command.  This will list the contents of a file in a specially generated html document.  The links are relative to the home directory, and the direcotry you generate from must be in your home directory.  That is, you must be able to serve the documents in the page you generate.  This document is placed in the root directory, but may be moved around, as long as the home directory does not change.  You make also "Generate URL list".  Puts a file in your home directory called urls.html, and contains all the URL's in your URL catcher.

You may cal a window that lists all the current transfer.  From here you may cancel trasfers and ban IP, and just get a general sense of current use.

Finally you may display stats on bytes and files sent, clear the window, or shut down the server.  You can also change your home directory at any time, even if you are online.

Known Problems and Inconsistencies --
As always, mIRC has problems with filenames with spaces.  More specifically, it cannot binary read from such files, thus it can not serve them.  This is noted when someone tries to download one.  The ban lists are taken straight from the remote.ini file, which does not flush right away.  It may take a bit before the list is flushed and displays correctly, but all bans do in fact take immediate affect.  Some browsers experience problems downloading certain file types, and may have to hit "save as" to download.  

Future --
While a CGI interface would be neat, I tend to doubt the general practicality.  I could develop a mirc scripting aliasing system, but for the purposes of this server (a quuck temporary server) it may be too much.  I may also provide an interface between the web and irc itself, that also remains to be seen depending on how useful it would be.  I am trying to write stuff that is in the end practical, and if you have the need for a true cgi gateway, then I sincerely reccomend a true web server application.

Questions, Comments as always to bkennedy@haverford.edu or drop by #hawkee.com on DALnet.

-- [SB]Tikiman

Appendix A -- How it Works
The key to this one was controlling the multiple sockets.  It had to handle multuple serve requests.  When a connection was attempted, it would move the socket to a random name.  It would then process the request, and begin the file transfer.  The key was storing the byte total and file info for an arbitrary socket name.  I ended up storing the file info in the socket mark area and the byte total in a varibale, both of which are accessible by knowing only the name of the socket.  Thus multiple sockets could efectively transfer w/o interfering with each other, since all data was self contained by the socket name.  Cool eh?

```

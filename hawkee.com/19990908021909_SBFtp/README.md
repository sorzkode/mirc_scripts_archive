# fSB-FTP v1 by [SB]Tikiman

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

**Script Name:** fSB-FTP  
**Version:** 1  
**Category:** addon  
**Author(s):** [SB]Tikiman  
**Email(s):** <bkennedy@haverford.edu>, <SB@hawkee.com>  
**Website(s):**   
**Release Year:** 1998  
**Tags:** timer, alias, popups, popup, mp3, addon, highlight, FTP  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990908021909_SBFtp/19990908021909_SBFtp.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990908021909_SBFtp.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1998-01-14",
  "min_file_date": "1998-01-14",
  "total_size": 28.84,
  "largest_file": "FTP.MRC",
  "text": [
    "FTP.MRC",
    "FTP.TXT"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## FTP.TXT

```text
SB-FTP v1.01 for mIRC 5.31

If you are looking for a fully featured, fully customizable FTP client, this isn't it.  This client is meant for short sessions and transfers.  It is ideal for uploading 1 or 2 files, or for checking the validity site you find on irc.  It's fast, easy, and all within mIRC.  I added a little section on the end about how I made the script, for those who are interested.

Features:
1. Connect to FTP sites within mIRC
2. Send and Receive ASCII and Binary files
3. Navigate Remote Directory Structures
4. Save up to 8 site profiles
5. Quick ftp downloads for ftp URL's
6. Lots of little things

Use:

/ftp <site> <login> <pass>

All 3 parameters are optional.  Adding a site will let you automatically connect to the site.  Adding a login will send the USER paramater automatically, and adding the third parameter will auto-send a password, for example:

/ftp ftp.cdrom.com anonymous SB@hawkee.com
/ftp ftp.yourisp.com yourid yourpassword

You can also bring up the main ftp window by hitting F10

The Quick FTP features works as follows:

/qftp login:password@ftp.site.com/path/name/file.ext:port"

If the login:password is omitted, it will log in anonymously, ie "/qftp ftp.cdrom.com/path/file.ext".  If you omit the port, it will defualt to the standard ftp port.  You may close the window by double-clicking or using the popup.  Do not manually enter anonymous E-mail address passwords, the second @ will confuse it.  There are a multitude of reasons why a connection may close.  They include bad servername, incorrect port, bad username/password, max logins reached, bad pathname, bad filename, incorrect permissions to download, and insufficient credit to download.  If this happens, try again with the normal ftp mode to get a more precise diagnosis.

You can navigate through the ftp server with the popup commands. While offline, you may:

1) Open a Server -- Prompts for server name
2) Change Port -- The default is 21
3) Launch a Profile -- Logs on with preset info
4) Manage a Profile -- Create and clear profiles
5) Quit -- Close the script

While online, you may do the following things:

1) Right Click a directory and select "Go here" will move you to that directory.
2) Select "Move up one Directory" to get one step closer to the root directory
3) Select "Enter a Directory" to enter a full pathname
4) Select "Refresh" to refresh the listbox
5) Select "Get Full Info" to get a readout of file sizes, permissions, etc
6) "Transfer Mode" lets you select ASCII or Binary
7) Select a file and right click to Get it or Delete it
8) Select "Put File" to upload a file to that directory
9) Select "Rename File" to rename a file
10) Call up a list of Local Files -- you can highlight multiple files for an mput.
11) The Quit option now just disconnects you, it does not close the client.  Use it to end your session.

Note, the popups are extremely dynamic and will change depending on what exactly you select.  You can highlight multiple files for getting and putting.  

Valid commands in the main window are:

USER username (gives username)
PASS password (gives password)
CD <directory> (change directory)
DIR (listbox refresh)
FDIR (full info)
BIN (binary mode)
ASC (ASCII mode)
DEL <filename> (deletes file from server)
HELP (gets list of server commands)
OPEN <servername> (opens new connection)
GET <filename> (gets requested file, stores it in your download directory)
PUT <filename> (transfers file to current directory of server)

but all in all, the popups are much easier to use.  I may even remove manual commands entirely in future versions.

Hints:
Be sure you select Binary file mode for any binary file!  This means any image, sound, zip, or exe!  It will auto-change for some extensions, but check anyway.
If you are getting "cannot build data connection" errors, it may be that mIRC has your ip wrong.  Type "//dns $me" and make sure that the 4 number ip address matches the one in the "Local Info" tab under setup.  The "Local Directory" window is cool, but remember that all downloads will go to the download directory or mirc directory if this window is not open.  If you would like to see how large a file is, select "get full info" in the directory.

Known Inconsistencies/Problems:
Sometimes you may encounter a "Cannot build data connection" error for no good reason, especially on startup.  This usually fixes itself, just refresh the directory or restart the client.  Be sure your local info is correct too.  Due to weird inconsistencies of irc servers, it is really hard to account for every numeric responce.  (irc protocol is a picnic compared.)  I caught the key ones, and let the others display since who knows what may come.

If you would like to include this script as an addon for some more general script, it is probably fine with me, just be sure to get in touch with me first.

Use the built in comment sender to get in touch, or send questions/comments to me at bkennedy@haverford.edu, or drop by #hawkee.com on DALnet.  This is an incomplete script, the more I learn about ftp the more nifty it will get.  Please tell me what you think would make a good addition.

[SB]Tikiman

Appendix A -- Making this Script
The key to this script was learning the ins and outs of the FTP protocol.  Now, initiating the connection, making the window, was all basic socket and window stuff, not hard.  The key is the PORT command.  Before any data transfer can take place, you need to send the server a PORT xxx,xxx,xxx,xxx,y,z command.  The first for xxx's are your ip address, and the last 2 numbers are what port you are listening to by the formula (port == 256 * x + y).  Then I opened a socket to listen on that port.  The server does its thing and connected to my port.  It is through this connection, not the port 21 one, that all file transfers and lists go through.  Afterwards this port is closed and forgotten, the port number is incremented, and you are ready for another connection.  Pretty cool, eh.



```

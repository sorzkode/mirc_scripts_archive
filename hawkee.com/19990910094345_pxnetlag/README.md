# NetLag v1.10 by Natrak (ProjectX Scripters)

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

**Script Name:** NetLag  
**Version:** 1.10  
**Category:** addon  
**Author(s):** Natrak (ProjectX Scripters)  
**Email(s):** <px-info@princess.dk>, <px-natrak@princess.dk>  
**Website(s):** [http://www.projectx.princess.dk/](http://www.projectx.princess.dk/), [http://www.projectx.princess.dk/px.html](http://www.projectx.princess.dk/px.html), [http://www.mirc.co.uk/](http://www.mirc.co.uk/)  
**Release Year:** 1998  
**Tags:** timer, nicklist, alias, popups, dialog, popup, addon, protection, highlight, lag detetion  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19990910094345_pxnetlag/19990910094345_pxnetlag.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19990910094345_pxnetlag.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1998-09-24",
  "min_file_date": "1998-09-19",
  "total_size": 20.85,
  "largest_file": "pxnetlag.mrc",
  "text": [
    "pxnetlag.txt",
    "pxnetlag.mrc"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## pxnetlag.txt

```text
                                      __  __  _
            ___  ____ __  _ ___  ___ / /_ \ \/ /
           / _ \� __/ _ `/ / -_)/ __/  _/  )  (
          / .__/_/  \___/ /\___/\__/\__/  /_/\_\
         /_/ -------- /__/ ---------------------
                           NetLag v1.10 by Natrak
                          px-natrak@princess.dk
================================================================

-----[ Install ]------------------------------------------------

1. Unzip the pxnetlag.zip into your mIRC directory.
2. Type /load -rs pxnetlag.mrc at the mIRC command line.
3. Click 'Yes', when a dialog box popups up to ask if you want 
   to run the initialization.

Note: This scripts requires mIRC 5.4 and above.  To get the 
      latest version of mIRC, visit http://www.mirc.co.uk/.

-----[ Description ]--------------------------------------------

This PX add-on is based on an old IRC trick. By sending a
/VERSION command to a server you can determin the time it takes
for what you send to that server and back. This add-on makes
that a lot easier, and it is more accurate.

Note: due to the dynamics of the internet the lag can vary from
second to second. The more specific you are in specifying the
server you want to check the lag to, them more accurate the ping
reply will be.

-----[ Manual ]-------------------------------------------------

There are three ways to check the lag. It is posible check the
lag to the whole network, to a set of servers, or one server in
specific.
  � To check the entire network select 'Check network lag' from
    the 'NetLag [ProjectX]' menu.
  � To check the lag to a group of server select 'Check
    server(s) lag' from the menu. Then enter the mask for the
    servers you want to check (ie *.us.* to check all the US
    server).
  � To check the lag to a specific server 'Check server(s)
    lag' from the menu. Then enter the name of the server you
    want to check the lag too.

If you have pinged a group of server then a small report is
generated for you. To see this report select 'Show lag stats'.
This will show you the minimum, average and maximum lag time.

There are also some settings that will change the way the add-on
works. To see the current settings select 'NetLag setup' from
the menu. To change any of the settings double click on that
setting.

If you want to see all the ping times in a window, check 'Show
results in custom window'. If this is disabled then the replies
will be shown in the active window. To make this window start
minimized just enable 'Open window minimized'. If you don't want
to use a window to show the results they will be show in the
status window. If you would rather see them in the active window
enable 'Show results in active window'. The add-on can also
check the lag automatically. To do this make sure 'Check network
lag every N minutes' where N is the time between each checked.
The last setting changes the interval between each server is
ping'ed. Should only be change if:
  � you disconnect from the server with the message 'Excess
    flood' whenever you check the network lag.
  � the ping times are always very high, then increasing this
    value might make the values more accurate.

If you select 'About NetLag' you will see a short discription of
the add-on and where to send any bugs/complaints.

In case you are not a fan of popups, you can use these commands:
 � /netlag [server mask/sever name]
   checks the network lag if no mask is specified or the lag to
   the specified mask or to the specified server.
 � /netlag.setup
   will show the setup window (see above for information on the
   different settings).
 � /netlag.stats
   will echo the current lag report.
 � /netlag.about
   shows the about window.

Note: all of the NetLag windows have a popup menu. Just right-
click in a window and you will be offered a set of choices.
One to take particular notice to is the 'Connect to server'
choice in the NetLag window. It will make you connect to the
currently selected server (which is not as lagged to the rest of
the net).

-----[ ProjectX ]-----------------------------------------------

ProjectX is a Scripters Crew that focuses on creating scripts,
mainly mIRC-scripts. Not just one kind of script but all-kinds.
We create Practical Scripts for the lazy IRC-user, Protection
Scripts for the threatend one, Warscripts for the aggressive or
vengeance-seeking among us.

We are an organised group of scripters determined to help each
other create, develop and refine scripts. We bundle our 
knowledge, so that the inexperienced scripters may benefit from
our experienced crew-members and our experienced crew-members
benefit from the enthousiasm and fresh insights from our
less-experienced members. We are not trying to create the
'ULTIMATE' script, there is no such thing. We concentrate on
creating good, reliable, compatible and useful scripts for mIRC
users.

You can contact ProjectX in the following ways:
- Visit our homepage..: http://www.projectx.princess.dk/
- Vist us on IRC......: #projectx (Galaxynet)
- Drop us an e-mail...: px-info@princess.dk


-----[ Disclaimer ]--------------------------------------------

We are in no way responsable for the use of this code. By 
using this script and reading this document you accept the fact
that any damage (emotional, physical, dataloss, ...) caused by 
the use and the storage of these files is NOT our
responsability.
```

# weatherclient4.0%5b01-24%5d v1.0 by msg 14 21

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

**Script Name:** weatherclient4.0%5b01-24%5d  
**Version:** 1.0  
**Category:** protection  
**Authors:** msg 14 21  
**Email(s):** <geph@nerdshack.com>  
**Website(s):** [http://mobile.wunderground.com](http://mobile.wunderground.com), [http://mircscripts.org/comments.php?cid=2010](http://mircscripts.org/comments.php?cid=2010), [http://mircscripts.org](http://mircscripts.org), [http://wunderground.com](http://wunderground.com), [http://plastic.xsintrk.net/mirc/weatherclient](http://plastic.xsintrk.net/mirc/weatherclient), [http://mirc.com.](http://mirc.com.)  
**Release Year:** 2006  
**Tags:** dialog, intl weather, midi, flood protection, trigger, timer, weather, protection, alias, bot  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/weatherclient4.0%5b01-24%5d/weatherclient4.0%5b01-24%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "weatherclient4.0%5b01-24%5d.zip",
  "file_count": 3,
  "file_types": [
    ".ini",
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2006-01-24",
  "min_file_date": "2006-01-22",
  "total_size": 29.78,
  "largest_file": "weatherclient.mrc",
  "text": [
    "readme-weather.txt"
  ]
}
```

## 📋 Text Content (from readme-weather.txt)

```text
Weather client 4.0 for mIRC

Send comments, questions to geph@nerdshack.com



http://plastic.xsintrk.net/mirc/weatherclient  News, FAQ and more.

http://mircscripts.org/comments.php?cid=2010   Forum at mircscripts.org



------------------------------------------------------------------------

Contents:



1. About

2. Installing

3. Command usage

4. Options overview

5. Credits



------------------------------------------------------------------------

1. About



  Weather client is a small weather script for mIRC 6.16 or better.  It

strips weather data from the webpages at http://mobile.wunderground.com,

and by default displays it in the active mIRC window.



Features include:



- INTL weather

- Search by INTL station ID

- Channel service with flood protection

- Proxy support

- Forecasts

- Advanced display options

- Weather data can be manipulated through signal scripts



  Weather client is written in pure mircscript, meaning no DLLs, Visual

Basic scripts, or COM objects.  It has been completely rewritten since

version 3.2.  Many of the failings of the 1-3x series were addressed,

and the script is much more robust now.



------------------------------------------------------------------------

2. Installing



- Extract the zip to your mIRC dir (it should contain weatherclient.mrc,

  weatherclient.ini, and readme-weather.txt) or any mIRC subdirectory.

  If you don't have mIRC, get the latest version at http://mirc.com.



- If you have an earlier version of Weather client (or any other weather

  script) loaded in mIRC, you should unload it now to avoid possible

  conflicts between the scripts.



- Type //load -rs "[drive]:\[path]\weatherclient.mrc" at the mIRC

  command line, and allow the script to initialize, if you get a

  'Script Warning' dialog box.



------------------------------------------------------------------------

3. Command usage



Syntax:		/weather [-i] [-m] [-b] [-s] [-d] [-signal:name]

		[-config:tabname] [search]



		Bot flags:



 -i		Force English Imperial units.

 -m		Force Metric units.

 -b		Both Metric/Imperial units.

 -s		Search by INTL station ID (The 5-digit code used in the

		following URL selector: /global/stations/<code>.html)

		This should solve any problems with ambiguous stations.



		Local flags:



 -d		Set current search string as default.



 -signal	Trigger a SIGNAL event once the weather data has been

		retreived.  A unique name can be specified for the

		event.  The default name will be in the form 'wc.*.'.



		ex: "/weather -signal:test <search>" would trigger the

                'test' signal event if it existed.



 -config	Opens the options dialog.  A tab can automatically be

		focused by using it's name as the -config argument.

		This flag takes priority and will block any other used.



		ex: "/weather -config:bot" opens the bot settings.

		ex: "/wconfig bot" opens the bot settings.



		Any other text is sent to the server as a search term,

		regardless of its position in the string.  Flags which

		occur later in the string take priority.



------------------------------------------------------------------------

4. Options overview



4.1 - General



- Units: Select the default units for weather display.  These defaults

  can be overridden by using the -i/-m/-b flags in your /weather string.



- Signal event: If the 'Suppress default display when using -signal'

  option is set, only the signal script's output will be shown.



- Logging: Log the socket in/outflow, important for troubleshooting.



4.2 - Bot



- Trigger: Set the trigger for the bot.



- Reply by msg: Bot responds to replies made by /msg.



- Reply by notice: Bot responds to replies made by /notice.



- Hide requests/replies: Bot weather requests and replies will be

  filtered out of your mIRC window.



- Allow in channels: Bot responds to requests made in a channel.



- Allow in queries: Bot responds to requests made in a private msg.



- Ignore these channels: Do not allow the bot to respond to requests

  that originate in these channels.  Also works for nicknames.



- Spam/Flood control: A simple flood blocker for the bot.  Allows X

  weather queries every Y seconds.



  A note about the reply method: The bot will reply to a request in

the same way that the request was made.  For example, a request sent by

/notice in a channel will result in the bot replying to the channel by

/notice, if 'Reply by notice' and 'Allow in channels' are ticked.



4.3 - Proxy



- Use HTTP proxy: Connect to Wunderground through a HTTP proxy.  If you

  don't understand what a proxy is or don't have access to one, leave

  this option alone.



- Hostname/port: The proxy's address and port.



- Proxy-Authorization: User ID and password for the proxy, if required.

  Only Basic authorization is understood by this script.  If you need

  something stronger, check Google for 'local proxy servers'.  There may

  be one which can map Basic auth to wha
```

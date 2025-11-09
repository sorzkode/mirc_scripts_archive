# Double Click Name of module v6.16 by the Free Software

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

**Script Name:** Double Click Name of module  
**Version:** 6.16  
**Category:** game  
**Authors:** the Free Software  
**Email(s):** <alamakx@yahoo.com>, <hsaleh@tm.net.my>, <maul@mp3zs.net>, <camu_the_master@hotmail.com>, <khaled@mirc.com>, <mp3zs@hotmail.com>, <folken@sinectis.com.ar>, <ads@vapor.com>, <bachok83@yahoo.com>, <2005da-hype@codedb.orgda>  
**Website(s):** [http://www.mIRC.com/](http://www.mIRC.com/), [http://www.codedb.org](http://www.codedb.org), [http://www.i-am-a-spamming-whore.com](http://www.i-am-a-spamming-whore.com), [http://www.hIRC.orgtips.n27](http://www.hIRC.orgtips.n27), [http://>,$_setup.htb(url](http://>,$_setup.htb(url), [http://www.codedb.org/images/blocks/icon_select.gif](http://www.codedb.org/images/blocks/icon_select.gif), [http://www.dim-bulb.net/~dragonzap/dlls/](http://www.dim-bulb.net/~dragonzap/dlls/), [http://@hotmail.com](http://@hotmail.com), [http://www.hirc.org/malaysia.html](http://www.hirc.org/malaysia.html)  
**Release Year:** 2005  
**Tags:** wav, trigger, log viewer, raw events, protection, notify, rejoin, away system, toolbar, nicklist, auto join, auto-op, bad word, slap, timer, web search, alias, mp3 player, auto away, color scheme, away log, auto-kick, dcc, access list, channel protection, dice, sockets, plugin, addon, uptime  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/hirc2.2-beta065%5b12-24%5d/hirc2.2-beta065%5b12-24%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "hirc2.2-beta065%5b12-24%5d.zip",
  "file_count": 168,
  "file_types": [
    ".bmp",
    ".cur",
    ".dat",
    ".dll",
    ".hrc",
    ".htb",
    ".html",
    ".icl",
    ".ico",
    ".ini",
    ".jpg",
    ".mdx",
    ".mrc",
    ".mts",
    ".txt"
  ],
  "max_file_date": "2005-12-24",
  "min_file_date": "1998-05-15",
  "total_size": 2466.0,
  "largest_file": "hIRC2.2/system/img/gnome.icl",
  "text": [
    "hIRC2.2/hIRC.txt",
    "hIRC2.2/license.txt",
    "hIRC2.2/modules/Kte-Readme.txt",
    "hIRC2.2/modules/napster/Napster-ReadMe.txt",
    "hIRC2.2/modules/napster/txt/Help.txt",
    "hIRC2.2/modules/napster/txt/warning.txt",
    "hIRC2.2/system/notify.txt",
    "hIRC2.2/system/text/address.txt",
    "hIRC2.2/system/text/advert.txt",
    "hIRC2.2/system/text/DownloadedFiles.txt",
    "hIRC2.2/system/text/DownloadedFiles1.txt",
    "hIRC2.2/system/text/hl.txt",
    "hIRC2.2/system/text/ie.txt",
    "hIRC2.2/system/text/kickhist.txt",
    "hIRC2.2/system/text/kicks.txt",
    "hIRC2.2/system/text/panel.txt",
    "hIRC2.2/system/text/programs.txt",
    "hIRC2.2/system/text/quits.txt",
    "hIRC2.2/system/text/temp.txt",
    "hIRC2.2/system/text/trojan.txt",
    "hIRC2.2/system/text/version.txt",
    "hIRC2.2/temp/motfv.txt"
  ]
}
```

## 📋 Text Content (from hIRC2.2/modules/Kte-Readme.txt)

```text
Kte v1.5

--------------------------------------------------- - -  -    -







Loading a theme

--------------------------------------------------- - -  -    -

  To load a theme in Kte, you may use /theme.load or /kte_load

(both do the same). For example, to load the theme called

"Sample" (which should be in your themes directory if the path

isn't specified), use the syntax '/theme.load Sample'.

  Kte supports simple MTS themes and vPak archives. If you

specify a path for nGZIPn.dll, it will also support gzipped

versions of the mentioned formats. As result, the supported

extensions will be .mts, .mts.gz, .vpk and .vpk.gz. For zipped

files support, you must have mUnzip, and specify its path on the

Settings dialog.

  If you prefer, you may open a theme loading dialog by typing

just '/theme.load'.

  Some themes include schemes, which are small variations to

their appearance. To use, for example, the 5th scheme from the

Sample theme, use '/theme.load -s5 Sample'.

  You can define what you want and what you don't want to be

loaded on the load dialog. You can't, however, use this to mix

settings from different themes.

  Theme loading in Kte may take a little long, since it compiles

the theme into a scripting file for best performance.





Changing schemes

--------------------------------------------------- - -  -    -

  If you want to use a different scheme from the current theme,

you may use /theme.scheme or /kte_scheme. It's a bit faster than

using /theme.load again, as /theme.scheme skips some steps of

loading a whole new theme.

  To list all the schemes from the current theme, type just

'/theme.scheme'.

  To load a new scheme, you may specify its number (for example,

to load the 3rd scheme, use '/theme.scheme 3') or its name (to

load the scheme named 'Blue', type '/theme.scheme blue').

  If you want to load the default scheme, you may use

'/theme.scheme -d'.





Unloading a theme

--------------------------------------------------- - -  -    -

  When you load a theme, the previous one is automatically

unloaded; however, if you don't want to use any theme, type

'/theme.unload' or '/kte_unload'.

  Kte restores your colors, RGB values, nicklist colors, fonts

and timestamp settings when you use /theme.unload. However, due

to a limitation in mIRC, some cases of nicklist coloring can't be

restored correctly: if you have one or more color settings which

refer to the same nickname (does not apply to "Any nick"), only

one of them will be restored. Also, font recovery is not

complete: misc windows, like Notify and URL List, use the same

font as the status window when restored (which is enough for most

users).

  Anyway, I hope the current restoring helps you with most (if

not all) of the problems of quitting using any themes. If you

would like to see some improvements, please contact me.





Settings

--------------------------------------------------- - -  -    -

  To change engine settings, type '/theme.load', and click the

File\Settings menu.

  You can, for example, set up the default path for your themes

folder, clear your cache directory, or even hide the /names list

you get when joining a channel.





Misc notes

--------------------------------------------------- - -  -    -

  You can get nGZIPn and mUnzip on http://www.mircscripts.org/

(DLLs section), and several themes on the Themes section.



  If you want to quit using Kte, just type '/unload -rs kte.mrc'.

If you are using a theme, you'll be asked if you want to unload

it first.



  Kte reads where some events should be displayed from mirc.ini

and caches the information. In case you have changed something

and wants to force Kte to read mirc.ini again, you may use

'/kte_refresh'.



  If you want to use Kte in your script, feel free to change

Kte-Dyn.dat (the source of the dynamic script file) or Kte.mrc to

fit your needs, as long as you give me credits. You can also use

two small functions which may ease information output: /kte_echo

and /kte_error.

  The syntax is simple: '/kte_echo <window> <text>', where

<window> is the window where you want to echo (can be -a for

active window or -s for status window), and <text> is the text

you want to output. It's a shortcut for using the Echo MTS event.

/kte_error works the same way, but for the Error event.

  If you're writing an add-on, I wouldn't recommend using these

aliases, though, or your add-on will only work if the user has

Kte.





Theme problems

--------------------------------------------------- - -  -    -

  These are common theme problems:

  - When you preview a theme, it echoes something to the status

    window. This is because the theme is using /echo directly

    instead of %:echo, defined by the standard, and needs fixing.

  - Kte simply says "invalid theme file". Possible causes are

    that the theme doesn't have a Name line, doesn't define the

    version of the MTS standard it's made for (MTSVersion line)
```

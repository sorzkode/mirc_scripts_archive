# amp in 1.08hack%5b1112473517%5d v1.08 by EmiZ

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

**Script Name:** amp in 1.08hack%5b1112473517%5d  
**Version:** 1.08  
**Category:** game  
**Authors:** EmiZ  
**Email(s):** <dragonzap1@aol.com>  
**Website(s):** [http://www.winamp.com](http://www.winamp.com)  
**Release Year:** 2005  
**Tags:** greet, dialog, midi, mp3, media player, wav, trigger, plugin, timer, notify, alias, bot, interface  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mirc.net/amp_in-1.08hack%5b1112473517%5d/amp_in-1.08hack%5b1112473517%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "amp_in-1.08hack%5b1112473517%5d.zip",
  "file_count": 8,
  "file_types": [
    ".cpp",
    ".def",
    ".dll",
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2005-04-02",
  "min_file_date": "2000-02-08",
  "total_size": 147.43,
  "largest_file": "amp_in.cpp",
  "text": [
    "amp_in_hacked.txt",
    "info.txt",
    "mIRCamp.txt",
    "readme.txt"
  ]
}
```

## 📋 Text Content (from info.txt)

```text
Basic steps to playing music with DragonZap's WinAmp Interface DLL:

We will assume in this case that the WinAmp plugin directory for all

plugins is "C:\Program Files\WinAmp\plugins".



1.      Load all the input plugins. This can be done most easily with

        something like:



        alias -l ign return

        alias -l load-input-plugin dll amp_in.dll PluginManager load input $1-

        alias -l load-all-input ign $findfile(C:\Program Files\WinAmp\plugins,

                in_*.dll,0,1,load-input-plugin $1-)



        The three aliases do this:

        ign               - Simply returns. This keeps the $findfile output

                            from doing anything.

        load-input-plugin - Loads a single input plugin.

        load-all-input    - Loads all the input plugins from the WinAmp

                            plugins directory.



        Now just /load-all-input to load the input plugins.





2.      Next, you must load an output plugin. The simplest is most likely

        the waveOut plugin. Even though this is standard with WinAmp, don't

        assume everybody has it.



        alias -l load-waveout dll amp_in.dll PluginManager load output

                C:\Program Files\WinAmp\plugins\out_wave.dll



        To load this output plugin, type /load-waveout



3.      You may wish to load a DSP plugin, but it is not required. DSP

        means "Digital Signal Processing" and can make your files sound

        better or worse, add echo, and many other things. We'll assume

        that you have the NullSoft DSP plugin, but don't assume anyone

        actually does; always check and/or give the user a choice.



        alias -l load-dsp dll amp_in.dll PluginManager load dsp

                C:\Program Files\WinAmp\plugins\dsp_ns.dll



        /load-dsp if you want this DSP plugin.



4.      Now you are ready to play. If you only want to play one file,

        you may do something like this:



        alias play-winamp-file dll amp_in.dll Play $remove($1-,")



        Now just /play-winamp-file <filename>, and the DLL will

        automatically select the appropriate input plugin and

        begin playback unless there is already a song playing.



5.      This DLL includes a built-in playlist. To add a file to the

        end of the playlist:



        alias enqueue dll amp_in.dll Queue add $remove($1-,")



        "/enqueue <filename or URL>" a few times to fill in your queue

        with files to play. When you are done, play the queue:



        alias play-queue dll amp_in.dll Play <QUEUE>



        And playback begins.



A full list of functions is included in the README.TXT file that should

have been included with the zip. You may also e-mail me (dragonzap1@aol.com)

if you need help.
```

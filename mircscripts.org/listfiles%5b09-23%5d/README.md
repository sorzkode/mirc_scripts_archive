# listfiles%5b09-23%5d v1.10 by Carpe Noctem 

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

**Script Name:** listfiles%5b09-23%5d  
**Version:** 1.10  
**Category:** channel  
**Authors:** Carpe Noctem   
**Email(s):** <Carpe@bexcrew.de>  
**Website(s):** [http://www.mircscripts.org](http://www.mircscripts.org), [http://www.xiph.org/vorbis/doc/Vorbis_I_spec.html#id2561106](http://www.xiph.org/vorbis/doc/Vorbis_I_spec.html#id2561106), [http://www.id3.org/id3v2.3.0.html#sec4](http://www.id3.org/id3v2.3.0.html#sec4), [http://www.mircscripts.org's](http://www.mircscripts.org's)  
**Release Year:** 2005  
**Tags:** dialog, alias, mp3  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/listfiles%5b09-23%5d/listfiles%5b09-23%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "listfiles%5b09-23%5d.zip",
  "file_count": 4,
  "file_types": [
    ".cpp",
    ".dll",
    ".h",
    ".txt"
  ],
  "max_file_date": "2005-09-23",
  "min_file_date": "2005-09-12",
  "total_size": 72.25,
  "largest_file": "src/listfiles.cpp",
  "text": [
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
listfiles.dll v1.10 beta3 (aka 1.092) by Carpe Noctem / Misanthrop





(more or less IMPORTANT) NOTES:

-you should call the setoutput function with the non-threading version (do NOT use /dllCALL or $dllCALL())

-while you are seaching for files with the multithreaded /dllcall or $dllcall(), prevent yourself from calling

 setoutput before the search is done (you'll get an lf_return signal); maybe, it makes no trouble calling setoutput

 while you get an lf_file or lf_dir signal, but not sure, depends how Khaled implemented the stuff... )

-fname, dir, reldir changed to lfname, ldir, lreldir (l means always long names), afname, adir, areldir changed to

 fname, dir, reldir (always works in mIRC, they're garantueed to contain NO double spaces)

 lenf is know flen

-the tags created, modified and accessed should work with $asctime(), it may happen that the time is not converted

 to your localtime (notice me if this is the case which what the dll returns, what result you estimated, what mirc's function

 or explorer says, your timezone...), the old version seemed to had problems with non-NTFS filesystems, I hope the new method

 works on FAT too

-the listfiles flag 'm' for reading mpeg data has been removed, the dll detects itself depending on the output you

 set if it is needed to read mpeg info, id3v1 and/or id3v2 (only if filename ends with *.mp? and is not *.mpg)

-using the MPEG or ID3 tags will speed down the dll a lot (however, it is faster than using mirc's function I think,

 and faster than a scripted reader), think about using the multithreaded $dllcall() instead of $dll()

-the signals has been renamed, the new signals are

 lf_return: returns the same as $dll() in $1- but as signal.. needed cause $dllcall() returns the path + filename of the

 dll.. really useless

 lf_file: output for a file in $1-, formatted which what you gave to setoutput

 lf_dir: returns the directory that the dll enters for scanning in $1- (only if depth is < than scandepth)







Functions

---------



1.) setoutput



Sets the output for each file. The tags are replaced with the file information and written to a file and/or send

as a signal, depending on the output mode you set.

The default value is: <fname> <fsize>

the function always returns OK



HINT:

You may set it to 0 + 0 0 0 <fname> $+ $!chr(9) $+ <fsize> for example to work with an MDX'ed or DCX'ed controls





tags are always enclosed in <tag>

The supported tags are:



<size>		This is the size of the file in bytes.

		NOTE: This tag was named <fsize> in a prior version



<fsize>		This is the formatted and rounded size of the file in b, kb, mb or gb.

		Example: 12.34mb



<fname>		The name of the file found (without pathname)

		NOTE: if name contains double spaces, you'll get the short name



<dir>		The path to the file (with a \ at the end)

		NOTE: if name contains double spaces, you'll get the short name



<reldir>	This is the path to the file relative to the dir you searched in. For example, 

                if you searched in "C:\audio" and found "C:\audio\Metallica\Metallica - One.mp3", 

                <reldir> contains "Metallica\". If you found C:\audio\title.ogg, <reldir> is 

                empty.

		NOTE: if name contains double spaces, you'll get the short name





<lfname>

<ldir>		Similiar to <fname>, <dir> and <reldir>, but returns the long names always

<lreldir



<sfname>

<sdir>		Similiar to <fname>, <dir> and <reldir>, but returns the short names always

<sreldir>	





<type>		The number of the wildcard, that matched for this file, starting with 1.

		The value will be 0 if it didn't match, but the "list all files" flag was set



<attr>		for each attribute that is set, the depending char will be added

		a = archive attribute is set

		c = compressed attribute is set

		e = encrypted attribute is set

		h = hidden attribute is set

		r = readonly attribute is set

		s = system  attribute is set

		t = temprorary attribute is set



<created>	the creation time of the file

<accessed>	the time the file was last accessed

<modified>	the time the file was last modified







Audio info:

<len>		MPEG and Ogg Vorbis:	estimated length of the file in seconds, for vorbis, this value is calculated with the nominal bitrate

					which may differ from the real bitrate

<flen>		MPEG and Ogg Vorbis:	same as <len>, but formatted to hh:mm:ss (hh >= 10), h:mm:ss (h > 0), mm:ss (mm >= 10) m:ss else

<bitrate>	MPEG:		bitrate in kbps on mp1/2/3 files (this value is incorrect for VBR files for dll version 1.10)

		Ogg Vorbis:	the nominal bitrate in kbps



<minbitrate>	Ogg Vorbis:	the minimum bitrate in kbps

<maxbitrate>	Ogg Vorbis:	the maximum bitrate in kbps



<sample>	MPEG and Ogg Vorbis:	samplerate in Hz



<chans>		typ of channels

		MPEG:		"Mono", "Dual Channel", "Stereo" or "Joint Stereo"

		Ogg Vorbis:

			1 channel:		"Mono"

			2 channels:		"Stereo"

			3 channels:		"1D Surround" (

			4 channels:		"Quadraphonic Surround"

			5
```

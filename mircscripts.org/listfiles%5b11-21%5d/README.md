# listfiles%5b11-21%5d v0.99 by Misanthrop

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

**Script Name:** listfiles%5b11-21%5d  
**Version:** 0.99  
**Category:** channel  
**Authors:** Misanthrop  
**Email(s):** <CarpeNoctem@Black-Gothic.com>  
**Website(s):** [http://www.mircscripts.org](http://www.mircscripts.org), [http://www.id3.org/id3v2.3.0.html#sec4](http://www.id3.org/id3v2.3.0.html#sec4), [http://www.mircscripts.org's](http://www.mircscripts.org's)  
**Release Year:** 2004  
**Tags:** dialog, alias, mp3  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/listfiles%5b11-21%5d/listfiles%5b11-21%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "listfiles%5b11-21%5d.zip",
  "file_count": 2,
  "file_types": [
    ".dll",
    ".txt"
  ],
  "max_file_date": "2004-11-21",
  "min_file_date": "2004-11-21",
  "total_size": 27.76,
  "largest_file": "listfiles.dll",
  "text": [
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
listfiles.dll v0.99 beta by Misanthrop



Functions

---------



1.) setoutput



Sets the output for each file. The tags are replaced with the file information and written to a file or send as a signal, depending on the output mode you set.

You may set it to 0 + 0 0 0 <fname> $+ $!chr(9) $+ <fsize> for example to work with an mdxed list

The default value is: <fname> <fsize>

the function always returns OK



tags are always enclosed in <tag>

The supported tags are:



<size>		This is the size of the file in bytes. NOTE: This tag was named <fsize> in a prior version



<fsize>		This is the formatted and rounded size of the file in b, kb, mb or gb. Example: 12.34mb



<type>		The number of the wildcard, that matched for this file, starting with 1.

		The value will be 0 if it didn't matched, but * flag was set





<fname>		The name of the file found (without pathname)



<dir>		The path to the file (with a \ at the end)



<reldir>	This is the path to the file relative to the dir you searched in. For example, 

                if searched in C:\audio and found C:\audio\Metallica\Metallica - One.mp3, 

                <reldir> contains "Metallica\". If you found C:\audio\title.ogg, <reldir> is 

                empty.





<sfname>

<sdir>		Similiar to <fname>, <dir> and <reldir> but uses a short filename instead of a long filename.

<sreldir>	



<afname>	a* for auto *.

<adir>		Similiar to the long filename functions, but uses short filenames automatically, if the long filename

<areldir>	contains a space followed by a second (mIRC will remove one space -> the filename is wrong).



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





the following tags are only available if the mode 'm' is set for listfiles function



MPEG info:

<lenf>		estimated length of the file formatted to hh:mm:ss (if hh is 0, it is only mm:ss or m:ss)

<len>		estimated length of the file in seconds

<bitrate>	bitrate in kbps on mp1/2/3 files (this value is incorrect for VBR files for dll version 1.0)

<sample>	samplerate in Hz

<chans>		typ of channels: Mono, Dual Channel, Stereo, Joint Stereo

<layer>		layer of file: I, II or III

<ver>		mpeg version: 1.0, 2.0 or 2.5

<vbr>		if file has a variable bitrate: 1 for vbr, 0 for cbr (constant bitrate)

<priv>		1 if the private bit is set, else 0

<crc>		1 if the file is CRC protected, else 0

<copy>		1 if the copyright bit is set, else 0

<orig>		1 if the original bit is set, else 0



id3v1 info:

<title>		title or empty string

<artist>	artist or empty string

<album>		album or empty string

<year>		year or empty string

<comment>	comment or empty string

<track>		track number, for idv1.0 this is 0 (track number is only set in version 1.1)

<genre>		genre or "Unknown"



id3v2 info:

to read information about id3v2, use <id3_frame>, replacing "frame" with the name of the frame you're searching for

for example, to get the title, which is "TIT2", use the tag <id3_tit2>

you'll find a list of all frames here: http://www.id3.org/id3v2.3.0.html#sec4



example:

$dll(listfiles.dll, setoutput, <fname> MPEG <version> <layer> <bitrate>kbps $!iif(<vbr>,[VBR]) <sample>Hz <chans> title:<title> $!iif($len(<v2_tit2>),tit2: <v2_tit2>) artist:<artist> album:<album> comment:<comment> year:<year> track:<track> genre:<genre>)



$!iif($len(<v2_tit2>),tit2: <v2_tit2>) isn't very nice, but using $!iif(<v2_tit2>,tit2: $ifmatch) isn't possible, cause a title like "Turn The Page" will be interpreted as using "Turn" as first parameter, "Page" as second, and "The" as operator (like $iif(%a >= %b))





2.) listfiles



NOTE1: You should call the "setoutput" function before using the listfiles function.

NOTE2: To scan for all files, you should set the * mode instead of insert * as a wildcard.



Parameters:	mode > filename > dir > [wildcards] > [ex. wildcards] > [depth]



mode		the output modes, supported modes are:

		a = appends to file, this also sets the 'f' flag, filename has to be valid, if the file doesn't exist, it will be created

		f = writes output to file, the output is formatted by what you set with setoutput before, filename has to be valid, if the file exists, it will be truncated before

		h = skips files and directorys that have the attribute hidden set

		m = if the file matches *.mp?, the file is scanned for mpeg, id3v1 and id3v2 information and the tags for mpeg, v1 and v2 are valid. setting the m flag will slow down the dll (but should be faster than using mircs $sound() identifier), therefore it is recomment to use the multithreaded $dllcall() instead of $dll()

		s = sends the signal "listf
```

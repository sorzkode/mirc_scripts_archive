# filemanager%5b09-06%5d v1.0 by Buddyke

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

**Script Name:** filemanager%5b09-06%5d  
**Version:** 1.0  
**Category:** Unknown  
**Authors:** Buddyke  
**Email(s):** <scorpi_16@hotmail.com>  
**Website(s):**   
**Release Year:** 2003  
**Tags:**   
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/filemanager%5b09-06%5d/filemanager%5b09-06%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "filemanager%5b09-06%5d.zip",
  "file_count": 4,
  "file_types": [
    ".c",
    ".def",
    ".dll",
    ".txt"
  ],
  "max_file_date": "2003-09-06",
  "min_file_date": "2003-09-06",
  "total_size": 38.92,
  "largest_file": "FileManager.dll",
  "text": [
    "FM-ReadMe.txt"
  ]
}
```

## 📋 Text Content (from FM-ReadMe.txt)

```text


>> FileManager.dll

>> Author: Buddyke

>> version: 1.0

>> contact: scorpi_16@hotmail.com



This is my first serious attempt on creating a dll, so i hope i did well :)

Any comments, bugs, suggestions, ... are welcome.

To see what it can do, check the functions.



Install

-------

Extract the file anywhere you want.



Use

---



dll(path\to\filemanager.dll,function,option1<option2<option3<...)

/dll path\to\filemanager.dll function option1<option2<option3<...



Functions

---------



1. info : returns info about the dll > $dll(filemanager,info,)



2. version : returns the dll's version > $dll(filemanager,version,)



3. isfile : returns $true if the specified file exists, $false otherwise > $dll(filemanager,isfile,filename.ext)



4. get : returns the size of the file > $dll(filemanager,get,filename.ext<size)

         returns the time of last access > $dll(filemanager,get,filename.ext<atime)

         returns the time of creation > $dll(filemanager,get,filename.ext<ctime)

         returns the time of last modification > $dll(filemanager,get,filename.ext<mtime)

         returns $true if you have access to read the file, $false otherwise > $dll(filemanager,get,filename.ext<read)

         returns $true if you have access to write in the file, $false otherwise > $dll(filemanager,get,filename.ext<write)

         returns $true if you have access to read and write in the file, $false otherwise > $dll(filemanager,get,filename.ext<r/w)



5. mode : changes the file-access to read-only > $dll(filemanager,mode,filename.ext<read)

          changes the file-access to write > $dll(filemanager,mode,filename.ext<write)

          changes the file-access to read and write > $dll(filemanager,mode,filename.ext<r/w)



6. createf : creates a file to read-only > $dll(filemanager,createf,filename.ext<read)

             creates a file to write > $dll(filemanager,createf,filename.ext<write)

             creates a file ro read and write > $dll(filemanager,createf,filename.ext<r/w)



7. deletef : deletes the specified file > $dll(filemanager,deletef,filename.ext)



8. renamef : renames the specified file > $dll(filemanager,renamef,oldfilename.ext<newfilename.ext)



9. searchf : searches the file line by line for a matching text and returns the whole line > $dll(filemanager,searchf,filename.ext<l<*wildcard text*<N)

             searches the file word by word for a matching text and returns the whole line > $dll(filemanager,searchf,filename.ext<ml<*wildcard text*<N)

             searches the file word by word for a matching text and returns the words > $dll(filemanager,searchf,filename.ext<mw<*wildcard text*<N)

             (if N = 0, it returns the number of all matching values, otherwise it returns the line-number folowed by the line of the Nth matching value)



PS1: If you don't specify any path to a filename, the dll will take your mirc.exe's path as default.

PS2: The size of the file is returned in bytes.

PS3: Times are always returned in seconds elapsed since 00:00:00 GMT, January 1, 1970
```

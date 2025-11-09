# Debug v1.0 by Acidized - Loaded

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

**Script Name:** Debug  
**Version:** 1.0  
**Category:** bot  
**Authors:** Acidized - Loaded  
**Email(s):** <Acidized@earthlink.net>  
**Website(s):**   
**Release Year:** 2004  
**Tags:** alias, bot  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/netcomreg1-1%5b07-20%5d/netcomreg1-1%5b07-20%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "netcomreg1-1%5b07-20%5d.zip",
  "file_count": 20,
  "file_types": [
    ".cs",
    ".csproj",
    ".dll",
    ".exe",
    ".ico",
    ".mrc",
    ".pdb",
    ".sln",
    ".suo",
    ".txt",
    ".user"
  ],
  "max_file_date": "2004-07-20",
  "min_file_date": "2004-07-13",
  "total_size": 111.72,
  "largest_file": "netcomreg/netcomreg.exe",
  "text": [
    "Readme.txt"
  ]
}
```

## 📋 Text Content (from Readme.txt)

```text
Micorosft .NET Framework Registration tool for .NET Class Librarys (for use in mIRC via $com)

Sample for mIRC included



Author: Acidized



Description:

quick program to simplify COM registration for C#/J#/VB.NET dlls for use in mIRC



source is included! 



Instructions for the mIRC script:



1: unzip the netcomreg dir to you mirc folder



2: run /load -rs netcomreg\netcomreg.mrc



3: If you still have no idea what to do check the src in Sample dir (dll is included for those of you that dont have vs.net to compile it)

copy the dll to the mirc folder or wherver then run:

/netcomreg -r $mircdirpath-to-dll



Example:

//netcomreg -r path-to-Sample.dll (Exactly like that it is case sensitive and does require DriveLetter:\)



4: Open mIRC and type:

/comopen Sample Acidized.Sample



5:

//echo -a $com(Sample,Hello,1) <--- Should return a 1 if it worked



6:

//echo -a $com(Sample).result) <--- will return Hello World! if step 5 worked



7: Thats it!





Examples in the DLL:





Add:



//echo -a $com(Sample,Add,1,i4,5,i4,10)

//echo -a $com(Sample).result



will return 15



Echo:



//echo -a $com(Sample,Echo,1,bstr,Testing 1 2 3)

//echo -a $com(Sample).result



Will Return Testing 1 2 3





If you have any quitions feel free to email me at:

Acidized@earthlink.net
```

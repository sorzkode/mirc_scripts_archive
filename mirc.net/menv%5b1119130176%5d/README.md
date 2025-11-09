# by The MegaZZTer v1.0 by The Mega-ZZTer

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

**Script Name:** by The MegaZZTer  
**Version:** 1.0  
**Category:** game  
**Authors:** The Mega-ZZTer  
**Email(s):** <megazzt@gmail.com>  
**Website(s):** [http://www.catb.org/~esr/faqs/smart-questions.html](http://www.catb.org/~esr/faqs/smart-questions.html), [http://www.mzzt.net/](http://www.mzzt.net/)  
**Release Year:** 2005  
**Tags:** trivia, gui, alias, trigger  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mirc.net/menv%5b1119130176%5d/menv%5b1119130176%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "menv%5b1119130176%5d.zip",
  "file_count": 5,
  "file_types": [
    ".bat",
    ".cpp",
    ".def",
    ".dll",
    ".txt"
  ],
  "max_file_date": "2005-06-18",
  "min_file_date": "2005-06-17",
  "total_size": 24.69,
  "largest_file": "mEnv.dll",
  "text": [
    "mEnv.txt"
  ]
}
```

## 📋 Text Content (from mEnv.txt)

```text
mEnv v1.0 by The Mega-ZZTer

http://www.mzzt.net/

megazzt@gmail.com



I don't feel like writing a readme, so I'll make this short. :)



If you must e-mail me, make sure to read this first...

http://www.catb.org/~esr/faqs/smart-questions.html

...as I will ignore any and all "Stupid Questions".



I also will provide NO support for building the DLL from the included source.  If you know what you're doing it shouldn't be too hard.



Boring Disclaimer (Read It Anyway)

----------------------------------



This DLL is provided as-is and free of charge.  Requesting support from me is highly discouraged.  See above for details.



I can not be responsible for any damage that occurs to your computer.  Most likely anything that this DLL does will disappear on reboot, but I cannot be held liable.  As always, NEVER run any scripts unless you know precisely what it will do.  You are responsible for the actions of any script you voluntarily trigger.  I cannot be held responsible for malicious scripts created using this DLL as a piece.  But you aren't authorized to make any malicious scripts using this DLL.  Not like that means anything. :/



By using this DLL you have indicated that you agree to the terms above.



The Stuff You Want To Read

--------------------------



Here is an alias you can use for your convenience:



alias env {

  if ($isid) {

    var %x = $dll(menv.dll, getEnv, $1)

    if ($gettok(%x, 1, 32) == OK) {

      if ($prop == exists) {

        return 1

      }

      return $gettok(%x, 2-, 32)

    }

    else {

      if ($prop == exists) {

        return 0

      }

      return $null

    }

  }

  else {

    var %x = $dll(menv.dll, putEnv, $1 $+ = $+ $2)

  }

}



$env(var) will return the value of environment variable var.



$env(var).exists will return 1 if var exists, 0 if it does not (an environment variable must be non-null to exist, ie there is no such thing as a blank environment variable).



/env VAR VALUE sets VAR to VALUE.  Be exceptionally careful with this when you are mucking about with system environment variables.  XP Users: Note that variables set only affect mIRC (or even just the DLL... I'm not sure).  Other apps (like cmd.exe) will not be able to see the changes as they are local).  Note that, under 9x based systems, there are no such restrictions and important environment variables can be clobbered easily.  Be careful. :)



/env VAR will delete VAR.  AGAIN, BE CAREFUL WHEN USING THIS.



All environment variable changes done with /env will disappear with a reboot.  If you want permanent changes, you can use a registry DLL to set some values that will cause env vars to be set on boot.  Google around for details.  Or search the registry yourself. :)



Unfortunately it appears environment changes are local to mIRC only under NT based systems.  This is probably for better though as malicious scripts are less likely to be able to use my DLL, hurrah. :D  Besides I can't really think of any good reason to set environment variables... someone might, undoubtably.



Tech Stuff

----------



Now for technical details on the actual DLL functions...



All DLL functions return either an OK or ERROR keyword followed by data.  When OK is returned, it is followed by the expected return value, or nothing if there is no expected return value.  When ERROR is returned, it is followed by a human-readable error message.  Read them. :)



The DLL functions use the standard C libraries' getenv and putenv functions.  Trivial stuff.



getEnv takes the variable as it's parameter and returns ERROR if it could not find the variable, or OK followed by the value if it could.



putEnv takes variable=value as it's parameter.  It returns ERROR on invalid input or failure, or OK on success.



delEnv takes a variable name as it's parameter and does a

putEnv variable=

Effectively deleting it.  It returns an ERROR if you slipped an = in there somehow.



This DLL was built with Dev-C++ 4.9.9.2 and the mingw that comes with it.  Good luck building my project, it's a bit broken :|



Example Usage

-------------



Note: Some of these may only work on NT-based systems (tested on XP).



run $env(windir) $+ \explorer.exe



if ($env(systemroot).exists) {

  ; SystemRoot only present on NT, 2K, XP, etc

  echo Nice $env(os) box you got there.

}

else {

  echo Still using 9x/ME?

}



echo Extensions of executable files: $env(pathext)



tokenize $asc(;) $env(path)

echo You have $0 items in your path variable.



echo You are logged in as \\ $+ $env(username) $+ \ $+ $env(userdomain)



write -ci $env(temp) $+ \junk.junk Junk



run $env(comspec)



tokenize $asc(;) $env(include)

var %i = $0

tokenize $asc(;) $env(lib)

echo You have %i include directories and $0 library directories.



env test This is only a test.

echo $env(test)

env test



var %x = $env(processor_level)

if (%x == 3) {

  echo Vroom vroom! 386!

}

else if (%x == 4) {

  echo Woah! 486! Slow down!

}

else if (%x ==
```

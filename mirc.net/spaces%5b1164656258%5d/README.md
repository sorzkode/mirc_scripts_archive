# multispace support DLL for mIRC v1.1 by one I wont

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

**Script Name:** multispace support DLL for mIRC  
**Version:** 1.1  
**Category:** bot  
**Authors:** one I wont  
**Email(s):** <saturn@quakenet.org>  
**Website(s):** [http://www.xise.nl/mirc/](http://www.xise.nl/mirc/)  
**Release Year:** 2006  
**Tags:** alias, bot, dcc, snippet  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mirc.net/spaces%5b1164656258%5d/spaces%5b1164656258%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "spaces%5b1164656258%5d.zip",
  "file_count": 2,
  "file_types": [
    ".dll",
    ".txt"
  ],
  "max_file_date": "2006-11-23",
  "min_file_date": "2006-11-23",
  "total_size": 10.63,
  "largest_file": "README.txt",
  "text": [
    "README.txt"
  ]
}
```

## 📋 Text Content (from README.txt)

```text
README for spaces.dll v1.1 - multi-space support DLL for mIRC

Copyright (c) 2005-2006, David "Saturn" van Moolenbroek <saturn@quakenet.org>

Visit http://www.xise.nl/mirc/ to get the latest version of this DLL

This version of the DLL supports mIRC version 6.16 - 6.21





1.    Introduction

2.    Functions

2.1.    loaded - check if the DLL is loaded

2.2.    echo   - echo text to windows without loss of spaces

2.3.    send   - send commands to IRC without loss of spaces

2.4.    dcc    - send text to DCC Chats without loss of spaces

2.5.    input  - get "on INPUT" text without loss of spaces

3.    Example

4.    License

5.    Source code

6.    Version history





1. Introduction

  

  It's a known fact that the way mIRC handles spaces in scripts is not exactly

  perfect; double consecutive spaces get lost when calling commands and

  tokenizing text strings. This has its good sides, but definitely also its

  bad sides: in order to echo a string with multiple consecutive spaces, one

  has to use $chr(160) as fake space (which is not in all fonts), or use for

  example pairs of bold characters - did you know that if you put bold

  characters between the spaces, mIRC has to print the spaces to the screen

  one by one? I won't even get into the amount of ugliness you have to use in

  order to send commands to the server without loss of spaces, or get the

  unmodified text from an editbox in "on INPUT" events.



  This DLL offers a somewhat neater solution to these problems. It allows you

  to echo text to the screen, send commands to the IRC server and DCC Chat

  windows, and get the original text in "on INPUT" events - all while

  preserving double consecutive spaces. It could be used by people who want to

  give mIRC their own look (think theme scripts!) or simply align text

  properly. Along with mIRC's own $rawmsg identifier and regex support, this

  DLL should allow you to do pretty much everything related to text input and

  output with a script, without the disadvantage of losing spaces just because

  you're using a script.



  An important note: this DLL uses internal functions of mIRC directly, and

  therefore is limited to exactly these mIRC versions that it is programmed

  for. You can find the supported mIRC versions at the top of this readme;

  BOTH older AND newer versions of mIRC are NOT supported. See also the

  "loaded" function below.





2. Functions



  The DLL implements five functions: loaded, echo, send, dcc, and input.



  Important: to preserve spaces, make the DLL calls using $dll, not /dll.

  The "echo", "dcc" and "send" calls will never return anything, so $dll can

  safely be used as command for them. This is also shown in the example in

  section 3 below. Alternatively, since mIRC 6.17, you can use /noop $dll(..).



  The same goes for custom aliases/identifiers by the way - if you want your

  own custom aliases to preserve spaces, you'd better start calling them as

  identifiers!



2.1. loaded - check if the DLL is loaded



  To check if the DLL has been loaded successfully, use:



    echo -a Loaded: $dll(spaces.dll, loaded, )



  This function will return 1 if spaces.dll has been loaded successfully, 0

  otherwise. The DLL will fail to load if it does not support the mIRC

  version that it was loaded in; the exact list of supported mIRC versions is

  at the top of this file. If the DLL returns 0, your script should fall

  back on the normal mIRC commands!



2.2. echo - echo text to windows without loss of spaces



  You can echo text without loss of spaces, with the echo call; its parameters

  are the parameters you would have used in a call to the standard /echo

  command:



    $dll(spaces.dll, echo, -atc info2 * Some $str($chr(32), 8) space)



  This example will show ten spaces between "Some" and "space".



2.3. send - send commands to IRC without loss of spaces



  To send a command to the IRC server of the current connection, use the send

  call. This works just like /raw, while preserving spaces:



    $dll(spaces.dll, send, PRIVMSG $me : $+ %text)



  This will send the exact text in the variable %text to yourself.



2.4. dcc - send text to DCC Chats without loss of spaces



  To send text to a DCC chat connection, use the following command; the first

  parameter has to be a nickname ('=' prefix is optional) the rest is the text

  text to send:



    $dll(spaces.dll, dcc, =nick Hello $chr(32) $+ there!)



  The DLL internally uses the /msg command to do this, so error messages you

  get from using this call incorrectly, will start with "* /msg: ". This may

  change in the future.



2.5. input - get "on INPUT" text without loss of spaces



  To retrieve the input text without loss of spaces in an "on INPUT" event,

  use:



    var %input = $dll(spaces.dll, input, )



  Note that this is guaranteed to work ONLY when called from "on INPUT"

  events; in other cases, the results are undefined.





3.
```

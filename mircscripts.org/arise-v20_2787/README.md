# arise v20 v2.0 by a single

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

**Script Name:** arise v20  
**Version:** 2.0  
**Category:** game  
**Authors:** a single  
**Email(s):** <blip@tranquility.net.nz>  
**Website(s):** [http://blip.nevada.net.nz/](http://blip.nevada.net.nz/), [http://blip.nevada.net.nz/)](http://blip.nevada.net.nz/)), [http://www.mircscripts.org/](http://www.mircscripts.org/)  
**Release Year:** 2006  
**Tags:** script editor, popup, trigger, highlight, alias, bot, popups  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/arise-v20_2787/arise-v20_2787.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "arise-v20_2787.zip",
  "file_count": 4,
  "file_types": [
    ".dll",
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2006-04-22",
  "min_file_date": "2006-04-22",
  "total_size": 25.16,
  "largest_file": "arisex.dll",
  "text": [
    "readme.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
Arise v2.0 - Copyright (C) 2004-2006 bliP

20 January 2005 - 22 April 2006

Email: blip@tranquility.net.nz

Web: http://blip.nevada.net.nz/

IRC: #nzgames irc.enterthegame.com





Arise is a tray popup DLL, mainly for mIRC.

Requires mIRC v6.17 but will probably work with older versions.





Copy arise.dll and arise.mrc into your \mIRC directory.

Open mIRC and type:

  /load -rs arise.mrc

Push Yes to run init commands.



Use arisex.dll if you need backwards compatibility with Arise v1.0 scripts.





Commands:

  /ar - toggles popups

  /arise_example - example





Tips:

  Right click a popup sticks it there until...

  Left click removes popup immediately





Customising Popups:

  Tools -> Script Editor -> Variables

  The variables are called %arise_<name> and the value is delimited by a single

  underscore: _



  %arise_text Verdana_8_2_0,0,0_Verdana_8_1_0,0,0_174,219,255_7000_1_0_40_100_1_300



  Verdana     - Title font name

  8           - Title font size

  2           - Title font style

  0,0,0       - Title font colour

  Verdana     - Body font name

  8           - Body font size

  1           - Body font style

  0,0,0       - Body font colour

  174,219,255 - Background colour

  7000        - On screen time (ms)

  1           - Window styles

  0           - Window position

  0           - Window transparency

  40          - Show animation

  100         - Show animation duration (ms)

  1           - Hide animation

  100         - Hide animation duration (ms)





  Notes:

    - Colour is in RGB format: Red 128, Green 255, Blue 255.

      Aqua is written as: 128,255,255 make sure there are no spaces.



    - On screen time is in milliseconds, 1 second is 1000 milliseconds.



    - Font style:

      Normal - 1

      Bold - 2

      Italic - 4

      Underline - 8

      To use more than one style at a time, add them together, for example:

      Bold and italic is a value of 6 (2+4). Bold, italic and underline would

      be 14 (2+4+8).



    - Window style:

      Border - 1

      Show at left side of screen - 2

      Show at right side of screen - 4

      Start at top of screen - 8

      Start at bottom of screen - 16

      To use more than on style at a time, add them together, for example:

      Window with a border and starting at top of screen is a value of 9 (1+8).



    - Window position:

      Popups can be displayed on any monitor, this value is the x co-ordinate of

      the monitor closest to this point.

      For example:

        Monitor 1: 1024x768 resolution

        Monitor 2: 800x600 resolution

        Value between 0 and 1023: Shown on monitor 1

        Value between 1024 and 1824: Shown on monitor 2



    - Transparency range is 1 from to 255 (almost invisible to solid).

      Unfortunately, transparency doesn't work well with some animations.



    - Animation style:

      Fade - 1

      Center - 2

      Roll - 4

      Slide - 8

      Left to right - 16

      Right to left - 32

      Top to bottom - 64

      Bottom to top - 128

      To use more than one style at a time, add them together, for example:

      Slide and right to left is a value of 40 (32+8). Some animations do

      not work well together or at all.

      





Scripting:

  For full customisation, basic mIRC scripting is required. Please refer to

  mIRC's help for more information and/or a tutorial from:

  http://www.mircscripts.org/

  You cannot trigger your own text events.



  Tools -> Script Editor -> Remote (choose arise.mrc from the view menu if it

  is not the current file)



  The $arise identifier displays popups

    $arise(<settings>,<title text>,<body text>)



  Popups are shown when certain events occur

    on 1:TEXT:*:#:{ $arise(%arise_text,$nick > $_userprefix $+ $chan,$1-) }



    on TEXT - Channel/private messages

    * - Matches all text

    # - From any channel (? means private message)

    $arise - Display a popup

    %arise_text - Text settings

    $nick - Person who talked (built in)

    $_userprefix - @ for op, % for half op, + for voice, nothing for normal

    $+ - Put too words together

    $chan - Channel text is from

    $1- - The text itself



  Sometimes you might not want popups to be displayed for a certain channel

    Only trigger for channels #foo and #bar but not #foobar

      on 1:TEXT:*:#foo,#bar:{ <snip> }

    To disable a trigger permanently comment it out with the ";" character

      ;on 1:QUIT:{ <snip> }





Example to add a special popup for nick highlight:

  Tools -> Script Editor -> Variables

    Add:



    %arise_high Tahoma_12_6_45,255,25_Arial_10_1_255,240,132_220,0,20_4500_0_0_128_2_200_68_300



    Tahoma, 12pt, bold, italic and light green colour title text.

    Arial, 10pt, normal and light yellow colour body text.

    Dark red background which stays on screen for 4.5 seconds.

    No border, displayed on primary monitor.

    50% transparent popup.

    When the popup is sho
```

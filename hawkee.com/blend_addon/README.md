# blend addon v1 by hellish

## ⁉️ This is part of an mIRC script archiving project. Please read the [README](https://github.com/sorzkode/mirc_scripts_archive/blob/main/README.md) file located in the [main project repository](https://github.com/sorzkode/mirc_scripts_archive) for more information / disclaimers  

## ⚠️ Important Disclaimers

- **I am not the original author** of this script and do not claim any ownership or authorship
- **Historical Preservation Only**: This script is archived for historical and educational purposes
- **No Support**: I cannot provide support, updates, or fixes for this script
- **Not Thoroughly Tested**: The script has not been thoroughly tested in modern environments
- **Use at Your Own Risk**: Any use of this script is entirely at your own risk
- **Potentially Outdated/Incompatible**: This script was designed for much older versions of mIRC and Windows
- **Educational Value**: This archive serves to document the evolution of IRC scripting and early internet culture

## 🔍 Script Information (metadta parsed from files)

**Script Name:** blend addon  
**Version:** 1  
**Category:** addon  
**Author(s):** hellish  
**Email(s):** <unknown>  
**Website(s):** [unknown](unknown)  
**Release Year:** 1998  
**Tags:** alias, custom window, colors, gradient  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/blend_addon/blend_addon.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "blend_addon.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1998-02-06",
  "min_file_date": "1998-02-06",
  "total_size": 2.33,
  "largest_file": "readme.txt",
  "text": [
    "blend.mrc",
    "readme.txt"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## readme.txt

```text
hellish@efnet

type "/load -rs d:\path\blend.mrc" and use the parameters below
this was made as a novelty script for hawkee.com
you specify the parameters to make cool looking color blended windows with shadowed text
use as splash screens in your script

/blend <-b|-g|-p|-r|-s|-t|-w|-y> [<font> <size> <color of foreground> <color of background> <distance from top of window (pixels)> <text>]
  -b = blue blending
  -g = green blending
  -p = purple blending
  -r = red blending
  -s = specifies that you are making shadowed text, not blended colors
  -t = teal blending
  -w = white (grey) blending
  -y = yellow blending

 if you specify -t as your parameter 1 flag...
  <font> = the font of the shadowed text (sorry, only one worded fonts)
  <size> = the font size
  <color of foreground> = the color or the text foreground
  <color of background> = the color of the text's shadow
  <distance from top of window> = the distance from the top of the window at which the text will be placed
  <text> = the text you want to be displayed on the window

  the text will automatically be centered (widthly)

Example:
  /blend -t
  /blend -s arial 50 12 1 75 HIGH

 This will make a teal blend, and shadowed words (blue foreground, black background) in font arial size 50 that says "HIGH" 75 pixels away from the top of the window
 If you just understood that, have fun

 PS: after the window is formed, it is closed by clicking on it

```

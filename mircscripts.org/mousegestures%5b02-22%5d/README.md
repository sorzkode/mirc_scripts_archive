# mousegestures%5b02-22%5d v2 by active

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

**Script Name:** mousegestures%5b02-22%5d  
**Version:** 2  
**Category:** channel  
**Authors:** active  
**Email(s):** <justus@abi007.info>  
**Website(s):** [http://www.hackerboard.de](http://www.hackerboard.de), [http://vents.dll](http://vents.dll)  
**Release Year:** 2006  
**Tags:** dialog, popup, timer, alias, snippet  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/mousegestures%5b02-22%5d/mousegestures%5b02-22%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "mousegestures%5b02-22%5d.zip",
  "file_count": 6,
  "file_types": [
    ".dll",
    ".ini",
    ".lst",
    ".txt"
  ],
  "max_file_date": "2006-02-22",
  "min_file_date": "2005-01-11",
  "total_size": 177.26,
  "largest_file": "mousegestures/mouseevents.dll",
  "text": [
    "mousegestures/readme.txt"
  ]
}
```

## 📋 Text Content (from mousegestures/readme.txt)

```text
;;_______________________________________________________________________;;

;;                                                                       ;;

;;                 Mouse-Gesture Script by Imrahil v0.1                  ;;

;;_______________________________________________________________________;;

;;                                                                       ;;

;; This script attempts to make the IRC Client mIRC more easier to use.  ;;

;; The general idea of this script is to bind mousemovements to special  ;;

;; commands.                                                             ;;

;; Just extract it to your mIRC Folder (leave it in the directory        ;;

;; "mousegestures/") then load the mouse-gestures.ini                    ;;

;;                                                                       ;;

;; It is important to leave everything in one directory, or the script   ;;

;; will not work!                                                        ;;

;;                                                                       ;;

;; /load -rs mousegestures/mouse-gestures.ini                            ;;

;;                                                                       ;;

;;   * I advise you to notice that this is not the final release.        ;;

;;     Read the usage instructions carefully and don't try anything if   ;;

;;     your not absolutely shure!                                        ;;

;;   * Under no terms unload one or more of the DLLs involved!           ;;

;;     Doing that you risk crashing your mIRC!!!                         ;;

;;                                                                       ;;

;; Usage:                                                                ;;

;;  * Press your right mousebutton (and keep it pressed)                 ;;

;;  * Make a mousemove (e.g. down, right, up) after that release the     ;;

;;    right mousebutton.                                                 ;;

;;  * Congratulations, you just used your first mousegesture on mIRC     ;;

;;    A Dialo should show up, showing every command the script can use   ;;

;;    at the moment in a listbox on the right hand side.                 ;;

;;    Once you selected a point from the list box three fields are       ;;

;;    updated:                                                           ;;

;;                   Movement - Description                              ;;

;;                   Actual Command                                      ;;

;;                                                                       ;;

;;             |i|   At all times watch in the right                     ;;

;;                   Window corner for the Tooltip!                      ;;

;;                   It shows you your momentary movement                ;;

;;                   AND the command associated!                         ;;

;;                                                                       ;;

;;  Mousemoves you can use:                                              ;;

;;   Right:            Move one window to the right (in switchbarorder)  ;;

;;   Left:             Move one window to the left (in switchbarorder)   ;;

;;   Up-Right:         Move continually one window to the Right with 2   ;;

;;                     second delay. Stop it with Right-Down.            ;;

;;   Up-Left:          Move continually one window to the left with 2    ;;

;;                     second delay. Stop it with Left-Down.             ;;

;;   Down-Right:       Exits mIRC                                        ;;

;;   Down-Left:        Parts currently active channel or closes          ;;

;;                     currently active query window                     ;;

;;                     (see the exact command in the commandlist!)       ;;

;;   Up:               Maximizes the currently active window.            ;;

;;   Down:             Minimizes the currently active window.            ;;

;;   Down-Right-Up:    Shows the commandmodifier dialog.                 ;;

;;   Right-Down-Right: Switches between the last window while doing this ;;

;;                     gesture and the next window activated before      ;;

;;                     doing this gesture (sounds complicated,           ;;

;;                     but try it yourself)                              ;;

;;                                                                       ;;

;;                                                                       ;;

;; Method:                                                               ;;

;;  * Captures the state of the right mousebutton via DLL (created by    ;;

;;    sheepd from www.hackerboard.de for this script)                    ;;

;;  * Determines the direction of the mousemovement by comparing the     ;;

;;    values of difference between the mouseposition saved 1 ms ago and  ;;

;;    the current position for the horizontal and the vertical axes
```

# wildcard characters v0.7.4 by thame

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

**Script Name:** wildcard characters  
**Version:** 0.7.4  
**Category:** game  
**Authors:** thame  
**Email(s):**   
**Website(s):** [http://creativecommons.org/licenses/by-nc-sa/2.5/](http://creativecommons.org/licenses/by-nc-sa/2.5/), [http://www.thame.nl/mirc/scheme](http://www.thame.nl/mirc/scheme), [http://www.mircscripts.org/comments.php?cid=3022](http://www.mircscripts.org/comments.php?cid=3022), [http://www.mirc.co.uk/](http://www.mirc.co.uk/), [http://www.mircscripts.org/](http://www.mircscripts.org/)  
**Release Year:** 2006  
**Tags:** dialog, uno, popup, addon, snippet, highlight, notify, alias, bot, popups, interface  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/scheme_3044/scheme_3044.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "scheme_3044.zip",
  "file_count": 2,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "2006-02-28",
  "min_file_date": "2006-02-28",
  "total_size": 22.12,
  "largest_file": "scheme.mrc",
  "text": [
    "scheme.txt"
  ]
}
```

## 📋 Text Content (from scheme.txt)

```text
  -----------------------------------

 | mIRC colour scheme sharing

 | version 0.7.4

 | created by thame^

 |

 | http://www.thame.nl/mirc/scheme

  ------------------------------------



  Please note this file was made with a fixed-width font in mind.





 ==============

  INTRODUCTION

 ==============



  This script allows you to share your mIRC colour schemes with others.

  

  The 'scheme sharing' thing is actually an idea I came up with a few years ago, when 

  mIRC 6.x was just out, which added support for keeping several colour schemes 

  ("mIRC Colors", see View > Colors... or press ALT+K).  I thought it would be nice 

  to be able to exchange these schemes with others.



  Unfortunately I abandoned the idea, only to be picked up years later, when I 

  stumbled upon someone who wanted a taste of my colour scheme.  I dug up an ancient 

  version and found it to be heavily broken and incomplete, so I decided to rewrite 

  everything.



  The result is a mixture of a snippet and an addon.  While I tried to provide the 

  end user with an easy interface, I also thought of other scripters, who might want 

  to use certain parts of this package, so I hope my scripting is flexible enough for 

  others to work with.



  In any case, I hope this will make a useful though unobtrusive addition to your 

  mIRC.  Have fun sharing!









 ================

  HOW TO INSTALL

 ================



  +++ Note: This script requires at least mIRC version 6.16!

      Get the most recent version at http://www.mirc.co.uk/



  Extract scheme.mrc to a directory of your choice (preferably within mIRC's main 

  directory or a subdirectory) and enter the following command in mIRC:



     /load -rs "C:\path\to\scheme.mrc"



  Where "C:\path\to\" is the directory you've placed scheme.mrc in.









 ============

  HOW TO USE

 ============



  This script encodes the mIRC colour schemes into a special, comptact one-line 

  format, for ease of sharing.  You can recognise them easily by their "mCS:" prefix, 

  immediately followed by seemlingly random letters and numbers.  These lines of code 

  will be referred to as 'scheme data' in both this file and the script itself.  If 

  you wish to know more about the exact format of the scheme data, please refer to the 

  script file (scheme.mrc), in which the 'standard' is extensively documented.







 *** SPAMMING ***



  'Spamming' simply means sending the scheme data to the active window (a channel or 

  query) for others to use.  It can be seen as the first part of the sharing process. 

  By spamming your scheme, you allow others to use the same scheme as you.



  The easiest way to spam your scheme is probably by using the 'mIRC Colour Scheme' 

  popup menu, which can be found under the menubar, or simply by right-clicking 

  somewhere in the window.  The menu should rougly look like this:



     mIRC Colour Scheme >

         Spam scheme >

               mIRC Classic

             x Your scheme

	       Rainbow Sky



  The menu under 'Spam scheme' lists the schemes on your copy of mIRC, with the one 

  you're currently using marked with a checkmark.  Simply select one of them to spam 

  its scheme data to the active window.





  Alternatively, you may use the



     /spamscheme [scheme name]

  

  command, which assumes the currently used scheme if none is given.







 *** SAVING ***



  Saving is the second part of the sharing process and is as easy as it can get.  

  When you spot a scheme being spammed, simply move your mouse over it and a hand 

  cursor should appear.  You may then double click the scheme data and you will be 

  presented with the following dialog:



    ----------------------------------

   | Save mIRC Colour Scheme        x |

   | -------------------------------- |

   |                                  |

   | Scheme name: [________________]  |

   |                                  |

   |   ____________________________   |

   |  |                            |  |

   |  |                            |  |

   |  |           Scheme           |  |

   |  |                            |  |

   |  |           Preview          |  |

   |  |                            |  |

   |  |                            |  |

   |  |____________________________|  |

   |                                  |

   |  [ ] Use this scheme             |

   |                                  |

   |             [ Save ] [ Cancel ]  |

    ----------------------------------



  The dialog should be pretty straight-forward.  You will be presented with the 

  scheme's name (which you may edit), a preview of what the scheme would look like 

  (the same as in the 'mIRC Colors' dialog) and the option to use the scheme 

  afterwards.  You can confirm everything by pressing the 'Save' button, or if you 

  decide you do not wish to save this scheme on your copy of mIRC, just hit 'Cancel'.





  Instead of double-clicking,
```

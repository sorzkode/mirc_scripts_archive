# spellchk v1.00 by CodeRx

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

**Script Name:** spellchk  
**Version:** 1.00  
**Category:** protection  
**Authors:** CodeRx  
**Email(s):** <pnp@pairc.com>  
**Website(s):** [http://pairc.com/pnp/](http://pairc.com/pnp/)  
**Release Year:** 1998  
**Tags:** popup, addon, protection, alias, popups  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/pairc.com/spellchk/spellchk.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "spellchk.zip",
  "file_count": 3,
  "file_types": [
    ".mrc",
    ".ppa",
    ".txt"
  ],
  "max_file_date": "1998-08-17",
  "min_file_date": "1998-08-16",
  "total_size": 6.19,
  "largest_file": "spellchk.mrc",
  "text": [
    "spellchk.txt"
  ]
}
```

## 📋 Text Content (from spellchk.txt)

```text
SpellCheck 1.00 (for P&P 3.20 or higher)

---------------

I loosely based this addon off of input21.mrc by CodeRx.

(all the code is mine, however.) It basically checks whatever

you say in a channel, chat, or query for common mistakes in

spelling. The default dictionary handles a few common mistakes.

As you make new ones, use the /word command or popups (in

the P&P menu) to add them to the dictionary.



The popups are pretty self-explanitory, but I will explain

them anyways-



Add word: Allows you to enter a misspelled word, and the

          correct version, then adds it to the dictionary.

          Also can be done via /word (incorrect) (correct)



Remove word: Allows you to remove a word from the spelling

             dictionary. Also can be done via /word -r (word)



On: Enable SpellCheck.

Off: Disable SpellCheck.



The remaining options tell SpellCheck what to do if errors are

found.



Tell me corrections made:

     If errors are found, they are listed. The corrected text

     is said in the window as normal.



Make corrections silently:

     If errors are found, they are corrected in the said text,

     but nothing special is shown to you.



Full halt if any errors:

     If errors are found, they are listed, and NOTHING is said

     in the channel or query/chat. You must correct them manually

     (or change the dictionary, or turn off SpellCheck) to output

     the text.



Notes

-----

This addon will not spell check text that IRCrypt encrypts. It will

not work with nick completion- if you make a spelling error, it will

be corrected, and nick completion (or click n color) will not be

activated.



This WILL spell check 'around' punctuation, color codes, etc. as long

as they are not embedded in the middle of the word.
```

# FAQ addon v1 by deadparrot

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

**Script Name:** FAQ addon  
**Version:** 1  
**Category:** addon  
**Author(s):** deadparrot  
**Email(s):** <unknown>  
**Website(s):** [unknown](unknown)  
**Release Year:** 1997  
**Tags:** addon, alias, faq  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/faq_addon/faq_addon.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "faq_addon.zip",
  "file_count": 3,
  "file_types": [
    ".mrc",
    ".txt"
  ],
  "max_file_date": "1997-05-21",
  "min_file_date": "1997-05-21",
  "total_size": 2.98,
  "largest_file": "readme!.txt",
  "text": [
    "version.txt",
    "installer.mrc",
    "readme!.txt"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## readme!.txt

```text
addon.faq+dp1
by deadparrot
_______________________________________________________
I decided to write this faq because all of the other
faqs on this subject are outdated. [x|x] and webba's
addon.faq gets the main point across, but that is for mirc472.

I encourage scripters to start using this medium for scripting, so those who use your script are capable of making addons for your script.

When you load installer.mrc into remote, type /install
and it will bring up the installer.  Choose an .mrc addon to load and the installer loads the addon into your mirc remote and adds credit for the addon in your /ad alias, You should make version.txt something like this:

/me uses %ver v1.0 with

(where %ver is your script name)
than your script ad should be this alias, which is included in the installer.mrc.

/ad {
  play -c version.txt
}

any addons you load to your script will show up in the /ad alias.  So, let's say your script name is Lame Script, and you load the addon: LameTalk by LameGuy.  After you /install the addons, you will be prompted for what to call the addon, or the %variable for the addon's name.  Let's say you fill that blank with 'LameTalk by LameGuy'.  Than your /ad alias comes out as.

* Bob uses Bob's Script with LameTalk by LameGuy
             (%ver)          (what you filled in)

and you can continue to add addons to your script with this /install command.  

It's wise for scripters to adapt some sort of medium for the variable the addon name's can be called by.

/minstall is the command to load a script using a %variable for the script's name.

deadparrot on DALnet
```

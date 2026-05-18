# ![mirc_icon_182544](https://github.com/user-attachments/assets/5e2efcd1-b885-457d-9917-fe91d421c202) mIRC Scripts Archive aka [Scriptserv.com](https://scriptserv.com)

Welcome to sorzkode's mIRC Scripts Archive - a comprehensive preservation project dedicated to collecting / documenting mIRC scripts.

## ⚠️ UPDATES
Since first publishing this project, I have nearly doubled the number of scripts and just recently re-worked my cataloging process. Thanks to the new process, I am now *finished? I need to make some big updates to the website and didn't want to push all the newly cataloged files to the main repo as it would break the site (I'm using a different metadata structure now). So, in the meantime, you can see all the latest work under the [releases](https://github.com/sorzkode/mirc_scripts_archive/releases) section. I have packaged each "source" as a release for download. 
- [adrian](https://github.com/sorzkode/mirc_scripts_archive/releases/tag/adrian)  
- [coders](https://github.com/sorzkode/mirc_scripts_archive/releases/tag/coders)  
- [hawkee](https://github.com/sorzkode/mirc_scripts_archive/releases/tag/hawkee)  
- [irc-scripts](https://github.com/sorzkode/mirc_scripts_archive/releases/tag/irc-scripts)  
- [kegdoctor](https://github.com/sorzkode/mirc_scripts_archive/releases/tag/kegdoctor)  
- [mirc.net](https://github.com/sorzkode/mirc_scripts_archive/releases/tag/mirc.net)  
- [mircscripts.info](https://github.com/sorzkode/mirc_scripts_archive/releases/tag/mircscripts.info)  
- [mircscripts.org](https://github.com/sorzkode/mirc_scripts_archive/releases/tag/mircscripts.org)  
- [other](https://github.com/sorzkode/mirc_scripts_archive/releases/tag/other)  
- [pairc.com](https://github.com/sorzkode/mirc_scripts_archive/releases/tag/pairc.com)  
- [sourceforge.net](https://github.com/sorzkode/mirc_scripts_archive/releases/tag/sourceforge.net)  
- [tg007.net](https://github.com/sorzkode/mirc_scripts_archive/releases/tag/tg007.net)  
- [xcalibre.com](https://github.com/sorzkode/mirc_scripts_archive/releases/tag/xcalibre.com)  

## Purpose

To preserve mIRC scripting history and culture.

## But Why?

Because scripting was my introduction to programming and I believe this is the case for a lot of coders from my generation. Oh, and because nostalgia is one helluva drug.

## Background

In the 90s and early 2000s, when [IRC](https://en.wikipedia.org/wiki/Wikipedia:IRC) was really booming, [mIRC](https://en.wikipedia.org/wiki/MIRC) was the popular chat client. mIRC allowed users to customize / modify their experience by using the [mIRC scripting language (mSL)](https://en.wikipedia.org/wiki/MIRC_scripting_language). This was so popular that there were websites dedicated to hosting these user-built scripts. Now, many of those sites no longer exist (see links below for some that do). However, [The Internet Archive](https://archive.org) indexed many of those sites and some of the files can still be found.

## Methodology

I used Python to leverage the Internet Archive's CDX (Canonical URL and Timestamp) API to download any available .zip files from the given mIRC scripting sites. After scraping, I used additional scripts to delete corrupted folders and to extract .zip and script information into JSON files. Those JSON files are manually verified and then used to auto-generate README files for each script. Hawkee files are fully processed; the rest are in progress.

## Disclaimers
The files contained here may set off your virus detection. Most of these will be false-positives but some may be actual viruses. Also, don't expect many of the scripts to run in modern environments. I would recommend running them in a virtual environment for Windows XP.  

## Contributing

**Via GitHub**

1. **Fork this repository**
2. **Add your materials** following the established structure
3. **Create proper documentation** using the README templates
4. **Submit a pull request** with details about the contribution
5. **Provide historical context** when possible

**VIA Website**  

1. [Contact](https://scriptserv.com/contact.html)  
2. [Guestbook](https://scriptserv.com/guestbook.html)  
3. [Add Links](https://scriptserv.com/links.html)  (via +Add button)
4. [Contribute](https://scriptserv.com/) - Select a script and click the "Contribute" button

Looking for: historic .mrc / .als / .ini files, original docs and help files, screenshots, author info, website backups, logs, stories, and links.

---
## Other Archival Projects
[hxcmp3.com Music Archive](https://github.com/sorzkode/hxcmp3)

*"IRC 4 Lyfe"*

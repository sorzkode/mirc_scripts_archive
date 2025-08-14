# ![mirc_icon_182544](https://github.com/user-attachments/assets/5e2efcd1-b885-457d-9917-fe91d421c202) mIRC Scripts Archive aka [Scriptserv.com](https://scriptserv.com)

Welcome to sorzkode's mIRC Scripts Archive - a comprehensive preservation project dedicated to collecting / documenting mIRC scripts.

## 🏛️ Purpose

To preserve mIRC scripting history and culture. By hosting these files on GitHub, my hope is that they can live on for many more years.

## 🤔 But Why?

Because scripting was my introduction to programming and I believe this is the case for a lot of coders from my generation. Oh, and because nostalgia is one helluva drug.

## 📰 Background

In the 90s and early 2000s, when [IRC](https://en.wikipedia.org/wiki/Wikipedia:IRC) was really booming, [mIRC](https://en.wikipedia.org/wiki/MIRC) was the popular chat client. mIRC allowed users to customize / modify their experience by using the [mIRC scripting language (mSL)](https://en.wikipedia.org/wiki/MIRC_scripting_language). This was so popular that there were websites dedicated to hosting these user-built scripts. Now, many of those sites no longer exist (see links below for some that do). However, [The Internet Archive](https://archive.org) indexed many of those sites and some of the files can still be found.

## ⛏️ Methodology

1. Used a Python script to leverage the Internet Archive's CDX (Canonical URL and Timestamp) API to download any available .zip files from the given sites. The original scrape was for the years of 1996-2008 only.  
2. Used a script to delete many corrupted folders - original scrape count was nearly 3,000 files but over 1,800 were corrupted.
3. Used a script to extract .zip file information and script information to auto generate README files for each script. This isn't perfect and requires some manual verification in the outputted json files. After verification, I can automate creating the readme files. I have completed this for all hawkee files.

## 📝 Archive Status

### Current State

- **Collection Phase**: ✅ Complete (CDX API scraping finished)
- **Processing Phase**: ✅ Complete (files sorted)
- **Web UI**: ✅ Published @ [Scriptserv.com](https://scriptserv.com)
- **Documentation Phase**: 📝 Ongoing (individual script READMEs)

### Future Plans

1. **Testing**: Manually test scripts in a sandbox environment
2. **Updated documentation**: After testing, include screenshots / demos and notes

### 🕸️ Sources

- ✅ **Hawkee.com** [Hawekee Wiki Entry](https://sorzkode.com/wiki/index.php?title=Hawkee.com)
- 📝 **xcalibre.com**
- 📝 **paIRC.com**
- 📝 **Other**
- 📝 **mIRCX.com**
- 📝 **mIRCScripts.org**
- 📝 **mIRC.net**
- 📝 **kegdoctors archive**
- 📝 **IRC-Scripts.com**

## ⚠️ Universal Disclaimers

**Please read carefully before exploring this archive:**

- **I am not the original author** of any scripts in this archive unless explicitly stated
- **Historical Preservation Only**: All content is archived for educational and historical purposes
- **No Support Provided**: I cannot provide support, updates, or fixes for any archived scripts
- **Not Thoroughly Tested**: Scripts have not been tested in modern environments (unless otherwise stated)
- **Use at Your Own Risk**: Any use of these scripts is entirely at your own discretion
- **Legacy Software**: Scripts were designed for much older versions of mIRC and Windows
- **Potential Security Risks**: Some scripts may contain outdated security practices or features
- **Educational Value**: This archive primarily serves researchers, historians, and those interested in IRC culture

## 🗂️ Repository Structure

```
mirc_scripts_archive/
├── README.md (this file)
├── somewebsite/
│   ├── README.md
│   ├── script_name_1/
│   │   ├── README.md
│   │   └── script files...
```

## 🤝 Contributing to the Archive

### What I'm Looking For

- Historic mIRC scripts (.mrc, .als, .ini files)
- Original documentation and help files
- Screenshots and usage examples
- Historical information about scripts and authors
- Website backups and archives
- Memories and stories / logs
- Links

### How to Contribute

- Via GitHub  

1. **Fork this repository**
2. **Add your materials** following the established structure
3. **Create proper documentation** using the README templates
4. **Submit a pull request** with details about the contribution
5. **Provide historical context** when possible

- VIA Website  

1. [Contact](https://scriptserv.com/contact.html)  
2. [Guestbook](https://scriptserv.com/guestbook.html)  
3. [Add Links](https://scriptserv.com/links.html)  (via +Add button)
4. [Contribute](https://scriptserv.com/) - Select a script and click the "Contribute" button

### Contribution Guidelines

- Include proper attribution to original authors
- Provide historical context and dating when known
- Use the established folder and documentation structure
- Include disclaimers about testing and compatibility
- Respect copyright and intellectual property rights

## 📜 License

This archive operates under the principle of fair use for historical preservation and educational purposes. Individual scripts retain their original copyrights. See individual script folders for specific licensing information when available.

---

**"IRC 4 Lyfe"**

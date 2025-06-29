# ![mirc_icon_182544](https://github.com/user-attachments/assets/5e2efcd1-b885-457d-9917-fe91d421c202) mIRC Scripts Archive

Welcome to sorzkode's mIRC Scripts Archive - a comprehensive preservation project dedicated to collecting / documenting mIRC scripts.

## 🏛️ Purpose

To preserve mIRC scripting history and culture. By hosting these files on GitHub, my hope is that they can live on for many more years.

## 🤔 But Why?

Because scripting was my introduction to programming and I believe this is the case for a lot of coders from my generation. Oh, and because nostalgia is one helluva drug.

## 📰 Background

In the 90s and early 2000s, when [IRC](https://en.wikipedia.org/wiki/Wikipedia:IRC) was really booming, [mIRC](https://en.wikipedia.org/wiki/MIRC) was the popular chat client. mIRC allowed users to customize / modify their experience by using the [mIRC scripting language (mSL)](https://en.wikipedia.org/wiki/MIRC_scripting_language). This was so popular that there were websites dedicated to hosting these user-built scripts. Now, many of those sites no longer exist (see links below for some that do). However, [The Internet Archive](https://archive.org) indexed many of those sites and some of the files can still be found.

## ⛏️ Methodology

1. Used a Python script to leverage the Internet Archive's CDX (Canonical URL and Timestamp) API to download any available .zip files from the given sites. The original scrape was for the years of 1996-2008 only.  
2. Extracted some metadata about the files with another script but this isn't perfect.  
3. Used a script to delete many corrupted folders - original scrape count was nearly 3,000 files but over 1,800 were corrupted.

## 📝 Archive Status

### Current State

- **Collection Phase**: ✅ Complete (CDX API scraping finished)
- **Processing Phase**: 🔄 In Progress (sorting and cataloguing)
- **Documentation Phase**: 📝 Ongoing (individual script READMEs)
- **Verification Phase**: ⏳ Pending (community verification)

### Future Plans

1. **Complete Cataloguing**: Finish processing all recovered scripts
2. **Quality Assessment**: Evaluate file integrity and completeness
3. **Community Verification**: Seek input from original users/authors
4. **Enhanced Documentation**: Add historical context and usage examples

### 😭 Technical Limitations

- **Snapshot Dependency**: Only URLs captured by Internet Archive are available
- **Temporal Gaps**: Some periods may have limited or no coverage
- **Metadata Loss**: Correlating the .zip files to the corresponding information pages for the scripts can be tricky - even with web scraping

### 🕸️ Sites Scraped

- **Hawkee.com** [Hawekee Wiki Entry](https://sorzkode.com/wiki/index.php?title=Hawkee.com)
- **xcalibre.com**
- **paIRC.com**
- **mIRCX.com**
- **mIRCScripts.org**
- **mIRC.net**
- **IRC-Scripts.com**

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

- Directly  

[Contact Me](https://sorzkode.com/contact)

### Contribution Guidelines

- Include proper attribution to original authors
- Provide historical context and dating when known
- Use the established folder and documentation structure
- Include disclaimers about testing and compatibility
- Respect copyright and intellectual property rights

## 🔐 Legal & Ethical Considerations

### Copyright Respect

- All original copyrights belong to their respective authors
- This archive operates under fair use for historical preservation
- If you are an original author with concerns, please contact me
- Commercial use of archived scripts is not endorsed

### Content Warnings

Some scripts may contain:

- Outdated security practices
- Features that may violate modern network policies
- Content reflecting the attitudes of their era
- Potentially harmful or disruptive capabilities
- Immature / innapropriate language

### Responsible Use

- Scripts should only be used in appropriate environments
- Respect network rules and policies
- Consider modern security implications
- Use for educational purposes when possible

## 📊 Archive Statistics

*Statistics will be updated as the archive grows*

- **Total Scripts**: [To be updated]
- **Unique Authors**: [To be updated]  
- **Date Range**: 1996-2008 (scraping criteria accross all sites)
- **Source Websites**: [To be updated]
- **Categories**: [To be updated]

## 🔗 Related Resources

### IRC History & Documentation

- [RFC 1459 - Internet Relay Chat Protocol](https://tools.ietf.org/rfc/rfc1459.txt)
- [IRC History Timeline](https://www.irchelp.org/irchelp/misc/history.html)
- [mIRC Official Website](https://www.mirc.com/)

### Similar Preservation Projects

- [Internet Archive](https://archive.org/)
- [Software Heritage](https://www.softwareheritage.org/)
- [Computer History Museum](https://computerhistory.org/)

### People keeping the IRC dream alive

- [mIRCScripts.info](https://mircscripts.info/)
- [TECHGEAR007](https://www.tg007.net/)
- [Coders-IRC](https://www.coders-irc.net/)
- [IRC Driven](https://www.ircdriven.com/)
- [mxbiteck's mIRCScripts.org Archive](https://github.com/mxbiteck/irc-addons-scripts)

## 📜 License

This archive operates under the principle of fair use for historical preservation and educational purposes. Individual scripts retain their original copyrights. See individual script folders for specific licensing information when available.

---

**"IRC 4 Lyfe"**

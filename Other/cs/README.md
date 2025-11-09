# cs v192.160.13.8 by Unknown

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

**Script Name:** cs  
**Version:** 192.160.13.8  
**Category:** game  
**Authors:** Unknown  
**Email(s):** <pmajere@as51-1-ppp11.que.microtec.net>, <tberthet@worldcom.ch>, <taske@sn.no>, <xMysTiKx@van-52-1036.direct.ca>, <bonniehh@calweb.com>, <gunntu@sn.no>, <cservice@undernet.org>, <sle@ezy.net>, <gayhongkong@geocities.com>, <don_bone@usa.net>  
**Website(s):** [http://bewoner.dma.be/raverrr)](http://bewoner.dma.be/raverrr)), [http://www.geocities.com/SouthBeach/6906/)](http://www.geocities.com/SouthBeach/6906/)), [http://digitalcreations.com/zonecebu](http://digitalcreations.com/zonecebu), [http://www.redestb.es/personal/edmundo](http://www.redestb.es/personal/edmundo), [http://www.geocities.com/Area51/Corridor/9696)](http://www.geocities.com/Area51/Corridor/9696)), [http://www.bizniz-net.com/miami/)](http://www.bizniz-net.com/miami/)), [http://www.geocities.com/CollegePark/Quad/2902)](http://www.geocities.com/CollegePark/Quad/2902)), [http://www.geocities.com/TheTropics/7535](http://www.geocities.com/TheTropics/7535), [http://www.rit.edu/~bvs4997/Macedonia)](http://www.rit.edu/~bvs4997/Macedonia))  
**Release Year:** 1997  
**Tags:** wav, insult, trigger, raw events, protection, notify, fserver, mass op, away system, nicklist, trivia, bad word, slap, timer, weather, alias, dcc, anti flood, addon, dns lookup, uptime, bot, uno, greet, gui, midi, file server, popup, flood protection, now playing  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/Other/cs/cs.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "cs.zip",
  "file_count": 22,
  "file_types": [
    ".faq",
    ".ini",
    ".mir",
    ".txt"
  ],
  "max_file_date": "1997-04-01",
  "min_file_date": "1997-03-05",
  "total_size": 211.02,
  "largest_file": "CS/channels.txt",
  "text": [
    "CS/finger.txt",
    "CS/msglogs.txt",
    "CS/raw.txt",
    "CS/addon/addon.faq",
    "CS/voice.txt",
    "CS/startup.txt",
    "CS/channels.txt",
    "CS/help.txt"
  ]
}
```

## 📋 Text Content (from CS/help.txt)

```text
[help]

echo 1 -a %cs.ver 2+-------------------------------------

echo 1 -a %cs.ver 2| [CS] by (fix) - Cataclysm System v1.0.9

echo 1 -a %cs.ver 2+-------------------------------------

echo 1 -a %cs.ver 2| On Line Help for [CS] Special Commands

echo 1 -a %cs.ver 2| Use: /cshelp topic

echo 1 -a %cs.ver 2+-------------------------------------

echo 1 -a %cs.ver 2| Topic are: 

echo 1 -a %cs.ver 2+-------------------------------------

echo 1 -a %cs.ver 2| Away(Help on Away system)

echo 1 -a %cs.ver 2| Ops(For ops command)

echo 1 -a %cs.ver 2| xDCC(To get xDCC help)

echo 1 -a %cs.ver 2| W|X(Command for W|X Undernet Bots)

echo 1 -a %cs.ver 2| Other(Others command)

echo 1 -a %cs.ver 2+-------------------------------------

[xdcc]

echo 1 -a %cs.ver 2+-------------------------------------

echo 1 -a %cs.ver 2| xDCC HELP

echo 1 -a %cs.ver 2+-------------------------------------

echo 1 -a %cs.ver 2| /xDCCon (or off)

echo 1 -a %cs.ver 2| /addxdcc(To add a xDCC)

echo 1 -a %cs.ver 2| /remxdcc(To rem a xDCC)

echo 1 -a %cs.ver 2| /viewxdcc(To view list)

echo 1 -a %cs.ver 2| /axdcc(To advertise)

echo 1 -a %cs.ver 2+-------------------------------------

[away]

echo 1 -a %cs.ver 2+-------------------------------------

echo 1 -a %cs.ver 2| Away HELP

echo 1 -a %cs.ver 2+-------------------------------------

echo 1 -a %cs.ver 2| /saway(Set away)

echo 1 -a %cs.ver 2| /sback(Set back)

echo 1 -a %cs.ver 2| /viewmsg(View Msgs)

echo 1 -a %cs.ver 2| /sp on(set page on or off)

echo 1 -a %cs.ver 2+-------------------------------------

[ops]

echo 1 -a %cs.ver 2+-------------------------------------

echo 1 -a %cs.ver 2| Ops HELP

echo 1 -a %cs.ver 2+-------------------------------------

echo 1 -a %cs.ver 2| /k nick reason

echo 1 -a %cs.ver 2| /kb nick reason

echo 1 -a %cs.ver 2| /b nick

echo 1 -a %cs.ver 2| /op nick1 nick2 ...(max 4)

echo 1 -a %cs.ver 2| /deop(same has /op)

echo 1 -a %cs.ver 2| /v  (voice same has /op)

echo 1 -a %cs.ver 2| /uv (unvoice same has /op)

echo 1 -a %cs.ver 2| /topic topic

echo 1 -a %cs.ver 2| /mknop(Mass Kick non op)

echo 1 -a %cs.ver 2| /mkop(Mass Kick op)

echo 1 -a %cs.ver 2| /mdeop(Mass Deop)

echo 1 -a %cs.ver 2| /mb(Mass Ban)

echo 1 -a %cs.ver 2| /mkb(Mass Kick/Ban)

echo 1 -a %cs.ver 2| /on(Op Notice)

echo 1 -a %cs.ver 2| /cb    (clear ban list of active chan)

echo 1 -a %cs.ver 2+-------------------------------------

[W|X]

echo 1 -a %cs.ver 2+-------------------------------------

echo 1 -a %cs.ver 2| W|X HELP

echo 1 -a %cs.ver 2+-------------------------------------

echo 1 -a %cs.ver 2| /wloginpass

echo 1 -a %cs.ver 2| /wop(if no parameters op u)

echo 1 -a %cs.ver 2|      (else /wop nick -> op nick)

echo 1 -a %cs.ver 2| /wdeop (same as /wop)

echo 1 -a %cs.ver 2| /wkick nick reason

echo 1 -a %cs.ver 2| /wban nick

echo 1 -a %cs.ver 2| /wtopic topic

echo 1 -a %cs.ver 2+-------------------------------------

echo 1 -a %cs.ver 2| All commands are the same with X (ie:/xlogin)

echo 1 -a %cs.ver 2+-------------------------------------

[other]

echo 1 -a %cs.ver 2+-------------------------------------

echo 1 -a %cs.ver 2| Other HELP

echo 1 -a %cs.ver 2+-------------------------------------

echo 1 -a %cs.ver 2| /addop nick (add nick in op list of active channel)

echo 1 -a %cs.ver 2| /addvoice   (same as /addop)

echo 1 -a %cs.ver 2| /shitlist nick  (add nick to shitlist)

echo 1 -a %cs.ver 2| /remuser nick (remove nick from List)

echo 1 -a %cs.ver 2| /n nick test (notice nick text)

echo 1 -a %cs.ver 2| /clone (scan clones on active chan)

echo 1 -a %cs.ver 2| /ps (Port Scan for server u are on)

echo 1 -a %cs.ver 2| /ping nick (ping nick)

echo 1 -a %cs.ver 2| /load somethin.mir (load addon v4b compliant

echo 1 -a %cs.ver 2| /ver Say The script u r usin

echo 1 -a %cs.ver 2+-------------------------------------
```

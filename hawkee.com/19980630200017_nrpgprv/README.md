# Nabiki^sRPG vbeta by Nabiki^sKnight

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

**Script Name:** Nabiki^sRPG  
**Version:** beta  
**Category:** game  
**Author(s):** Nabiki^sKnight  
**Email(s):** <renren@sprint.ca>  
**Website(s):** [http://www.geocities.com/Tokyo/Flats/3498)](http://www.geocities.com/Tokyo/Flats/3498)), [http://www.geocities.com/Tokyo/8434)](http://www.geocities.com/Tokyo/8434))  
**Release Year:** 1998  
**Tags:** timer, alias, slap, rpg, interface, dcc, bot, rpg, entertainment, games, addon  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/19980630200017_nrpgprv/19980630200017_nrpgprv.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "19980630200017_nrpgprv.zip",
  "file_count": 17,
  "file_types": [
    ".bmp",
    ".ini",
    ".ply",
    ".rpg",
    ".txt"
  ],
  "max_file_date": "1998-03-03",
  "min_file_date": "1998-02-28",
  "total_size": 274.59,
  "largest_file": "bmp/npc.bmp",
  "text": [
    "nrpg.txt",
    "spells.ini",
    "nrpg5.ini",
    "nrpg4.ini",
    "nrpg3.ini",
    "nrpg2.ini",
    "nrpg.ini",
    "map.ini",
    "data2.ini",
    "data.ini"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## nrpg.txt

```text
Nabiki^sRPG (Preview version) by Nabiki^sKnight
===============================================

Nabiki^sRPG is an role-playing game played with mIRC. The interface is pretty typical.

The rules are similar to those for #Nabiki^sRPG, a channel I founded in January, 1997 on Dalnet for playing on-line anime RPG. (It's moved to #AniMangaRPG and has a new person in charge now.)

The name Nabiki is from the anime Ranma�, which is copyright of Takahashi Rumiko and Shogakukan-Kitty-Fuji TV. Please note that the Nabiki in this game is not the same Nabiki though.

Anyways, this is intended to be a long-term project of mine. Being just the preview version, a lot of things are not working, missing or will be different by the time I finish the project. In particular, net-play is not working yet. You can change mode to DCC, connect to a host and move around, but lots of things will probably screw up.

There are many things I want to add. Hopefully, everything will be done within three months. Because so many things will change, the characters in the preview version will probably be unusable in the final version.

By the way, the game is saved automatically everytime you move from screen to screen on the map. You can reload it by using the Game|Load command in the @NRPG pop-up and typing Qck.

Send comments/suggestions/bug reports to Nabiki^sKnight at renren@sprint.ca

===

INSTALLATION:

Unzip the zip file into a single directory. The BMP files should be in the subdirectory /BMP under that directory.
For example, if you unzip NRPG into c:\NRPG, the BMP files should be in c:\NRPG\BMP.

Load nrpg.ini into the events/script section of your remote by typing (replace c:\NRPG with your path):

	/load -rs c:\NRPG\nrpg.ini

Allow the initialization commands to run.

Use the RPG command in the menubar to start.

If you use a screen resolution of 640x480, you might want to turn on the Desktop option because the @NRPG window would be cut off at the bottom. But the part cut off is only the area where the third line of text would be displayed (doesn't happen in this version I think).

===

SIMPLE RULES:

The stats:
HP		hit points (life)
MP		magic points (energy for spells, etc.)
BPower	Battle Power (ability to smack things)
Defense	Defense (ability to defend against said smacks)
MPower	Magic Power (ability to cast spells)
MDefense	Magic Defense (ability to defend against spells)

In the @NRPG-Edit window, the points in the bottom refer to how many points you have left to distribute into various stats: HP/MP points for HP and MP; Other and Bonus points for BPower, Defense, MPower and MDefense. You get two bonus points for every level. You can learn a spell with two bonus points, or place them into BPower, Defense, MPower and/or MDefense. Learn spells by using the pop-up menu in a character's spells window. (Double-click on a character's box in the @NRPG window to get the inventory window. Then use the pop-up menu to switch to the character's spells.)

In the inventory window or the shop window, double-click on a character's yen to pool, divide, or give yen. Double-click on items/spells to use, drop, cast, equip, etc. Note that the other NRPG windows also have pop-up menus.

A few simple hints:
1) Create more characters (max of 5). Easily killed if you're alone. But XP and yen get spread among all characters. (Yeah, I know the loophole here...)
2) Go to the castle throne room first.
3) Click on stuff on the map. Single-click... double-click...
4) Listen to Nabiki.

COMBAT:

Pretty straight forward. But some things you should know:

Charging up lets you hit harder. For example, charging up once will let you hit a bit more than twice as hard. Charged-up spells cost more MP than normal. Plus, you can only charge up to a maximum of three times.

Defending lets you take less damage and gives you a chance to counter attacks. But you can only do so at most two times in a row.

Resting gives you a little bit of HP and MP back.

Moving moves your character back and forth. You can hit harder at the front, but also take more damage.

===

NOTES:

Please do not alter the script or include in other scripts without permission from the author.
Distribute freely. Do not charge for it please.
And of course, I'm not responsible for any damage this script may cause to your softwares, hardwares or health.

Send comments/suggestions/bug reports to Nabiki^sKnight at renren@sprint.ca

Script by: Nabiki^sKnight
Date: March 1, 1998

=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
Nabiki's Castle (http://www.geocities.com/Tokyo/8434)
NK's Corner (http://www.geocities.com/Tokyo/Flats/3498)
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

===

HISTORY:

March 3, 1998
Small adjustments... Fixed some bugs. Added desktop option and the Lower Fire Mage (Muahahaha!).

March 1, 1998
Finished writing this darn text file.

February 28, 1998
Finished Preview version.

February 14, 1998
Began scripting Nabiki^sRPG.
```

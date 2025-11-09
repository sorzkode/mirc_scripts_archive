# oqc_light%5b12-28%5d v1104260795 by Unknown

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

**Script Name:** oqc_light%5b12-28%5d  
**Version:** 1104260795  
**Category:** game  
**Authors:** Unknown  
**Email(s):** <moxon@meta-x.de>, <quiz@dsl-213-023-049-034.arcor-ip.net>, <eumel@karmafish.net>  
**Website(s):** [http://www.fernsehen.de?](http://www.fernsehen.de?), [http://www.bank.de?](http://www.bank.de?), [http://www.whitehouse.gov](http://www.whitehouse.gov), [http://www.sonne.de?](http://www.sonne.de?), [http://www.alando.de?](http://www.alando.de?), [http://www.kirche.de?](http://www.kirche.de?), [http://www.spuelmittel.de?](http://www.spuelmittel.de?), [http://www.db.de?](http://www.db.de?), [http://www.ramstein.de?](http://www.ramstein.de?)  
**Release Year:** 2004  
**Tags:** gui, dialog, midi, nicklist, mp3, rejoin, trivia, popup, roulette, trigger, timer, addon, emoticons, alias, mp3 player, bot, uno, interface  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/oqc_light%5b12-28%5d/oqc_light%5b12-28%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "oqc_light%5b12-28%5d.zip",
  "file_count": 14,
  "file_types": [
    ".dat",
    ".ini",
    ".lng",
    ".mrc",
    ".png",
    ".txt"
  ],
  "max_file_date": "2004-12-28",
  "min_file_date": "2003-08-28",
  "total_size": 2244.46,
  "largest_file": "#quizkanal.dat",
  "text": [
    "entstehung_oqc.txt",
    "readme.txt",
    "readme_eng.txt"
  ]
}
```

## 📋 Text Content (from readme.txt)

```text
                                                 

   ___   __ _  ___    The

  / _ \ / _` |/ __|        Online

 | (_) | (_| | (__             Quizzing

  \___/ \__, |\___|                   Cheat

           | |     

           |_|     



v1.7  by Gumby







Inhalt

- 1. Installation

- 2. Changelog

- 3. Datenbanken

- 4. FAQ - Hufige Fragen

- 5. ToDo









 -- 1 Installation ------------------------------------------------------------------------------------



Alle Dateien in den mIRC Ordner entpacken und das Script mit /load -rs oqc\oqc.mrc laden.

(Bei WinZip bzw. Winrar muss "Use folder names" aktiviert sein!)

Die Frage beim Laden _MUSS_ mit "Ja" beantwortet werden, ansonsten kann es zu Fehlern im Script kommen.

Mit "/oqc" ruft ihr das Men auf, "/oqc 0" schaltet das komplette Script aus, "/oqc 1" wieder an.

Auerdem kann man "/oqc debug" benutzen um den DebugModus anzuschalten, wers brauch!

Die Sprache knnt ihr einstellen mit der Option "/oqc lang <datei.lng>".

Beispiel: /oqc lang deutsch.lng

oder:     /oqc lang english.lng

Standard ist es auf englisch eingestellt.

Um das Script zu entladen einfach "/oqc unload" eingeben. Danach kann der oqc Ordner gelscht werden.







PS:  Danke an #quiz und #quizkanal im QuakeNet fr die netten Q Bans.

     Hab euch ganz dolle lieb! Keine Angst, ich lass mir was Besonderes

     ganz alleine nur fr euch einfallen, gelle CptnKiff? :)

     Denkbar wre zum Beispiel ein online System fr Datenbanken - eine

     Frage fehlt? Macht nichts, OQC Benutzer knnen sie automatisch hochladen

     lassen und fr die Allgemeinheit bereit stellen. Hrt sich das gut an?!



PPS: Wer mich mal besuchen mchte findet mich in #ficken300 im QuakeNet.









 -- 2 Changelog ---------------------------------------------------------------------------------------



1.7 - 28.12.2004

+ Readme.txt neu gestaltet

+ kurze englische Readme hinzugefgt

+ das Script ist nun multilingual

* kleinere Fixes im on Text Event



1.6 - 26.12.2004

* irgendwie hat sich ein alter Fehler in die quiz.ini eingeschlichen - gefixt

* Neu hinzugefgte Fragen werden nun richtig verifiziert

* Ebenso werden nun genderte Fragen richtig verifiziert

* Unset Bug gefixt (verursacht durch gleichnamige Channelanfnge getrennt durch ein .)

  Beispiel: #quiz und #quiz.de

* kleinere Vernderungen und Fixes am Code



1.5 - 26.12.2004

+ falsche Antworten in der Datenbank werden nun behoben

+ Verifizierung hinzugefgt. Es wird nun gespeichert wann eine Frage zuletzt gesichtet wurde.

  Bei der Ausgabe der Antwort wird dieses Datum angezeigt sofern vorhanden

* quiz.ini aktualisiert (zb #bundesliga)

+ angefangen die Release Dates mit einem Datum zu versehen



1.4b

* beenden umbenannt zu schlieen im Dialog

* man kann nun unbegrenzt Zeichen in die Editboxen einfgen



1.4

* Bugfixes, der Miniripschutz ist drauen



1.3b

* kleine Bugfixes (Moxquizz)



1.3

+ #quizkanal Support =)

+ Updates der Datenbanken



1.2

+ sollte jemand vor dir die richtige Antwort gesagt haben, so wird ein laufender Timer nun angehalten.

* kleine nderungen an der quiz.ini



1.1

* kleine Bugfixes am Script, das KewlQuiz sollte jetzt auch gehen!



1.0

* erstes Release (private!)









 -- 3 Datenbanken -------------------------------------------------------------------------------------



Datenbank-Versionen:



#quiz.dat	-	21.08.2004

kewl.dat	-	30.07.2003

mox.dat		-	29.07.2003

#quizkanal.dat	-	21.08.2004 (hat ein paar Fehler in der Datenbank z. B. bei Schtzfragen)









 -- 4 FAQ - Hufige Fragen ----------------------------------------------------------------------------



Frage:   Bekomm ich vom cheaten nen kleinen Puller?

Antwort: Nein. Da du mit OQC nicht cheatest, kannst du auch keinen kleinen Puller bekommen.

         Auerdem machts die Technik, nicht die Gre ;)



Frage:   AHHH ich wurde in #lmaa gebannt, weil ich nicht rechtzeitig rausgefunden habe wo man

         den Cheat ausschaltet!

Antwort: Readme.txt lesen, rettet Leben!

         PS: /oqc 0









 -- 5 ToDo --------------------------------------------------------------------------------------------



- Button im Dialog um das komplette Script aus zu schalten

- sobald man als Cheater beschimpft wird eine Notice einblenden

- Timer selbst einstellen

- Verschreiber

- Signale weiter ausbauen



- #quiz/#quizkanal/#quiz.de rgern - ganz wichtig :P





EOF
```

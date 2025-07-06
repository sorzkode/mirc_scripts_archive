# RndmJoke Generator v1.0 by ReddeR (Rick Henderson)

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

**Script Name:** RndmJoke Generator  
**Version:** 1.0  
**Category:** bot  
**Author(s):** ReddeR (Rick Henderson)  
**Email(s):** <dee88@ix.netcom.com>  
**Website(s):**   
**Release Year:** 1997  
**Tags:** popup, bot, alias, timer  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/hawkee.com/rndmjoke_script/rndmjoke_script.zip)  

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "rndmjoke_script.zip",
  "file_count": 16,
  "file_types": [
    ".jok",
    ".txt"
  ],
  "max_file_date": "1997-04-19",
  "min_file_date": "1997-04-03",
  "total_size": 326.48,
  "largest_file": "quotes.jok",
  "text": [
    "Rndmjoke.txt"
  ]
}
```

## 📋 Excerpts (parsed readme / text files)

## Rndmjoke.txt

```text
Here is a random joke generator, I made just for fun. It will keep track of all jokes told so you wont read the same joke twice, untill it reaches the end of the file,(then it starts over). you will get the same catagory of joke once in a while but not the same joke.



*you will need to make sure all the files that have the ".jok" extension end up in your mirc directory for this to work*



*---here is a popup to use as a timed option (place into channel pop's)---*



Random Joke

.Random Joke On:.timer123 $?="enter amount of rep's" $?="enter sec's between jokes" \joke | \joke | echo 4 Random Joke On

.Random Joke Off:.timer123 off | echo 4 Random Joke Off



*---or you can use this one at a time Random popup (also into channel pop's)---*



Random Joke:/joke





*---this gets pasted into alias's section at the bottom :).





joke {

  set %nmb $rand(1,15)

  set %jfile $findfile($mircdir,*.jok,%nmb)

  if Annoy isin %jfile {

    if (%Anmb = $null || %Anmb >= 102) { set %Anmb 1 }

    else { %Anmb = %Anmb + 1

    set %rn  %Anmb }

    goto tell

  }

  if Blondes isin %jfile {

    if (%Bnmb = $null || %Bnmb >= 43) { set %Bnmb 1 }

    else { %Bnmb = %Bnmb + 1

    set %rn  %Bnmb }

    goto tell

  }

  if Condoms isin %jfile {

    if (%Cnmb = $null || %Cnmb >= 34) { set %Cnmb 1 }

    else { %Cnmb = %Cnmb + 1

    set %rn %Cnmb }

    goto tell

  }

  if Confus isin %jfile {

    if (%COnmb = $null || %COnmb >= 15) { set %COnmb 1 }

    else { %COnmb = %COnmb + 1

    set %rn %COnmb }

    goto tell

  }

  if Excuse isin %jfile {

    if (%Enmb = $null || %Enmb >= 103) { set %Enmb 1 }

    else { %Enmb = %Enmb + 1

    set %rn %Enmb }

    goto tell

  }

  if JOKE isin %jfile {

    if (%Jnmb = $null || %Jnmb >= 259) { set %Jnmb 1 }

    else { %Jnmb = %Jnmb + 1

    set %rn %Jnmb }

    goto tell

  }

  if Leave isin %jfile {

    if (%Lnmb = $null || %Lnmb >= 56) { set %Lnmb 1 }

    else { %Lnmb = %Lnmb + 1

    set %rn %Lnmb }

    goto tell

  }

  if Men isin %jfile {

    if (%Mnmb = $null || %Mnmb >= 102) { set %Mnmb 1 }

    else { %Mnmb = %Mnmb + 1

    set %rn %Mnmb }

    goto tell

  }

  if Mom isin %jfile {

    if (%MOnmb = $null || %MOnmb >= 475) { set %MOnmb 1 }

    else { %MOnmb = %MOnmb + 1

    set %rn %MOnmb }

    goto tell

  }

  if Oneliner isin %jfile {

    if (%Onmb = $null || %Onmb >= 108) { set %Onmb 1 }

    else { %Onmb = %Onmb + 1

    set %rn %Onmb }

    goto tell

  }

  if Red isin %jfile {

    if (%Rnmb = $null || %Rnmb >= 288) { set %Rnmb 1 }

    else { %Rnmb = %Rnmb + 1

    set %rn %Rnmb }

    goto tell

  }

  if quotes isin %jfile {

    if (%Qnmb = $null || %Qnmb >= 1985) { set %Qnmb 1 }

    else { %Qnmb = %Qnmb + 1

    set %rn %Qnmb }

    goto tell

  }

  if Roomie isin %jfile {

    if (%ROnmb = $null || %Rnmb >= 101) { set %ROnmb 1 }

    else { %ROnmb = %ROnmb + 1

    set %rn %ROnmb }

    goto tell

  }

  if Signs isin %jfile {

    if (%Snmb = $null || %Snmb >= 32) { set %Snmb 1 }

    else { %Snmb = %Snmb + 1

    set %rn %Snmb }

    goto tell

  }

  if Songs isin %jfile {

    if (%SOnmb = $null || %SOnmb >= 34) { set %SOnmb 1 }

    else { %SOnmb = %SOnmb + 1

    set %rn %SOnmb }

    goto tell

  }

  else { echo 4 Error in programming! } | halt

  :tell

  .play -l $+ %rn %jfile

}













*---Ya i know its kinda big... but there is over 2000 jokes in all and 14 files to keep track of---*

PS- I dont know who to thank for all the joke files (I sure did'nt write them heheh ;).)



PPS-  Oh, and by the way, FYI this is one of my first efforts at this kind of thing, I would appreciate some feedback (positive would be nice)...but I'll take what i can get!



Rick Henderson - dee88@ix.netcom.com                  ReddeR on DALnet - #dee88
```

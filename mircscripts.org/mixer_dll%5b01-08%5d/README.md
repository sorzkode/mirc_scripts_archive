# mixer_dll%5b01-08%5d v1.0 by Unknown

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

**Script Name:** mixer_dll%5b01-08%5d  
**Version:** 1.0  
**Category:** music  
**Authors:** Unknown  
**Email(s):**   
**Website(s):** [http:///library/en-us/multimed/htm/_win32_mixerline_str.asp](http:///library/en-us/multimed/htm/_win32_mixerline_str.asp), [http://msdn.microsoft.com/library/default.asp?url=/library/en-us/multimed/htm/_win32_mixerline_str.asp](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/multimed/htm/_win32_mixerline_str.asp)  
**Release Year:** 2006  
**Tags:** midi, wav  
**Download Link:** [Download](https://github.com/sorzkode/mirc_scripts_archive/raw/main/mircscripts.org/mixer_dll%5b01-08%5d/mixer_dll%5b01-08%5d.zip)

## 📂 Zip File Structure (metadata parsed from .zip)

```json
{
  "name": "mixer_dll%5b01-08%5d.zip",
  "file_count": 3,
  "file_types": [
    ".dll",
    ".rar",
    ".txt"
  ],
  "max_file_date": "2006-01-08",
  "min_file_date": "2005-12-10",
  "total_size": 52.14,
  "largest_file": "Mixer_DLL/Mixer.dll",
  "text": [
    "Mixer_DLL/Readme.txt"
  ]
}
```

## 📋 Text Content (from Mixer_DLL/Readme.txt)

```text
;------------------------------------;

; -> FUNCTIONS <-

;------------------------------------;

 setvolume - getvolume - setmute - getmute - showmixer - about



;------------------------------------;

; -> SETTING THE VOLUME <-

;------------------------------------;

-> //echo $dll(Mixer.dll,setvolume,<TYPE> <VOLUME 0-65535>)



Example: //echo -a $dll(Mixer.dll,volume,IN_SPEAKERS 0)      Speakers are now Turned down.



0 Being Lowest and 65535 Being Maximum.



;------------------------------------;

; -> GETTING THE VOLUME <-

;------------------------------------;

-> //echo $dll(Mixer.dll,getvolume,<TYPE>)



Example: //echo -a $dll(Mixer.dll,getvolume,IN_SPEAKERS)



;------------------------------------;

; -> MUTING <-

;------------------------------------;

-> //echo $dll(Mixer.dll,setmute,<TYPE> <1 or 0>)



Example: //echo -a $dll(Mixer.dll,setmute,IN_SPEAKERS 1)



1 being mute, 0 being unmute.



;------------------------------------;

; -> MUTED OR NOT? <-

;------------------------------------;

-> //echo $dll(Mixer.dll,getmute,<TYPE>)



Example: //echo -a $dll(Mixer.dll,setmute,IN_SPEAKERS)



Will return, 1 for muted. 0 For not muted.





;------------------------------------;

; OPENING UP THE MIXER

;------------------------------------;

//echo $dll(Mixer.dll,showmixer,)



;------------------------------------;

; ABOUT

;------------------------------------;

//echo $dll(Mixer.dll,about,)





;------------------------------------;

; -> TYPES <-

;------------------------------------;

IN_DIGITAL

is a digital destination (for example, digital input to a DAT or CD audio device). *wave*

TESTED: On my PC it changed 'WAVE'.



IN_HEADPHONES

is an adjustable (gain and/or attenuation) destination intended to drive headphones. Most audio cards use the same audio destination line for speakers and headphones, in which case the mixer device simply uses the MIXERLINE_COMPONENTTYPE_DST_SPEAKERS type.

TESTED: On my PC it changed 'WAVE'.



IN_LINE

is a line level destination (for example, line level input from a CD audio device) that will be the final recording source for the analog-to-digital converter (ADC). Because most audio cards for personal computers provide some sort of gain for the recording audio source line, the mixer device will use the MIXERLINE_COMPONENTTYPE_DST_WAVEIN type.

TESTED: On my PC it changed 'WAVE'.



IN_MONITOR

is a destination used for a monitor.

TESTED: On my PC it changed 'WAVE'.



IN_SPEAKERS

is an adjustable (gain and/or attenuation) destination intended to drive speakers. This is the typical component type for the audio output of audio cards for personal computers.

TESTED: On my PC it changed 'MAIN VOLUME'.



IN_TELEPHONE

is a destination that will be routed to a telephone line.

TESTED: On my PC did not change anything.



IN_VOICE

is a destination that will be the final recording source for voice input. This component type is exactly like MIXERLINE_COMPONENTTYPE_DST_WAVEIN but is intended specifically for settings used during voice recording/recognition. Support for this line is optional for a mixer device. Many mixer devices provide only MIXERLINE_COMPONENTTYPE_DST_WAVEIN.

TESTED: On my PC it changed the option 'WAVE'.



IN_WAVE

is a destination that will be the final recording source for the waveform-audio input (ADC). This line typically provides some sort of gain or attenuation. This is the typical component type for the recording line of most audio cards for personal computers.

TESTED: On my PC it did not changed anything.



OUT_ANALOG

is an analog source (for example, analog output from a video-cassette tape).

TESTED: On my PC it changed the option 'FRONT'.



OUT_AUXILIARY

is a source originating from the auxiliary audio line. This line type is intended as a source with gain or attenuation that can be routed to the MIXERLINE_COMPONENTTYPE_DST_SPEAKERS destination and/or recorded from the MIXERLINE_COMPONENTTYPE_DST_WAVEIN destination.

TESTED: On my PC it changed the option 'WAVE'.



OUT_COMPACTDISC

is a source originating from the output of an internal audio CD. This component type is provided for audio cards that provide an audio source line intended to be connected to an audio CD (or CD-ROM playing an audio CD).

TESTED: On my PC it changed the option 'CD PLAYER'.



OUT_DIGITAL

is a digital source (for example, digital output from a DAT or audio CD).

TESTED: On my PC it did not change anything.



OUT_LINE

is a line-level source (for example, line-level input from an external stereo) that can be used as an optional recording source. Because most audio cards for personal computers provide some sort of gain for the recording source line, the mixer device will use the MIXERLINE_COMPONENTTYPE_SRC_AUXILIARY type.

TESTED: On my PC it changed the option 'LINE IN'.



OUT_MICROPHONE

is a microphone recording source. Most audio cards for personal computers provide at least two types of recording sources: an auxiliary and mic
```

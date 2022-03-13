# Firearms
*Overall firearms overhaul.*

![Firearms B41](/poster.png "Title card")

**Adds several new guns:**
- Glock 17
- Colt Single Action Army
- MP5
- Winchester 1894
- M24
- Sawn-off Hunting Rifle

**New models for the following:**
- Sawn-off shotgun
- 1911
- M9
- Shotgun
- MSR700
- MSR 788.

**Working silencers to specific weapons by caliber.**
Excluded from silencers are: 
- MSR 788
- Desert Eagle
- All shotguns
- All revolvers
- All lever action rifles

The code to calculate the suppressor effectiveness is as follows:

    soundRadius = soundRadius * (EFFECTIVENESS[CALIBER[ammo][1]]*EFFECTIVENESS[SUPPRESSORTYPE[suppressor][1]])

_EFFECTIVENESS_ is a table with percentage from 10-100%, based on decimal so it's a float in the range of 0-0.9.

_CALIBER_ is a table with properties relating to suppressors of different calibers. The value _ammo_ gets the ammo used by the currently equipped firearm and crosschecks it with the _CALIBER_ table and gets the _SuppressorEffectiveness_ property.

    local CALIBER = {
      caliberBullets9mm = {SandboxVars.Firearms.SuppressorEffectiveness9mm;'Firearm9mmSuppressed'};
      caliberBullets45 = {SandboxVars.Firearms.SuppressorEffectiveness45;'Firearm45Suppressed'};
      caliber223Bullets = {SandboxVars.Firearms.SuppressorEffectiveness223;'FirearmARSuppressed'};
      caliber308Bullets = {SandboxVars.Firearms.SuppressorEffectiveness308;'FirearmARSuppressed'};
      caliber556Bullets = {SandboxVars.Firearms.SuppressorEffectiveness223;'FirearmARSuppressed'};
      caliber762x51Bullets = {SandboxVars.Firearms.SuppressorEffectiveness308;'FirearmARSuppressed'};
    }

_SUPPRESSORTYPE_ is a table of all suppressors in the mod and _suppressor_ is the currently equipped _canon_ on the firearm. This table decides the ultimate effectiveness of the suppressor, on top of the effectivess it can have on a specific caliber. This is made for the express purpose of differentiating the improvised suppressors from the real suppressors.

    local SUPPRESSORTYPE = {
      type9mmSilencer = {1};
      type45Silencer = {1};
      type223Silencer = {1};
      type308silencer = {1};
      typeImprovisedSilencer = SandboxVars.Firearms.SuppressorEffectivenessImprovised;
      typeSilencer_PopBottle = SandboxVars.Firearms.SuppressorEffectivenessImprovised;
    }

3D Models for attachments such as slings, recoil pads and bipods.
Removes the requirement to have a screwdriver to add and remove attachments to guns.

This mod is a work in progress and I will continue to add attachments and guns as well as replace vanilla models.
Please consider this when subscribing. There is a possibility for things to change.
Tested and works to the best of my knowledge with IWBUMS 41.50 Please post if you encounter bugs so I can fix them.

[Forum thread](https://theindiestone.com/forums/index.php?/topic/30273-firearms-b41/)

[Google sheet with weapon stats](https://docs.google.com/spreadsheets/d/1lRxGa3ARHyTQVzlwzkzQf00n6IIpQ9SuuKdE8Sjr928/edit?usp=sharing)

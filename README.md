# MW Base ADS Sensitivity Control

## Overview
I have made edits to an existing addon https://steamcommunity.com/sharedfiles/filedetails/?id=3281677449, the edits I have made is simply multiple sensitivity sliders for when the player is ads'd depending on what scope they are using, unscoped sensitivity is handled by regular gmod settings


### Accessing the Settings
1. Press **Q**
2. Navigate to **Options** tab
3. Look for **MW Options** category
4. Click on **Sensitivity**
4. You can adjust them here and also adjust them more quickly through the c menu after selection

### ConVar Commands
You can also set the ADS sensitivity value directly in console:
- mgbase_sensitivity_ads 0.5  - Set ADS sensitivity to 50%
- mgbase_sensitivity_ads 1.5  - Set ADS sensitivity to 150%


### File Locations + Added lines of code
When implementing the ADS sensitivity controls I have edited the following files
- `lua/weapons/mg_base/cl_init.lua` - Lines 33 - 38
- `lua/weapons/mg_base/modules/shared/sh_aim_behaviour.lua` - Lines 340 - 381
- `lua/weapons/mg_base/modules/client/cl_spawnmenu.lua` - Lines 404 - 425
- `lua/weapons/mg_base/modules/languages/en.lua` - Lines 190 - 202

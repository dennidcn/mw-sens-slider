-- Thank you for participating in the translation work of this addon.
-- Below are the guidelines and requirements. If you are already familiar with them, you can skip ahead.

-- Notes & Requirements
/*
1. For accuracy, please use English as the reference for your translation, even though you may be familiar with many languages.
2. Please use formal grammar as much as possible when translating content. Don't use slang, abbreviations, misspellings, incorrect grammar, homophones, etc. for translation.
3. If there is any content that you can't translate or don't understand, please use English instead.
*/

-- First Step
/*
First, you need to rename the file to your language code. (e.g. en-PT.lua)
*/

-- Second Step
/*
Before we start, you need to fill in the language code and its full name. [e.g. MWBLTL.AddLanguage("en-PT", "Pirate English")]
Valid Language Code: bg cs da de el en en-PT es-ES et fi fr he hr hu it ja ko lt nl no pl pt-BR pt-PT ru sk sv-SE th tr uk vi zh-CN zh-TW
If you don't know the language corresponding to a certain code, you can check it on https://wiki.facepunch.com/gmod/Addon_Localization.
*/

-- Third Step
/*
You can now officially start your translation work. If you have any questions or concerns, please add my Discord to ask. (NizcKM#5992)
After you have finished, you can send the file to me using any method you prefer, or add me on Steam/Discord.
*/

MWBLTL.AddLanguage("en", "English")

-- Stat Info
MWBLTL.LANGUAGE["StatInfo_RecoilStability"] = "Recoil Stability"
MWBLTL.LANGUAGE["StatInfo_Shake"] = "Aim Stability"
MWBLTL.LANGUAGE["StatInfo_AimSway"] = "Scope Aim Sway"
MWBLTL.LANGUAGE["StatInfo_MovementMultiplier"] = "Weapon Moving Steadiness"
MWBLTL.LANGUAGE["StatInfo_HeadshotMultiplier"] = "Headshot Damage"
MWBLTL.LANGUAGE["StatInfo_ProjectileSpeed"] = "Projectile Velocity"
MWBLTL.LANGUAGE["StatInfo_ProjectileGravity"] = "Projectile Stability"
MWBLTL.LANGUAGE["StatInfo_ClipSize"] = "Magazine Size"
MWBLTL.LANGUAGE["StatInfo_RPM"] = "Rounds Per Minute"
MWBLTL.LANGUAGE["StatInfo_AimSpeed"] = "ADS Speed"
MWBLTL.LANGUAGE["StatInfo_SprintSpeed"] = "Sprint-to-Fire Speed"
MWBLTL.LANGUAGE["StatInfo_AimLength"] = "ADS Time"
MWBLTL.LANGUAGE["StatInfo_RechamberSpeed"] = "Rechamber Speed"
MWBLTL.LANGUAGE["StatInfo_AimAccuracy"] = "ADS Spread"
MWBLTL.LANGUAGE["StatInfo_ConeIncrease"] = "Firing Inaccuracy"
MWBLTL.LANGUAGE["StatInfo_Accuracy"] = "Spread"
MWBLTL.LANGUAGE["StatInfo_ReloadSpeed"] = "Reload Speed"
MWBLTL.LANGUAGE["StatInfo_SwitchSpeed"] = "Handling Speed"
MWBLTL.LANGUAGE["StatInfo_DrawLength"] = "Draw Time"
MWBLTL.LANGUAGE["StatInfo_HolsterLength"] = "Holster Time"
MWBLTL.LANGUAGE["StatInfo_ReloadLength"] = "Reload Time"
MWBLTL.LANGUAGE["StatInfo_DamageClose"] = "Damage Close"
MWBLTL.LANGUAGE["StatInfo_DamageRange"] = "Damage Range"
MWBLTL.LANGUAGE["StatInfo_EffectiveRange"] = "Effective Range"
MWBLTL.LANGUAGE["StatInfo_MaxRange"] = "Max Range"
MWBLTL.LANGUAGE["StatInfo_PenetrationThickness"] = "Penetration Power"
MWBLTL.LANGUAGE["StatInfo_HorizontalRecoil"] = "Recoil Horizontal"
MWBLTL.LANGUAGE["StatInfo_Recoil"] = "Recoil Kick"
MWBLTL.LANGUAGE["StatInfo_VerticalRecoil"] = "Recoil Vertical"
MWBLTL.LANGUAGE["StatInfo_MeleeSpeed"] = "Melee Recovery"
MWBLTL.LANGUAGE["StatInfo_MeleeDamage"] = "Damage Melee"
MWBLTL.LANGUAGE["StatInfo_Bullets"] = "Number Of Pellets"
MWBLTL.LANGUAGE["StatInfo_SprintLength"] = "Sprint-to-Fire Time"

-- HUD
MWBLTL.LANGUAGE["HUD_Debug_Text1"] = "With default sight, the green cross should turn yellow (perfect alignment)"
MWBLTL.LANGUAGE["HUD_Debug_Text2"] = "If you're a developer, put the align bone in the middle of your default sight's picture, align with offsets accordingly"
MWBLTL.LANGUAGE["HUD_Debug_Text3"] = "Pixel difference (closer to 0 the better): "
MWBLTL.LANGUAGE["HUD_Debug_Text4"] = "Follow purple line to see angle, modify angle offsets if needed (!)"
MWBLTL.LANGUAGE["HUD_FireMode_Safety"] = "SAFETY"
MWBLTL.LANGUAGE["HUD_Key_NotBound"] = "KEY NOT BOUND: "
MWBLTL.LANGUAGE["HUD_Commands_Text1"] = "x 2: SIGHTS"
MWBLTL.LANGUAGE["HUD_Commands_Text2"] = "HOLD BREATH"
MWBLTL.LANGUAGE["HUD_Commands_Text3"] = ": FLASHLIGHT"

-- Customization Menu
MWBLTL.LANGUAGE["CuzMenu_Nom_Text1"] = "FAVORITE"
MWBLTL.LANGUAGE["CuzMenu_Nom_Text2"] = "PRESETS"
MWBLTL.LANGUAGE["CuzMenu_Nom_Text3"] = "Type name..."
MWBLTL.LANGUAGE["CuzMenu_Method_Text1"] = "NONE"
MWBLTL.LANGUAGE["CuzMenu_Method_Text2"] = "RANDOM"
MWBLTL.LANGUAGE["CuzMenu_Method_Text3"] = "RANDOM CURATED"
MWBLTL.LANGUAGE["CuzMenu_Method_Text4"] = "RANDOM FAVORITE"
MWBLTL.LANGUAGE["CuzMenu_Nom_Text4"] = "SPAWN WITH:"
MWBLTL.LANGUAGE["CuzMenu_Nom_Text5"] = "Blocked by "
MWBLTL.LANGUAGE["CuzMenu_Nom_Text6"] = "Cosmetic"
MWBLTL.LANGUAGE["CuzMenu_Title_Text"] = "CUSTOMIZE"
MWBLTL.LANGUAGE["CuzMenu_Nom_Text7"] = "EXIT"
MWBLTL.LANGUAGE["CuzMenu_Nom_Text8"] = "STATS"
MWBLTL.LANGUAGE["CuzMenu_Nom_Text9"] = "m" -- (Metre: Unit of length)
MWBLTL.LANGUAGE["CuzMenu_Nom_Text10"] = "s" -- (Second: Unit of time)

-- Spawn Menu
MWBLTL.LANGUAGE["SpawnMenu_VM_Title"] = "View Model"
MWBLTL.LANGUAGE["SpawnMenu_VM_Text1"] = "FOV"
MWBLTL.LANGUAGE["SpawnMenu_VM_Help1"] = "Change view model FOV."
MWBLTL.LANGUAGE["SpawnMenu_VM_Text2"] = "FOV - ADS"
MWBLTL.LANGUAGE["SpawnMenu_VM_Help2"] = "Change view model FOV when aiming."
MWBLTL.LANGUAGE["SpawnMenu_VM_Help3"] = "Note: scopes ignore anything lower than 1!"
MWBLTL.LANGUAGE["SpawnMenu_VM_Help4"] = "VIEW MODEL RIGS"
MWBLTL.LANGUAGE["SpawnMenu_Effs_Title"] = "Effects"
MWBLTL.LANGUAGE["SpawnMenu_Effs_Text1"] = "Barrel Smoke"
MWBLTL.LANGUAGE["SpawnMenu_Effs_Help1"] = "Toggle overheat smoke coming from the barrels."
MWBLTL.LANGUAGE["SpawnMenu_Effs_Text2"] = "View Blur FX"
MWBLTL.LANGUAGE["SpawnMenu_Effs_Help2"] = "Toggle DOF blur when reloading/customizing."
MWBLTL.LANGUAGE["SpawnMenu_HUD_Title"] = "HUD"
MWBLTL.LANGUAGE["SpawnMenu_HUD_Help1"] = "Crosshair Color"
MWBLTL.LANGUAGE["SpawnMenu_HUD_Text1"] = "Crosshair"
MWBLTL.LANGUAGE["SpawnMenu_HUD_Help2"] = "Toggle crosshair."
MWBLTL.LANGUAGE["SpawnMenu_HUD_Text2"] = "Firemode Helper"
MWBLTL.LANGUAGE["SpawnMenu_HUD_Help3"] = "Toggle firemode HUD."
MWBLTL.LANGUAGE["SpawnMenu_HUD_Text3"] = "Flashlight Indicator"
MWBLTL.LANGUAGE["SpawnMenu_HUD_Help4"] = "Toggle flashlight HUD."
MWBLTL.LANGUAGE["SpawnMenu_HUD_Text4"] = "Sights Helper"
MWBLTL.LANGUAGE["SpawnMenu_HUD_Help5"] = "Toggle sights HUD."
MWBLTL.LANGUAGE["SpawnMenu_HUD_Text5"] = "Custom Lasers"
MWBLTL.LANGUAGE["SpawnMenu_HUD_Help6"] = "Toggle sandbox weapon color for lasers."
MWBLTL.LANGUAGE["SpawnMenu_Cont_Title"] = "Controls"
MWBLTL.LANGUAGE["SpawnMenu_Cont_Text1"] = "Toggle ADS"
MWBLTL.LANGUAGE["SpawnMenu_Cont_Help1"] = "Switch between hold and toggle to ADS."
MWBLTL.LANGUAGE["SpawnMenu_Cont_Text2"] = "Auto Reload"
MWBLTL.LANGUAGE["SpawnMenu_Cont_Help2"] = "Toggle auto reload when magazine is empty."
MWBLTL.LANGUAGE["SpawnMenu_Cont_Text3"] = "Manual Rechamber"
MWBLTL.LANGUAGE["SpawnMenu_Cont_Help3"] = "Toggle manual rechamber (pumping or reloading a bolt-action). Release fire to rechamber."
MWBLTL.LANGUAGE["SpawnMenu_Cont_Help4"] = "Customize Menu Bind"
MWBLTL.LANGUAGE["SpawnMenu_Cont_Help5"] = "Once this is set, the menu won't show up when pressing the context menu key!"
MWBLTL.LANGUAGE["SpawnMenu_Cont_Text4"] = "Aim Assist"
MWBLTL.LANGUAGE["SpawnMenu_Cont_Help6"] = "Enable aim assist."
MWBLTL.LANGUAGE["SpawnMenu_Cont_Text5"] = "Preset Spawn With:"
MWBLTL.LANGUAGE["SpawnMenu_Cont_Text6"] = "None"
MWBLTL.LANGUAGE["SpawnMenu_Cont_Text7"] = "Random"
MWBLTL.LANGUAGE["SpawnMenu_Cont_Text8"] = "Random Curated"
MWBLTL.LANGUAGE["SpawnMenu_Cont_Text9"] = "Random Favorite"
MWBLTL.LANGUAGE["SpawnMenu_Cont_Text10"] = "Customize Gun"
MWBLTL.LANGUAGE["SpawnMenu_Debug_Title"] = "Debug"
MWBLTL.LANGUAGE["SpawnMenu_Debug_Text1"] = "Free View Model"
MWBLTL.LANGUAGE["SpawnMenu_Debug_Help1"] = "Toggle free view model transform."
MWBLTL.LANGUAGE["SpawnMenu_Debug_Text2"] = "Freeze Viewmodel"
MWBLTL.LANGUAGE["SpawnMenu_Debug_Help2"] = "Animation Delta"
MWBLTL.LANGUAGE["SpawnMenu_Debug_Text3"] = "Reload Animation List"
MWBLTL.LANGUAGE["SpawnMenu_Debug_Text4"] = "Ironsights Crosshair"
MWBLTL.LANGUAGE["SpawnMenu_Debug_Help3"] = "Toggle ironsights crosshair."
MWBLTL.LANGUAGE["SpawnMenu_Debug_Text5"] = "Disable Breathing"
MWBLTL.LANGUAGE["SpawnMenu_Debug_Help4"] = "Toggle breathing (NOTE: this is still enabled on server)."
MWBLTL.LANGUAGE["SpawnMenu_Debug_Text6"] = "Reverb"
MWBLTL.LANGUAGE["SpawnMenu_Debug_Help5"] = "Show reverb (requires developer convar)."
MWBLTL.LANGUAGE["SpawnMenu_Debug_Text7"] = "Range Helper"
MWBLTL.LANGUAGE["SpawnMenu_Debug_Help6"] = "Show distance of impact (requires developer convar)."
MWBLTL.LANGUAGE["SpawnMenu_Debug_Text8"] = "Projectiles"
MWBLTL.LANGUAGE["SpawnMenu_Debug_Help7"] = "Show projectile travel and aim assist (requires developer convar)."
MWBLTL.LANGUAGE["SpawnMenu_Debug_Text9"] = "Viewmodel Rendering"
MWBLTL.LANGUAGE["SpawnMenu_Debug_Help8"] = "Toggle viewmodel rendering."
MWBLTL.LANGUAGE["SpawnMenu_Debug_Text10"] = "Worldmodel Rendering"
MWBLTL.LANGUAGE["SpawnMenu_Debug_Help9"] = "Toggle worldmodel rendering."
MWBLTL.LANGUAGE["SpawnMenu_Debug_Text11"] = "Magazine"
MWBLTL.LANGUAGE["SpawnMenu_Debug_Help10"] = "Forces magazine to one round."
MWBLTL.LANGUAGE["SpawnMenu_SC_Title"] = "Server Controls"
MWBLTL.LANGUAGE["SpawnMenu_SC_Text1"] = "PvP Damage Multiplier"
MWBLTL.LANGUAGE["SpawnMenu_SC_Help1"] = "Change damage towards players."
MWBLTL.LANGUAGE["SpawnMenu_SC_Text2"] = "PvE Damage Multiplier"
MWBLTL.LANGUAGE["SpawnMenu_SC_Help2"] = "Change damage towards NPCs and Nextbots."
MWBLTL.LANGUAGE["SpawnMenu_SC_Text3"] = "Recoil Multiplier"
MWBLTL.LANGUAGE["SpawnMenu_SC_Help3"] = "Change recoil intensity."
MWBLTL.LANGUAGE["SpawnMenu_SC_Text4"] = "Accuracy Multiplier"
MWBLTL.LANGUAGE["SpawnMenu_SC_Help4"] = "Change accuracy intensity."
MWBLTL.LANGUAGE["SpawnMenu_SC_Text5"] = "Range Multiplier"
MWBLTL.LANGUAGE["SpawnMenu_SC_Help5"] = "Change range limit."
MWBLTL.LANGUAGE["SpawnMenu_SC_Text6"] = "Aim Assist"
MWBLTL.LANGUAGE["SpawnMenu_SC_Help6"] = "Allow aim assist."
MWBLTL.LANGUAGE["SpawnMenu_SC_Text7"] = "Scope Breathing/Sway"
MWBLTL.LANGUAGE["SpawnMenu_SC_Help7"] = "Allow scopes to sway aim."
MWBLTL.LANGUAGE["SpawnMenu_SC_Text8"] = "Toggle Customization"
MWBLTL.LANGUAGE["SpawnMenu_SC_Help8"] = "Allow gun customization."
MWBLTL.LANGUAGE["SpawnMenu_SC_Text9"] = "Detailed Penetration"
MWBLTL.LANGUAGE["SpawnMenu_SC_Help9"] = "Toggle more detailed penetration model (heavier on performance)."
MWBLTL.LANGUAGE["SpawnMenu_SC_Text10"] = "Customization Limit"
MWBLTL.LANGUAGE["SpawnMenu_SC_Help10"] = "Limit the amount of attachments a gun can take. Zero means no limits."
MWBLTL.LANGUAGE["SpawnMenu_SC_Text11"] = "First Draws"
MWBLTL.LANGUAGE["SpawnMenu_SC_Help11"] = "Enable first draws on weapon equip."
MWBLTL.LANGUAGE["SpawnMenu_SC_Text12"] = "Sprint Reloads"
MWBLTL.LANGUAGE["SpawnMenu_SC_Help12"] = "Allows reloading while sprinting."
MWBLTL.LANGUAGE["SpawnMenu_RC_Text1"] = "Rig"
MWBLTL.LANGUAGE["SpawnMenu_RC_Text2"] = "C_Hands"
MWBLTL.LANGUAGE["MWBLTL_Options_Title"] = "Languages"
MWBLTL.LANGUAGE["MWBLTL_Options_Text1"] = "SELECT A LANGUAGES"
MWBLTL.LANGUAGE["MWBLTL_Options_Text2"] = "If there are no changes, restart your map."

// Sensitivity
MWBLTL.LANGUAGE["SpawnMenu_Sens_Title"] = "Sensitivity"
MWBLTL.LANGUAGE["SpawnMenu_Sens_Text_ADS"] = "General ADS Sensitivity"
MWBLTL.LANGUAGE["SpawnMenu_Sens_Help_ADS"] = "Mouse sensitivity for non-magnified sights." 
MWBLTL.LANGUAGE["SpawnMenu_Sens_Text_1point5x"] = "1.5x Sensitivity" 
MWBLTL.LANGUAGE["SpawnMenu_Sens_Help_1point5x"] = "Mouse sensitivity for 1.5x magnification scopes." 
MWBLTL.LANGUAGE["SpawnMenu_Sens_Text_2x"] = "2x Sensitivity" 
MWBLTL.LANGUAGE["SpawnMenu_Sens_Help_2x"] = "Mouse sensitivity for 2x magnification scopes." 
MWBLTL.LANGUAGE["SpawnMenu_Sens_Text_3x"] = "3x Sensitivity"
MWBLTL.LANGUAGE["SpawnMenu_Sens_Help_3x"] = "Mouse sensitivity for 3x magnification scopes."
MWBLTL.LANGUAGE["SpawnMenu_Sens_Text_4x"] = "4x Sensitivity" 
MWBLTL.LANGUAGE["SpawnMenu_Sens_Help_4x"] = "Mouse sensitivity for 4x magnification scopes." 
MWBLTL.LANGUAGE["SpawnMenu_Sens_Text_20x"] = "20x Sensitivity"
MWBLTL.LANGUAGE["SpawnMenu_Sens_Help_20x"] = "Mouse sensitivity for sniper scopes."

-- Attachments
MWBLTL.LANGUAGE["Atts_Category_Accessories"] = "Accessories"
MWBLTL.LANGUAGE["Atts_Category_Ammo"] = "Ammo"
MWBLTL.LANGUAGE["Atts_Category_Arms"] = "Arms"
MWBLTL.LANGUAGE["Atts_Category_Arrows"] = "Arrows"
MWBLTL.LANGUAGE["Atts_Category_Barrels"] = "Barrels"
MWBLTL.LANGUAGE["Atts_Category_Bolts"] = "Bolts"
MWBLTL.LANGUAGE["Atts_Category_Conversions"] = "Conversions"
MWBLTL.LANGUAGE["Atts_Category_Forends"] = "Forends"
MWBLTL.LANGUAGE["Atts_Category_Grips"] = "Grips"
MWBLTL.LANGUAGE["Atts_Category_Lasers"] = "Lasers"
MWBLTL.LANGUAGE["Atts_Category_Magazines"] = "Magazines"
MWBLTL.LANGUAGE["Atts_Category_Misc"] = "Misc"
MWBLTL.LANGUAGE["Atts_Category_Muzzle_Devices"] = "Muzzle Devices"
MWBLTL.LANGUAGE["Atts_Category_Perks"] = "Perks"
MWBLTL.LANGUAGE["Atts_Category_Pistol_Grips"] = "Pistol Grips"
MWBLTL.LANGUAGE["Atts_Category_Pumps"] = "Pumps"
MWBLTL.LANGUAGE["Atts_Category_Rails"] = "Rails"
MWBLTL.LANGUAGE["Atts_Category_Receivers"] = "Receivers"
MWBLTL.LANGUAGE["Atts_Category_Sights"] = "Sights"
MWBLTL.LANGUAGE["Atts_Category_Stocks"] = "Stocks"
MWBLTL.LANGUAGE["Atts_Category_Toprails"] = "Toprails"
MWBLTL.LANGUAGE["Atts_Category_Cables"] = "Cables"
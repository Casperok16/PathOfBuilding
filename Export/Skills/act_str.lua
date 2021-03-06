-- Path of Building
--
-- Active Strength skill gems
-- Skill data (c) Grinding Gear Games
--
local skills, mod, flag, skill = ...

skills["AbyssalCry"] = {
	name = "Abyssal Cry",
	gemTags = {
		warcry = true,
		strength = true,
		active_skill = true,
		area = true,
		duration = true,
		chaos = true,
	},
	color = 1,
	baseFlags = {
		warcry = true,
		area = true,
		duration = true,
		chaos = true,
	},
	skillTypes = { [11] = true, [12] = true, [50] = true, [10] = true, },
	baseMods = {
		skill("castTime", 0.25), 
		skill("cooldown", 4), 
		--"abyssal_cry_%_max_life_as_chaos_on_death" = 8
		skill("duration", 6), --"base_skill_effect_duration" = 6000
		--"damage_cannot_be_reflected" = ?
		skill("showAverage", true), --"base_skill_show_average_damage_instead_of_dps" = ?
		--"display_skill_deals_secondary_damage" = ?
		--"is_warcry" = ?
	},
	qualityMods = {
		mod("Duration", "INC", 1), --"skill_effect_duration_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		--[3] = "abyssal_cry_movement_velocity_+%_per_one_hundred_nearby_enemies"
		[4] = mod("MovementSpeed", "INC", nil, 0, 0, nil), --"base_movement_velocity_+%"
	},
	levels = {
		[1] = { 34, 26, -60, -20, },
		[2] = { 36, 28, -62, -20, },
		[3] = { 38, 30, -62, -21, },
		[4] = { 40, 32, -64, -21, },
		[5] = { 42, 34, -66, -21, },
		[6] = { 44, 36, -66, -22, },
		[7] = { 46, 38, -68, -22, },
		[8] = { 48, 40, -70, -22, },
		[9] = { 50, 43, -70, -23, },
		[10] = { 52, 45, -72, -23, },
		[11] = { 54, 48, -74, -23, },
		[12] = { 56, 49, -74, -24, },
		[13] = { 58, 50, -76, -24, },
		[14] = { 60, 51, -78, -24, },
		[15] = { 62, 52, -78, -25, },
		[16] = { 64, 53, -80, -25, },
		[17] = { 66, 54, -82, -25, },
		[18] = { 68, 54, -82, -26, },
		[19] = { 69, 55, -84, -26, },
		[20] = { 70, 56, -86, -26, },
		[21] = { 72, 57, -86, -27, },
		[22] = { 74, 58, -88, -27, },
		[23] = { 76, 58, -90, -27, },
		[24] = { 78, 59, -90, -28, },
		[25] = { 80, 60, -92, -28, },
		[26] = { 82, 61, -94, -28, },
		[27] = { 84, 62, -94, -29, },
		[28] = { 86, 62, -96, -29, },
		[29] = { 88, 63, -98, -29, },
		[30] = { 90, 64, -98, -30, },
	},
}
skills["TotemMelee"] = {
	name = "Ancestral Protector",
	gemTags = {
		totem = true,
		strength = true,
		active_skill = true,
		attack = true,
		duration = true,
		melee = true,
	},
	color = 1,
	baseFlags = {
		attack = true,
		melee = true,
		totem = true,
		duration = true,
		forceMainHand = true,
	},
	skillTypes = { [1] = true, [30] = true, [12] = true, [6] = true, [25] = true, [24] = true, [17] = true, [19] = true, },
	weaponTypes = {
		["None"] = true,
		["One Handed Mace"] = true,
		["Thrusting One Handed Sword"] = true,
		["Two Handed Sword"] = true,
		["Dagger"] = true,
		["Staff"] = true,
		["Two Handed Axe"] = true,
		["Two Handed Mace"] = true,
		["One Handed Axe"] = true,
		["Claw"] = true,
		["One Handed Sword"] = true,
	},
	skillTotemId = 13,
	baseMods = {
		skill("castTime", 1), 
		skill("manaCost", 8), 
		--"base_totem_duration" = 12000
		--"base_totem_range" = 50
		--"melee_range_+" = 16
		--"ancestor_totem_parent_activiation_range" = 70
		mod("TotemPlacementSpeed", "INC", 50), --"summon_totem_cast_speed_+%" = 50
		--"base_skill_is_totemified" = ?
		--"is_totem" = ?
		skill("allowTotemBuff", true), 
	},
	qualityMods = {
		mod("Damage", "INC", 1, 0, KeywordFlag.Totem), --"totem_damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("Damage", "MORE", nil, ModFlag.Attack), 
		[3] = skill("totemLevel", nil), --"base_active_skill_totem_level"
		[4] = mod("Speed", "MORE", nil, ModFlag.Attack, 0, { type = "GlobalEffect", effectType = "Buff" }), --"melee_ancestor_totem_grant_owner_attack_speed_+%_final"
	},
	levels = {
		[1] = { 4, -20, 4, 10, },
		[2] = { 6, -17.2, 6, 11, },
		[3] = { 9, -14.4, 9, 11, },
		[4] = { 12, -11.6, 12, 12, },
		[5] = { 16, -8.8, 16, 12, },
		[6] = { 20, -6, 20, 13, },
		[7] = { 24, -3.2, 24, 13, },
		[8] = { 28, -0.4, 28, 14, },
		[9] = { 32, 2.4, 32, 14, },
		[10] = { 36, 5.2, 36, 15, },
		[11] = { 40, 8, 40, 15, },
		[12] = { 44, 10.8, 44, 16, },
		[13] = { 48, 13.6, 48, 16, },
		[14] = { 52, 16.4, 52, 17, },
		[15] = { 55, 19.2, 55, 17, },
		[16] = { 58, 22, 58, 18, },
		[17] = { 61, 24.8, 61, 18, },
		[18] = { 64, 27.6, 64, 19, },
		[19] = { 67, 30.4, 67, 19, },
		[20] = { 70, 33.2, 70, 20, },
		[21] = { 72, 36, 72, 20, },
		[22] = { 74, 38.8, 74, 21, },
		[23] = { 76, 41.6, 76, 21, },
		[24] = { 78, 44.4, 78, 22, },
		[25] = { 80, 47.2, 80, 22, },
		[26] = { 82, 50, 82, 23, },
		[27] = { 84, 52.8, 84, 23, },
		[28] = { 86, 55.6, 86, 24, },
		[29] = { 88, 58.4, 88, 24, },
		[30] = { 90, 61.2, 90, 25, },
	},
}
skills["AncestorTotemSlam"] = {
	name = "Ancestral Warchief",
	gemTags = {
		totem = true,
		strength = true,
		active_skill = true,
		attack = true,
		duration = true,
		area = true,
		melee = true,
	},
	color = 1,
	baseFlags = {
		attack = true,
		melee = true,
		totem = true,
		area = true,
		duration = true,
		forceMainHand = true,
	},
	skillTypes = { [1] = true, [30] = true, [12] = true, [6] = true, [24] = true, [17] = true, [19] = true, [11] = true, },
	weaponTypes = {
		["None"] = true,
		["One Handed Mace"] = true,
		["Thrusting One Handed Sword"] = true,
		["Two Handed Sword"] = true,
		["Dagger"] = true,
		["Staff"] = true,
		["Two Handed Axe"] = true,
		["Two Handed Mace"] = true,
		["One Handed Axe"] = true,
		["Claw"] = true,
		["One Handed Sword"] = true,
	},
	skillTotemId = 15,
	baseMods = {
		skill("castTime", 1), 
		skill("manaCost", 10), 
		--"base_totem_duration" = 12000
		--"base_totem_range" = 50
		--"ancestor_totem_parent_activiation_range" = 70
		mod("TotemPlacementSpeed", "INC", 50), --"summon_totem_cast_speed_+%" = 50
		mod("Speed", "MORE", -10, ModFlag.Attack), --"active_skill_attack_speed_+%_final" = -10
		--"melee_range_+" = 10
		--"is_area_damage" = ?
		--"base_skill_is_totemified" = ?
		--"is_totem" = ?
		skill("allowTotemBuff", true), 
	},
	qualityMods = {
		mod("Damage", "INC", 1, 0, KeywordFlag.Totem), --"totem_damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("totemLevel", nil), --"base_active_skill_totem_level"
		[3] = mod("Damage", "MORE", nil, ModFlag.Melee, 0, { type = "GlobalEffect", effectType = "Buff" }), --"slam_ancestor_totem_grant_owner_melee_damage_+%_final"
		[4] = mod("Damage", "MORE", nil, ModFlag.Attack), 
	},
	levels = {
		[1] = { 28, 28, 8, nil, },
		[2] = { 31, 31, 8, 1.2, },
		[3] = { 34, 34, 9, 2.4, },
		[4] = { 37, 37, 10, 3.6, },
		[5] = { 40, 40, 10, 4.8, },
		[6] = { 42, 42, 10, 6, },
		[7] = { 44, 44, 11, 7.2, },
		[8] = { 46, 46, 12, 8.4, },
		[9] = { 48, 48, 12, 9.6, },
		[10] = { 50, 50, 12, 10.8, },
		[11] = { 52, 52, 13, 12, },
		[12] = { 54, 54, 14, 13.2, },
		[13] = { 56, 56, 14, 14.4, },
		[14] = { 58, 58, 14, 15.6, },
		[15] = { 60, 60, 15, 16.8, },
		[16] = { 62, 62, 16, 18, },
		[17] = { 64, 64, 16, 19.2, },
		[18] = { 66, 66, 16, 20.4, },
		[19] = { 68, 68, 17, 21.6, },
		[20] = { 70, 70, 18, 22.8, },
		[21] = { 72, 72, 18, 24, },
		[22] = { 74, 74, 18, 25.2, },
		[23] = { 76, 76, 19, 26.4, },
		[24] = { 78, 78, 20, 27.6, },
		[25] = { 80, 80, 20, 28.8, },
		[26] = { 82, 82, 20, 30, },
		[27] = { 84, 84, 21, 31.2, },
		[28] = { 86, 86, 22, 32.4, },
		[29] = { 88, 88, 22, 33.6, },
		[30] = { 90, 90, 22, 44.8, },
	},
}
skills["Anger"] = {
	name = "Anger",
	gemTags = {
		aura = true,
		strength = true,
		active_skill = true,
		spell = true,
		area = true,
		fire = true,
	},
	color = 1,
	baseFlags = {
		spell = true,
		aura = true,
		area = true,
		fire = true,
	},
	skillTypes = { [2] = true, [11] = true, [5] = true, [15] = true, [27] = true, [16] = true, [18] = true, [44] = true, [33] = true, },
	baseMods = {
		skill("castTime", 1.2), 
		skill("manaCost", 50), 
		skill("cooldown", 1.2), 
		--"base_deal_no_damage" = ?
		skill("radius", 36), 
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 1), --"base_skill_area_of_effect_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("FireMin", "BASE", nil, ModFlag.Attack, 0, { type = "GlobalEffect", effectType = "Aura" }), --"attack_minimum_added_fire_damage"
		[3] = mod("FireMax", "BASE", nil, ModFlag.Attack, 0, { type = "GlobalEffect", effectType = "Aura" }), --"attack_maximum_added_fire_damage"
		[4] = mod("AreaOfEffect", "INC", nil), --"base_skill_area_of_effect_+%"
		[5] = mod("FireMin", "BASE", nil, ModFlag.Spell, 0, { type = "GlobalEffect", effectType = "Aura" }), --"spell_minimum_added_fire_damage"
		[6] = mod("FireMax", "BASE", nil, ModFlag.Spell, 0, { type = "GlobalEffect", effectType = "Aura" }), --"spell_maximum_added_fire_damage"
	},
	levels = {
		[1] = { 24, 12, 21, 0, 10, 16, },
		[2] = { 27, 14, 24, 3, 12, 19, },
		[3] = { 30, 17, 28, 6, 14, 22, },
		[4] = { 33, 19, 32, 9, 16, 26, },
		[5] = { 36, 22, 37, 12, 18, 29, },
		[6] = { 39, 25, 42, 15, 21, 33, },
		[7] = { 42, 28, 47, 18, 24, 38, },
		[8] = { 45, 32, 54, 21, 27, 43, },
		[9] = { 48, 36, 61, 23, 30, 48, },
		[10] = { 50, 39, 66, 25, 33, 53, },
		[11] = { 52, 43, 71, 27, 35, 57, },
		[12] = { 54, 46, 77, 29, 38, 61, },
		[13] = { 56, 50, 83, 31, 41, 66, },
		[14] = { 58, 54, 89, 33, 45, 71, },
		[15] = { 60, 58, 96, 35, 48, 77, },
		[16] = { 62, 62, 104, 36, 52, 83, },
		[17] = { 64, 67, 111, 37, 56, 89, },
		[18] = { 66, 72, 120, 38, 60, 96, },
		[19] = { 68, 77, 129, 39, 64, 103, },
		[20] = { 70, 83, 138, 40, 69, 110, },
		[21] = { 72, 89, 148, 41, 74, 118, },
		[22] = { 74, 95, 159, 42, 79, 127, },
		[23] = { 76, 102, 170, 43, 85, 136, },
		[24] = { 78, 109, 182, 44, 91, 146, },
		[25] = { 80, 117, 195, 45, 97, 156, },
		[26] = { 82, 125, 209, 46, 104, 167, },
		[27] = { 84, 134, 223, 47, 112, 178, },
		[28] = { 86, 143, 238, 48, 119, 191, },
		[29] = { 88, 153, 255, 49, 127, 204, },
		[30] = { 90, 163, 272, 50, 136, 218, },
	},
}
skills["AnimateArmour"] = {
	name = "Animate Guardian",
	gemTags = {
		strength = true,
		active_skill = true,
		spell = true,
		minion = true,
	},
	unsupported = true,
	color = 1,
	baseFlags = {
	},
	skillTypes = { [2] = true, [9] = true, [21] = true, [18] = true, [36] = true, [49] = true, },
	minionSkillTypes = { [1] = true, [24] = true, [25] = true, [28] = true, },
	baseMods = {
		skill("castTime", 0.6), 
		--"emerge_speed_+%" = 100
		--"display_minion_monster_type" = 3
	},
	qualityMods = {
		mod("MovementSpeed", "INC", 2, 0, 0, nil), --"base_movement_velocity_+%" = 2
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		--[3] = "animate_item_maximum_level_requirement"
		--[4] = "maximum_life_+%"
		[5] = mod("PhysicalDamage", "INC", nil, ModFlag.Melee), --"melee_physical_damage_+%"
		[6] = skill("minionLevel", nil), --"display_minion_monster_level"
		[7] = mod("PhysicalMin", "BASE", nil, ModFlag.Attack, 0, nil), --"attack_minimum_added_physical_damage"
		[8] = mod("PhysicalMax", "BASE", nil, ModFlag.Attack, 0, nil), --"attack_maximum_added_physical_damage"
	},
	levels = {
		[1] = { 28, 19, 33, 0, 0, 28, 22, 34, },
		[2] = { 31, 20, 36, 4, 4, 31, 25, 37, },
		[3] = { 34, 21, 39, 8, 8, 34, 27, 41, },
		[4] = { 37, 23, 43, 12, 12, 37, 30, 44, },
		[5] = { 40, 24, 46, 16, 16, 40, 32, 48, },
		[6] = { 42, 25, 48, 20, 20, 42, 34, 50, },
		[7] = { 44, 25, 51, 24, 24, 44, 35, 53, },
		[8] = { 46, 26, 53, 28, 28, 46, 37, 55, },
		[9] = { 48, 27, 56, 32, 32, 48, 38, 58, },
		[10] = { 50, 28, 58, 36, 36, 50, 40, 60, },
		[11] = { 52, 29, 61, 40, 40, 52, 42, 62, },
		[12] = { 54, 30, 63, 44, 44, 54, 43, 65, },
		[13] = { 56, 31, 66, 48, 48, 56, 45, 67, },
		[14] = { 58, 31, 68, 52, 52, 58, 46, 70, },
		[15] = { 60, 32, 71, 56, 56, 60, 48, 72, },
		[16] = { 62, 33, 73, 60, 60, 62, 50, 74, },
		[17] = { 64, 34, 76, 64, 64, 64, 51, 77, },
		[18] = { 66, 35, 79, 68, 68, 66, 53, 79, },
		[19] = { 68, 36, 82, 72, 72, 68, 54, 82, },
		[20] = { 70, 36, 100, 76, 76, 70, 56, 84, },
		[21] = { 72, 37, 100, 80, 80, 72, 58, 86, },
		[22] = { 74, 38, 100, 84, 84, 74, 59, 89, },
		[23] = { 76, 39, 100, 88, 88, 76, 61, 91, },
		[24] = { 78, 40, 100, 92, 92, 78, 62, 94, },
		[25] = { 80, 41, 100, 96, 96, 80, 64, 96, },
		[26] = { 82, 41, 100, 100, 100, 82, 66, 98, },
		[27] = { 84, 42, 100, 104, 104, 84, 67, 101, },
		[28] = { 86, 43, 100, 108, 108, 86, 69, 103, },
		[29] = { 88, 44, 100, 112, 112, 88, 70, 106, },
		[30] = { 90, 45, 100, 116, 116, 90, 72, 108, },
	},
}
skills["Cleave"] = {
	name = "Cleave",
	gemTags = {
		strength = true,
		active_skill = true,
		attack = true,
		area = true,
		melee = true,
	},
	color = 1,
	baseFlags = {
		attack = true,
		melee = true,
		area = true,
	},
	skillTypes = { [1] = true, [6] = true, [8] = true, [11] = true, [28] = true, [24] = true, [53] = true, },
	weaponTypes = {
		["Two Handed Axe"] = true,
		["Thrusting One Handed Sword"] = true,
		["One Handed Axe"] = true,
		["Two Handed Sword"] = true,
		["One Handed Sword"] = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("manaCost", 6), 
		mod("Damage", "MORE", -40, 0, 0, { type = "Condition", var = "DualWielding" }), --"cleave_damage_+%_final_while_dual_wielding" = -40
		--"is_area_damage" = ?
		skill("doubleHitsWhenDualWielding", true), --"skill_double_hits_when_dual_wielding" = ?
		skill("radius", 20), 
	},
	qualityMods = {
		mod("Speed", "INC", 0.5, ModFlag.Attack, 0, nil), --"attack_speed_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("Damage", "MORE", nil, ModFlag.Attack), 
		[3] = skill("radiusExtra", nil), --"active_skill_base_radius_+"
	},
	levels = {
		[1] = { 1, 10, 0, },
		[2] = { 2, 12.8, 0, },
		[3] = { 4, 15.6, 1, },
		[4] = { 7, 18.4, 1, },
		[5] = { 11, 21.2, 1, },
		[6] = { 16, 24, 2, },
		[7] = { 20, 26.8, 2, },
		[8] = { 24, 29.6, 2, },
		[9] = { 28, 32.4, 3, },
		[10] = { 32, 35.2, 3, },
		[11] = { 36, 38, 3, },
		[12] = { 40, 40.8, 4, },
		[13] = { 44, 43.6, 4, },
		[14] = { 48, 46.4, 4, },
		[15] = { 52, 49.2, 5, },
		[16] = { 56, 52, 5, },
		[17] = { 60, 54.8, 5, },
		[18] = { 64, 57.6, 6, },
		[19] = { 67, 60.4, 6, },
		[20] = { 70, 63.2, 6, },
		[21] = { 72, 66, 7, },
		[22] = { 74, 68.8, 7, },
		[23] = { 76, 71.6, 7, },
		[24] = { 78, 74.4, 8, },
		[25] = { 80, 77.2, 8, },
		[26] = { 82, 80, 8, },
		[27] = { 84, 82.8, 9, },
		[28] = { 86, 85.6, 9, },
		[29] = { 88, 88.4, 9, },
		[30] = { 90, 91.2, 10, },
	},
}
skills["DecoyTotem"] = {
	name = "Decoy Totem",
	gemTags = {
		totem = true,
		strength = true,
		active_skill = true,
		spell = true,
		duration = true,
		area = true,
	},
	color = 1,
	baseFlags = {
		spell = true,
		totem = true,
		area = true,
		duration = true,
	},
	skillTypes = { [2] = true, [17] = true, [12] = true, [19] = true, [11] = true, [30] = true, [26] = true, },
	skillTotemId = 6,
	baseMods = {
		skill("castTime", 1), 
		skill("cooldown", 4), 
		--"is_totem" = 1
		--"base_totem_duration" = 8000
		--"base_totem_range" = 60
		--"base_skill_is_totemified" = ?
		--"base_deal_no_damage" = ?
		--"totems_cannot_evade" = ?
		--"totem_ignores_cooldown" = ?
		skill("radius", 60), 
	},
	qualityMods = {
		mod("TotemLife", "INC", 1), --"totem_life_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("totemLevel", nil), --"base_active_skill_totem_level"
		[4] = mod("TotemLife", "INC", nil), --"totem_life_+%"
	},
	levels = {
		[1] = { 4, 9, 4, 0, },
		[2] = { 6, 10, 6, 2, },
		[3] = { 9, 10, 9, 4, },
		[4] = { 12, 12, 12, 6, },
		[5] = { 16, 14, 15, 8, },
		[6] = { 20, 17, 19, 10, },
		[7] = { 24, 18, 23, 12, },
		[8] = { 28, 19, 28, 14, },
		[9] = { 32, 21, 33, 16, },
		[10] = { 36, 24, 39, 18, },
		[11] = { 40, 26, 43, 20, },
		[12] = { 44, 28, 46, 22, },
		[13] = { 48, 30, 49, 24, },
		[14] = { 52, 30, 52, 26, },
		[15] = { 55, 31, 55, 28, },
		[16] = { 58, 33, 58, 30, },
		[17] = { 61, 34, 61, 32, },
		[18] = { 64, 34, 64, 34, },
		[19] = { 67, 34, 66, 36, },
		[20] = { 70, 35, 68, 38, },
		[21] = { 72, 36, 70, 40, },
		[22] = { 74, 37, 72, 42, },
		[23] = { 76, 37, 74, 44, },
		[24] = { 78, 38, 76, 46, },
		[25] = { 80, 38, 78, 48, },
		[26] = { 82, 39, 80, 50, },
		[27] = { 84, 40, 82, 52, },
		[28] = { 86, 40, 84, 54, },
		[29] = { 88, 41, 86, 56, },
		[30] = { 90, 42, 88, 58, },
	},
}
skills["Determination"] = {
	name = "Determination",
	gemTags = {
		aura = true,
		strength = true,
		active_skill = true,
		spell = true,
		area = true,
	},
	color = 1,
	baseFlags = {
		spell = true,
		aura = true,
		area = true,
	},
	skillTypes = { [2] = true, [11] = true, [5] = true, [15] = true, [27] = true, [16] = true, [18] = true, [44] = true, },
	baseMods = {
		skill("castTime", 1.2), 
		skill("manaCost", 50), 
		skill("cooldown", 1.2), 
		--"base_deal_no_damage" = ?
		skill("radius", 36), 
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 1), --"base_skill_area_of_effect_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("Armour", "MORE", nil, 0, 0, { type = "GlobalEffect", effectType = "Aura" }), --"determination_aura_armour_+%_final"
		[3] = mod("AreaOfEffect", "INC", nil), --"base_skill_area_of_effect_+%"
	},
	levels = {
		[1] = { 24, 32, 0, },
		[2] = { 27, 33, 3, },
		[3] = { 30, 34, 6, },
		[4] = { 33, 35, 9, },
		[5] = { 36, 36, 12, },
		[6] = { 39, 37, 15, },
		[7] = { 42, 38, 18, },
		[8] = { 45, 39, 21, },
		[9] = { 48, 40, 23, },
		[10] = { 50, 41, 25, },
		[11] = { 52, 42, 27, },
		[12] = { 54, 43, 29, },
		[13] = { 56, 44, 31, },
		[14] = { 58, 45, 33, },
		[15] = { 60, 46, 35, },
		[16] = { 62, 47, 36, },
		[17] = { 64, 48, 37, },
		[18] = { 66, 49, 38, },
		[19] = { 68, 50, 39, },
		[20] = { 70, 51, 40, },
		[21] = { 72, 52, 41, },
		[22] = { 74, 53, 42, },
		[23] = { 76, 54, 43, },
		[24] = { 78, 55, 44, },
		[25] = { 80, 56, 45, },
		[26] = { 82, 57, 46, },
		[27] = { 84, 58, 47, },
		[28] = { 86, 59, 48, },
		[29] = { 88, 60, 49, },
		[30] = { 90, 61, 50, },
	},
}
skills["DevouringTotem"] = {
	name = "Devouring Totem",
	gemTags = {
		totem = true,
		strength = true,
		active_skill = true,
		spell = true,
		duration = true,
	},
	unsupported = true,
	color = 1,
	baseFlags = {
	},
	skillTypes = { [2] = true, [17] = true, [12] = true, [19] = true, [30] = true, },
	skillTotemId = 7,
	baseMods = {
		skill("castTime", 1), 
		--"is_totem" = 1
		--"base_totem_duration" = 8000
		--"base_totem_range" = 60
		--"base_skill_is_totemified" = ?
		--"base_deal_no_damage" = ?
	},
	qualityMods = {
		mod("TotemLife", "INC", 1), --"totem_life_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("totemLevel", nil), --"base_active_skill_totem_level"
		--[4] = "corpse_consumption_life_to_gain"
		--[5] = "corpse_consumption_mana_to_gain"
	},
	levels = {
		[1] = { 4, 20, 4, 30, 9, },
		[2] = { 6, 22, 6, 39, 12, },
		[3] = { 9, 23, 9, 45, 14, },
		[4] = { 12, 25, 12, 53, 17, },
		[5] = { 16, 26, 16, 61, 19, },
		[6] = { 20, 28, 20, 70, 22, },
		[7] = { 24, 30, 24, 79, 24, },
		[8] = { 28, 31, 28, 90, 27, },
		[9] = { 32, 33, 32, 102, 29, },
		[10] = { 36, 34, 36, 115, 32, },
		[11] = { 40, 36, 40, 129, 34, },
		[12] = { 44, 37, 44, 144, 37, },
		[13] = { 48, 38, 48, 157, 40, },
		[14] = { 52, 39, 52, 173, 42, },
		[15] = { 55, 40, 55, 191, 45, },
		[16] = { 58, 41, 58, 211, 47, },
		[17] = { 61, 42, 61, 231, 50, },
		[18] = { 64, 42, 64, 253, 53, },
		[19] = { 67, 43, 67, 275, 56, },
		[20] = { 70, 44, 70, 299, 59, },
		[21] = { 72, 45, 72, 325, 62, },
		[22] = { 74, 45, 74, 352, 66, },
		[23] = { 76, 46, 76, 382, 69, },
		[24] = { 78, 46, 78, 413, 73, },
		[25] = { 80, 47, 80, 447, 76, },
		[26] = { 82, 48, 82, 483, 80, },
		[27] = { 84, 49, 84, 522, 84, },
		[28] = { 86, 50, 86, 563, 88, },
		[29] = { 88, 50, 88, 606, 92, },
		[30] = { 90, 51, 90, 652, 96, },
	},
}
skills["DominatingBlow"] = {
	name = "Dominating Blow",
	gemTags = {
		strength = true,
		active_skill = true,
		attack = true,
		minion = true,
		duration = true,
		melee = true,
	},
	color = 1,
	baseFlags = {
		attack = true,
		melee = true,
		duration = true,
	},
	skillTypes = { [1] = true, [6] = true, [9] = true, [12] = true, [21] = true, [25] = true, [28] = true, [24] = true, },
	minionSkillTypes = { [1] = true, [24] = true, [25] = true, [28] = true, [2] = true, [10] = true, [11] = true, [3] = true, [23] = true, [12] = true, [30] = true, [37] = true, [41] = true, [40] = true, [58] = true, [32] = true, [48] = true, [26] = true, },
	weaponTypes = {
		["None"] = true,
		["One Handed Mace"] = true,
		["Thrusting One Handed Sword"] = true,
		["Two Handed Sword"] = true,
		["Dagger"] = true,
		["Staff"] = true,
		["Two Handed Axe"] = true,
		["Two Handed Mace"] = true,
		["One Handed Axe"] = true,
		["Claw"] = true,
		["One Handed Sword"] = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("duration", 20), --"base_skill_effect_duration" = 20000
		mod("MinionModifier", "LIST", { mod = mod("Damage", "MORE", -35) }), --"active_skill_minion_damage_+%_final" = -35
		--"is_dominated" = ?
	},
	qualityMods = {
		mod("Damage", "INC", 0.5, 0, 0, nil), --"damage_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = mod("Damage", "MORE", nil, ModFlag.Attack), 
	},
	levels = {
		[1] = { 28, 12, 25, },
		[2] = { 31, 12, 27.1, },
		[3] = { 34, 12, 29.2, },
		[4] = { 37, 13, 31.3, },
		[5] = { 40, 13, 33.4, },
		[6] = { 42, 13, 35.5, },
		[7] = { 44, 14, 37.6, },
		[8] = { 46, 14, 39.7, },
		[9] = { 48, 14, 41.8, },
		[10] = { 50, 14, 43.9, },
		[11] = { 52, 14, 46, },
		[12] = { 54, 15, 48.1, },
		[13] = { 56, 15, 50.2, },
		[14] = { 58, 15, 52.3, },
		[15] = { 60, 15, 54.4, },
		[16] = { 62, 15, 56.5, },
		[17] = { 64, 15, 58.6, },
		[18] = { 66, 15, 60.7, },
		[19] = { 68, 15, 62.8, },
		[20] = { 70, 16, 64.9, },
		[21] = { 72, 16, 67, },
		[22] = { 74, 16, 69.1, },
		[23] = { 76, 16, 71.2, },
		[24] = { 78, 16, 73.3, },
		[25] = { 80, 16, 75.4, },
		[26] = { 82, 17, 77.5, },
		[27] = { 84, 17, 79.6, },
		[28] = { 86, 17, 81.7, },
		[29] = { 88, 17, 83.8, },
		[30] = { 90, 17, 85.9, },
	},
}
skills["Earthquake"] = {
	name = "Earthquake",
	gemTags = {
		strength = true,
		active_skill = true,
		attack = true,
		area = true,
		duration = true,
		melee = true,
	},
	parts = {
		{
			name = "Initial impact",
		},
		{
			name = "Aftershock",
		},
	},
	color = 1,
	baseFlags = {
		attack = true,
		melee = true,
		area = true,
		duration = true,
	},
	skillTypes = { [1] = true, [6] = true, [11] = true, [24] = true, [7] = true, [10] = true, [28] = true, [12] = true, },
	weaponTypes = {
		["One Handed Mace"] = true,
		["Two Handed Axe"] = true,
		["Two Handed Mace"] = true,
		["One Handed Axe"] = true,
		["Staff"] = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("manaCost", 10), 
		skill("duration", 1.5), --"base_skill_effect_duration" = 1500
		mod("Damage", "MORE", 50, ModFlag.Attack, 0, { type = "SkillPart", skillPart = 2 }), --"quake_slam_fully_charged_explosion_damage_+%_final" = 50
		--"is_area_damage" = ?
		skill("showAverage", true, { type = "SkillPart", skillPart = 2 }), 
		skill("radius", 18, { type = "SkillPart", skillPart = 1 }), 
		skill("radius", 25, { type = "SkillPart", skillPart = 2 }), 
	},
	qualityMods = {
		mod("PhysicalDamage", "INC", 1), --"physical_damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("Damage", "MORE", nil, ModFlag.Attack), 
	},
	levels = {
		[1] = { 28, -10, },
		[2] = { 31, -9, },
		[3] = { 34, -8, },
		[4] = { 37, -7, },
		[5] = { 40, -6, },
		[6] = { 42, -5, },
		[7] = { 44, -4, },
		[8] = { 46, -3, },
		[9] = { 48, -2, },
		[10] = { 50, -1, },
		[11] = { 52, nil, },
		[12] = { 54, 1, },
		[13] = { 56, 2, },
		[14] = { 58, 3, },
		[15] = { 60, 4, },
		[16] = { 62, 5, },
		[17] = { 64, 6, },
		[18] = { 66, 7, },
		[19] = { 68, 8, },
		[20] = { 70, 9, },
		[21] = { 72, 10, },
		[22] = { 74, 11, },
		[23] = { 76, 12, },
		[24] = { 78, 13, },
		[25] = { 80, 14, },
		[26] = { 82, 15, },
		[27] = { 84, 16, },
		[28] = { 86, 17, },
		[29] = { 88, 18, },
		[30] = { 90, 19, },
	},
}
skills["EnduringCry"] = {
	name = "Enduring Cry",
	gemTags = {
		warcry = true,
		strength = true,
		active_skill = true,
		area = true,
		duration = true,
	},
	color = 1,
	baseFlags = {
		warcry = true,
		area = true,
		duration = true,
	},
	skillTypes = { [5] = true, [11] = true, [12] = true, },
	baseMods = {
		skill("castTime", 0.25), 
		skill("cooldown", 4), 
		skill("duration", 0.75), --"base_skill_effect_duration" = 750
		--"is_warcry" = ?
		--"base_deal_no_damage" = ?
		skill("radius", 60), 
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 3), --"base_skill_area_of_effect_+%" = 3
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		--[3] = "endurance_charges_granted_per_one_hundred_nearby_enemies_during_endurance_warcry"
		[4] = mod("LifeRegen", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Buff" }), --"base_life_regeneration_rate_per_minute"
	},
	levels = {
		[1] = { 16, 17, 8, 48, },
		[2] = { 20, 17, 10, 62, },
		[3] = { 24, 17, 12, 76, },
		[4] = { 28, 17, 14, 94, },
		[5] = { 31, 18, 16, 108, },
		[6] = { 34, 18, 18, 122, },
		[7] = { 37, 18, 20, 140, },
		[8] = { 40, 19, 22, 158, },
		[9] = { 43, 19, 24, 176, },
		[10] = { 46, 19, 26, 196, },
		[11] = { 49, 20, 27, 216, },
		[12] = { 52, 20, 28, 238, },
		[13] = { 55, 20, 29, 262, },
		[14] = { 58, 20, 30, 286, },
		[15] = { 60, 20, 31, 302, },
		[16] = { 62, 21, 32, 320, },
		[17] = { 64, 21, 33, 338, },
		[18] = { 66, 21, 34, 356, },
		[19] = { 68, 21, 35, 374, },
		[20] = { 70, 21, 36, 394, },
		[21] = { 72, 22, 37, 414, },
		[22] = { 74, 22, 38, 434, },
		[23] = { 76, 22, 39, 454, },
		[24] = { 78, 22, 40, 476, },
		[25] = { 80, 22, 41, 498, },
		[26] = { 82, 23, 42, 520, },
		[27] = { 84, 23, 43, 544, },
		[28] = { 86, 23, 44, 566, },
		[29] = { 88, 23, 45, 590, },
		[30] = { 90, 23, 46, 614, },
	},
}
skills["FlameTotem"] = {
	name = "Flame Totem",
	gemTags = {
		projectile = true,
		totem = true,
		strength = true,
		active_skill = true,
		spell = true,
		duration = true,
		fire = true,
	},
	color = 1,
	baseFlags = {
		spell = true,
		totem = true,
		projectile = true,
		duration = true,
		fire = true,
	},
	skillTypes = { [2] = true, [3] = true, [10] = true, [12] = true, [17] = true, [19] = true, [30] = true, [33] = true, },
	skillTotemId = 8,
	baseMods = {
		skill("castTime", 0.25), 
		skill("damageEffectiveness", 0.25), 
		skill("critChance", 5), 
		--"base_totem_duration" = 8000
		--"base_totem_range" = 100
		--"is_totem" = ?
		--"base_skill_is_totemified" = ?
		--"base_is_projectile" = ?
		mod("PierceChance", "BASE", 100), --"always_pierce" = ?
	},
	qualityMods = {
		mod("TotemLife", "INC", 1), --"totem_life_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("totemLevel", nil), --"base_active_skill_totem_level"
		[4] = skill("FireMin", nil), --"spell_minimum_base_fire_damage"
		[5] = skill("FireMax", nil), --"spell_maximum_base_fire_damage"
		[6] = mod("ProjectileCount", "BASE", nil), --"number_of_additional_projectiles"
	},
	levels = {
		[1] = { 4, 12, 4, 1, 2, 0, },
		[2] = { 6, 14, 6, 1, 3, 0, },
		[3] = { 9, 16, 9, 2, 4, 0, },
		[4] = { 12, 17, 12, 3, 5, 0, },
		[5] = { 16, 19, 16, 4, 7, 1, },
		[6] = { 20, 21, 20, 6, 10, 1, },
		[7] = { 24, 23, 24, 9, 13, 1, },
		[8] = { 28, 24, 28, 11, 17, 1, },
		[9] = { 32, 26, 32, 14, 22, 2, },
		[10] = { 36, 29, 36, 18, 28, 2, },
		[11] = { 40, 31, 40, 24, 35, 2, },
		[12] = { 44, 32, 44, 30, 45, 2, },
		[13] = { 48, 33, 48, 37, 56, 2, },
		[14] = { 52, 34, 52, 47, 70, 2, },
		[15] = { 55, 36, 55, 55, 83, 2, },
		[16] = { 58, 37, 58, 65, 97, 2, },
		[17] = { 61, 39, 61, 76, 114, 2, },
		[18] = { 64, 40, 64, 89, 134, 2, },
		[19] = { 67, 41, 67, 105, 157, 2, },
		[20] = { 70, 42, 70, 122, 183, 2, },
		[21] = { 72, 43, 72, 136, 203, 2, },
		[22] = { 74, 44, 74, 150, 225, 2, },
		[23] = { 76, 45, 76, 166, 249, 2, },
		[24] = { 78, 46, 78, 184, 276, 2, },
		[25] = { 80, 47, 80, 204, 305, 2, },
		[26] = { 82, 48, 82, 225, 338, 2, },
		[27] = { 84, 49, 84, 249, 373, 2, },
		[28] = { 86, 50, 86, 275, 412, 2, },
		[29] = { 88, 51, 88, 303, 455, 2, },
		[30] = { 90, 52, 90, 335, 502, 2, },
	},
}
skills["GlacialHammer"] = {
	name = "Glacial Hammer",
	gemTags = {
		strength = true,
		active_skill = true,
		attack = true,
		melee = true,
		cold = true,
	},
	color = 1,
	baseFlags = {
		attack = true,
		melee = true,
		cold = true,
	},
	skillTypes = { [1] = true, [6] = true, [25] = true, [28] = true, [24] = true, [34] = true, [53] = true, },
	weaponTypes = {
		["Two Handed Mace"] = true,
		["One Handed Mace"] = true,
		["Staff"] = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("manaCost", 5), 
		mod("SkillPhysicalDamageConvertToCold", "BASE", 50), --"skill_physical_damage_%_to_convert_to_cold" = 50
		mod("EnemyFreezeChance", "BASE", 25), --"base_chance_to_freeze_%" = 25
		mod("EnemyChillDuration", "INC", 35), --"chill_duration_+%" = 35
	},
	qualityMods = {
		mod("EnemyChillDuration", "INC", 2), --"chill_duration_+%" = 2
		mod("EnemyFreezeDuration", "INC", 1), --"freeze_duration_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("Damage", "MORE", nil, ModFlag.Attack), 
	},
	levels = {
		[1] = { 1, 40, },
		[2] = { 2, 42.2, },
		[3] = { 4, 44.4, },
		[4] = { 7, 46.6, },
		[5] = { 11, 48.8, },
		[6] = { 16, 51, },
		[7] = { 20, 53.2, },
		[8] = { 24, 55.4, },
		[9] = { 28, 57.6, },
		[10] = { 32, 59.8, },
		[11] = { 36, 62, },
		[12] = { 40, 64.2, },
		[13] = { 44, 66.4, },
		[14] = { 48, 68.6, },
		[15] = { 52, 70.8, },
		[16] = { 56, 73, },
		[17] = { 60, 75.2, },
		[18] = { 64, 77.4, },
		[19] = { 67, 79.6, },
		[20] = { 70, 81.8, },
		[21] = { 72, 84, },
		[22] = { 74, 86.2, },
		[23] = { 76, 88.4, },
		[24] = { 78, 90.6, },
		[25] = { 80, 92.8, },
		[26] = { 82, 95, },
		[27] = { 84, 97.2, },
		[28] = { 86, 99.4, },
		[29] = { 88, 101.6, },
		[30] = { 90, 103.8, },
	},
}
skills["VaalGlacialHammer"] = {
	name = "Vaal Glacial Hammer",
	gemTags = {
		strength = true,
		active_skill = true,
		vaal = true,
		attack = true,
		melee = true,
		duration = true,
		area = true,
		cold = true,
	},
	color = 1,
	baseFlags = {
		attack = true,
		melee = true,
		area = true,
		duration = true,
		cold = true,
		vaal = true,
	},
	skillTypes = { [1] = true, [6] = true, [25] = true, [28] = true, [24] = true, [12] = true, [11] = true, [43] = true, [34] = true, },
	weaponTypes = {
		["Two Handed Mace"] = true,
		["One Handed Mace"] = true,
		["Staff"] = true,
	},
	baseMods = {
		skill("castTime", 1), 
		mod("SkillPhysicalDamageConvertToCold", "BASE", 50), --"skill_physical_damage_%_to_convert_to_cold" = 50
		mod("EnemyFreezeChance", "BASE", 25), --"base_chance_to_freeze_%" = 25
		mod("EnemyChillDuration", "INC", 35), --"chill_duration_+%" = 35
	},
	qualityMods = {
		mod("EnemyChillDuration", "INC", 2), --"chill_duration_+%" = 2
		mod("EnemyFreezeDuration", "INC", 1), --"freeze_duration_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("Damage", "MORE", nil, ModFlag.Attack), 
		[3] = skill("duration", nil), --"base_skill_effect_duration"
	},
	levels = {
		[1] = { 1, 50, 3.4, },
		[2] = { 2, 51.8, 3.45, },
		[3] = { 4, 53.6, 3.5, },
		[4] = { 7, 55.4, 3.55, },
		[5] = { 11, 57.2, 3.6, },
		[6] = { 16, 59, 3.65, },
		[7] = { 20, 60.8, 3.7, },
		[8] = { 24, 62.6, 3.75, },
		[9] = { 28, 64.4, 3.8, },
		[10] = { 32, 66.2, 3.85, },
		[11] = { 36, 68, 3.9, },
		[12] = { 40, 69.8, 3.95, },
		[13] = { 44, 71.6, 4, },
		[14] = { 48, 73.4, 4.05, },
		[15] = { 52, 75.2, 4.1, },
		[16] = { 56, 77, 4.15, },
		[17] = { 60, 78.8, 4.2, },
		[18] = { 64, 80.6, 4.25, },
		[19] = { 67, 82.4, 4.3, },
		[20] = { 70, 84.2, 4.35, },
		[21] = { 72, 86, 4.4, },
		[22] = { 74, 87.8, 4.45, },
		[23] = { 76, 89.6, 4.5, },
		[24] = { 78, 91.4, 4.55, },
		[25] = { 80, 93.2, 4.6, },
		[26] = { 82, 95, 4.65, },
		[27] = { 84, 96.8, 4.7, },
		[28] = { 86, 98.6, 4.75, },
		[29] = { 88, 100.4, 4.8, },
		[30] = { 90, 102.2, 4.85, },
	},
}
skills["GroundSlam"] = {
	name = "Ground Slam",
	gemTags = {
		strength = true,
		active_skill = true,
		attack = true,
		area = true,
		melee = true,
	},
	color = 1,
	baseFlags = {
		attack = true,
		melee = true,
		area = true,
	},
	skillTypes = { [1] = true, [6] = true, [7] = true, [11] = true, [28] = true, [24] = true, },
	weaponTypes = {
		["Two Handed Mace"] = true,
		["One Handed Mace"] = true,
		["Staff"] = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("manaCost", 6), 
		mod("EnemyStunThreshold", "INC", -25), --"base_stun_threshold_reduction_+%" = 25
		--"is_area_damage" = ?
		skill("radius", 35), 
	},
	qualityMods = {
		mod("EnemyStunDuration", "INC", 1.5), --"base_stun_duration_+%" = 1.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("Damage", "MORE", nil, ModFlag.Attack), 
		[3] = skill("radiusExtra", nil), --"active_skill_base_radius_+"
	},
	levels = {
		[1] = { 1, -10, 0, },
		[2] = { 2, -8.4, 0, },
		[3] = { 4, -6.8, 1, },
		[4] = { 7, -5.2, 1, },
		[5] = { 11, -3.6, 1, },
		[6] = { 16, -2, 2, },
		[7] = { 20, -0.4, 2, },
		[8] = { 24, 1.2, 2, },
		[9] = { 28, 2.8, 3, },
		[10] = { 32, 4.4, 3, },
		[11] = { 36, 6, 3, },
		[12] = { 40, 7.6, 4, },
		[13] = { 44, 9.2, 4, },
		[14] = { 48, 10.8, 4, },
		[15] = { 52, 12.4, 5, },
		[16] = { 56, 14, 5, },
		[17] = { 60, 15.6, 5, },
		[18] = { 64, 17.2, 6, },
		[19] = { 67, 18.8, 6, },
		[20] = { 70, 20.4, 6, },
		[21] = { 72, 22, 7, },
		[22] = { 74, 23.6, 7, },
		[23] = { 76, 25.2, 7, },
		[24] = { 78, 26.8, 8, },
		[25] = { 80, 28.4, 8, },
		[26] = { 82, 30, 8, },
		[27] = { 84, 31.6, 9, },
		[28] = { 86, 33.2, 9, },
		[29] = { 88, 34.8, 9, },
		[30] = { 90, 36.4, 10, },
	},
}
skills["VaalGroundSlam"] = {
	name = "Vaal Ground Slam",
	gemTags = {
		strength = true,
		active_skill = true,
		vaal = true,
		attack = true,
		area = true,
		melee = true,
	},
	color = 1,
	baseFlags = {
		attack = true,
		melee = true,
		area = true,
		vaal = true,
	},
	skillTypes = { [1] = true, [6] = true, [7] = true, [11] = true, [28] = true, [24] = true, [43] = true, },
	weaponTypes = {
		["Two Handed Mace"] = true,
		["One Handed Mace"] = true,
		["Staff"] = true,
	},
	baseMods = {
		skill("castTime", 1), 
		--"knockback_distance_+%" = 100
		--"animation_effect_variation" = -1
		mod("AreaOfEffect", "INC", 20), --"base_skill_area_of_effect_+%" = 20
		--"always_stun" = ?
		--"global_knockback" = ?
		--"is_area_damage" = ?
		skill("cannotBeEvaded", true), --"global_always_hit" = ?
	},
	qualityMods = {
		mod("EnemyStunDuration", "INC", 1.5), --"base_stun_duration_+%" = 1.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("Damage", "MORE", nil, ModFlag.Attack), 
	},
	levels = {
		[1] = { 1, 60, },
		[2] = { 2, 62, },
		[3] = { 4, 64, },
		[4] = { 7, 66, },
		[5] = { 11, 68, },
		[6] = { 16, 70, },
		[7] = { 20, 72, },
		[8] = { 24, 74, },
		[9] = { 28, 76, },
		[10] = { 32, 78, },
		[11] = { 36, 80, },
		[12] = { 40, 82, },
		[13] = { 44, 84, },
		[14] = { 48, 86, },
		[15] = { 52, 88, },
		[16] = { 56, 90, },
		[17] = { 60, 92, },
		[18] = { 64, 94, },
		[19] = { 67, 96, },
		[20] = { 70, 98, },
		[21] = { 72, 100, },
		[22] = { 74, 102, },
		[23] = { 76, 104, },
		[24] = { 78, 106, },
		[25] = { 80, 108, },
		[26] = { 82, 110, },
		[27] = { 84, 112, },
		[28] = { 86, 114, },
		[29] = { 88, 116, },
		[30] = { 90, 118, },
	},
}
skills["HeavyStrike"] = {
	name = "Heavy Strike",
	gemTags = {
		strength = true,
		active_skill = true,
		attack = true,
		melee = true,
	},
	color = 1,
	baseFlags = {
		attack = true,
		melee = true,
	},
	skillTypes = { [1] = true, [6] = true, [25] = true, [28] = true, [24] = true, },
	weaponTypes = {
		["Thrusting One Handed Sword"] = true,
		["One Handed Sword"] = true,
		["One Handed Mace"] = true,
		["Two Handed Axe"] = true,
		["Two Handed Mace"] = true,
		["Two Handed Sword"] = true,
		["One Handed Axe"] = true,
		["Staff"] = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("manaCost", 5), 
		--"global_knockback" = 1
		mod("EnemyStunThreshold", "INC", -25), --"base_stun_threshold_reduction_+%" = 25
	},
	qualityMods = {
		mod("EnemyStunDuration", "INC", 1), --"base_stun_duration_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("Damage", "MORE", nil, ModFlag.Attack), 
	},
	levels = {
		[1] = { 1, 50, },
		[2] = { 2, 52.3, },
		[3] = { 4, 54.6, },
		[4] = { 7, 56.9, },
		[5] = { 11, 59.2, },
		[6] = { 16, 61.5, },
		[7] = { 20, 63.8, },
		[8] = { 24, 66.1, },
		[9] = { 28, 68.4, },
		[10] = { 32, 70.7, },
		[11] = { 36, 73, },
		[12] = { 40, 75.3, },
		[13] = { 44, 77.6, },
		[14] = { 48, 79.9, },
		[15] = { 52, 82.2, },
		[16] = { 56, 84.5, },
		[17] = { 60, 86.8, },
		[18] = { 64, 89.1, },
		[19] = { 67, 91.4, },
		[20] = { 70, 93.7, },
		[21] = { 72, 96, },
		[22] = { 74, 98.3, },
		[23] = { 76, 100.6, },
		[24] = { 78, 102.9, },
		[25] = { 80, 105.2, },
		[26] = { 82, 107.5, },
		[27] = { 84, 109.8, },
		[28] = { 86, 112.1, },
		[29] = { 88, 114.4, },
		[30] = { 90, 116.7, },
	},
}
skills["HeraldOfAsh"] = {
	name = "Herald of Ash",
	gemTags = {
		strength = true,
		active_skill = true,
		spell = true,
		area = true,
		fire = true,
	},
	color = 1,
	baseFlags = {
		spell = true,
		area = true,
		fire = true,
	},
	skillTypes = { [2] = true, [5] = true, [15] = true, [16] = true, [29] = true, [11] = true, [40] = true, [20] = true, [33] = true, [27] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("manaCost", 25), 
		skill("cooldown", 1), 
		mod("PhysicalDamageGainAsFire", "BASE", 15, 0, 0, { type = "GlobalEffect", effectType = "Buff" }), --"physical_damage_%_to_add_as_fire" = 15
		--"is_area_damage" = ?
		skill("radius", 10), 
	},
	qualityMods = {
		mod("FireDamage", "INC", 0.75, 0, 0, { type = "GlobalEffect", effectType = "Buff" }), --"herald_of_ash_fire_damage_+%" = 0.75
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		--[2] = "herald_of_ash_%_overkill_dealt_as_ignite"
	},
	levels = {
		[1] = { 16, 80, },
		[2] = { 20, 83, },
		[3] = { 24, 86, },
		[4] = { 28, 89, },
		[5] = { 31, 92, },
		[6] = { 34, 95, },
		[7] = { 37, 98, },
		[8] = { 40, 101, },
		[9] = { 43, 104, },
		[10] = { 46, 107, },
		[11] = { 49, 110, },
		[12] = { 52, 113, },
		[13] = { 55, 116, },
		[14] = { 58, 119, },
		[15] = { 60, 122, },
		[16] = { 62, 125, },
		[17] = { 64, 128, },
		[18] = { 66, 131, },
		[19] = { 68, 134, },
		[20] = { 70, 137, },
		[21] = { 72, 140, },
		[22] = { 74, 143, },
		[23] = { 76, 146, },
		[24] = { 78, 149, },
		[25] = { 80, 152, },
		[26] = { 82, 155, },
		[27] = { 84, 158, },
		[28] = { 86, 161, },
		[29] = { 88, 164, },
		[30] = { 90, 167, },
	},
}
skills["IceCrash"] = {
	name = "Ice Crash",
	gemTags = {
		strength = true,
		active_skill = true,
		attack = true,
		area = true,
		cold = true,
		melee = true,
	},
	parts = {
		{
			name = "First Hit",
		},
		{
			name = "Second Hit",
		},
		{
			name = "Third Hit",
		},
	},
	color = 1,
	baseFlags = {
		attack = true,
		melee = true,
		area = true,
		cold = true,
	},
	skillTypes = { [1] = true, [6] = true, [11] = true, [24] = true, [7] = true, [34] = true, },
	weaponTypes = {
		["None"] = true,
		["One Handed Mace"] = true,
		["Thrusting One Handed Sword"] = true,
		["Two Handed Sword"] = true,
		["Staff"] = true,
		["Two Handed Axe"] = true,
		["Two Handed Mace"] = true,
		["One Handed Axe"] = true,
		["One Handed Sword"] = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("manaCost", 8), 
		mod("PhysicalDamageConvertToCold", "BASE", 50, 0, 0, nil), --"base_physical_damage_%_to_convert_to_cold" = 50
		mod("Speed", "MORE", -20, ModFlag.Attack), --"active_skill_attack_speed_+%_final" = -20
		mod("Damage", "MORE", -10, ModFlag.Attack, 0, { type = "SkillPart", skillPart = 2 }), --"ice_crash_second_hit_damage_+%_final" = -10
		mod("Damage", "MORE", -20, ModFlag.Attack, 0, { type = "SkillPart", skillPart = 3 }), --"ice_crash_third_hit_damage_+%_final" = -20
		--"is_area_damage" = ?
		skill("radius", 24), 
	},
	qualityMods = {
		mod("ColdDamage", "INC", 1), --"cold_damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("Damage", "MORE", nil, ModFlag.Attack), 
	},
	levels = {
		[1] = { 28, 70, },
		[2] = { 31, 72, },
		[3] = { 34, 74, },
		[4] = { 37, 76, },
		[5] = { 40, 78, },
		[6] = { 42, 80, },
		[7] = { 44, 82, },
		[8] = { 46, 84, },
		[9] = { 48, 86, },
		[10] = { 50, 88, },
		[11] = { 52, 90, },
		[12] = { 54, 92, },
		[13] = { 56, 94, },
		[14] = { 58, 96, },
		[15] = { 60, 98, },
		[16] = { 62, 100, },
		[17] = { 64, 102, },
		[18] = { 66, 104, },
		[19] = { 68, 106, },
		[20] = { 70, 108, },
		[21] = { 72, 110, },
		[22] = { 74, 112, },
		[23] = { 76, 114, },
		[24] = { 78, 116, },
		[25] = { 80, 118, },
		[26] = { 82, 120, },
		[27] = { 84, 122, },
		[28] = { 86, 124, },
		[29] = { 88, 116, },
		[30] = { 90, 118, },
	},
}
skills["ImmortalCall"] = {
	name = "Immortal Call",
	gemTags = {
		strength = true,
		active_skill = true,
		spell = true,
		duration = true,
	},
	color = 1,
	baseFlags = {
		spell = true,
		duration = true,
	},
	skillTypes = { [2] = true, [5] = true, [12] = true, [18] = true, [36] = true, },
	baseMods = {
		skill("castTime", 0.85), 
		skill("cooldown", 3), 
		skill("duration", 0.4), --"base_skill_effect_duration" = 400
		--"base_deal_no_damage" = ?
	},
	qualityMods = {
		mod("Speed", "INC", 2, ModFlag.Cast), --"base_cast_speed_+%" = 2
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = mod("Duration", "INC", nil, 0, 0, { type = "Multiplier", var = "EnduranceCharge" }), --"buff_effect_duration_+%_per_endurance_charge"
	},
	levels = {
		[1] = { 34, 21, 100, },
		[2] = { 36, 22, 103, },
		[3] = { 38, 23, 106, },
		[4] = { 40, 24, 109, },
		[5] = { 42, 25, 112, },
		[6] = { 44, 25, 115, },
		[7] = { 46, 26, 118, },
		[8] = { 48, 27, 121, },
		[9] = { 50, 28, 124, },
		[10] = { 52, 29, 127, },
		[11] = { 54, 30, 130, },
		[12] = { 56, 31, 133, },
		[13] = { 58, 31, 136, },
		[14] = { 60, 32, 139, },
		[15] = { 62, 33, 142, },
		[16] = { 64, 34, 145, },
		[17] = { 66, 35, 148, },
		[18] = { 68, 36, 151, },
		[19] = { 69, 36, 154, },
		[20] = { 70, 36, 157, },
		[21] = { 72, 37, 160, },
		[22] = { 74, 38, 163, },
		[23] = { 76, 39, 166, },
		[24] = { 78, 40, 169, },
		[25] = { 80, 41, 172, },
		[26] = { 82, 41, 175, },
		[27] = { 84, 42, 178, },
		[28] = { 86, 43, 181, },
		[29] = { 88, 44, 184, },
		[30] = { 90, 45, 187, },
	},
}
skills["VaalImmortalCall"] = {
	name = "Vaal Immortal Call",
	gemTags = {
		strength = true,
		active_skill = true,
		vaal = true,
		spell = true,
		duration = true,
	},
	color = 1,
	baseFlags = {
		spell = true,
		duration = true,
		vaal = true,
	},
	skillTypes = { [2] = true, [5] = true, [12] = true, [18] = true, [43] = true, },
	baseMods = {
		skill("castTime", 0.85), 
		skill("cooldown", 3), 
		skill("duration", 0.4), --"base_skill_effect_duration" = 400
		--"immortal_call_prevent_all_damage" = ?
		--"base_deal_no_damage" = ?
	},
	qualityMods = {
		mod("Speed", "INC", 2, ModFlag.Cast), --"base_cast_speed_+%" = 2
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("Duration", "INC", nil, 0, 0, { type = "Multiplier", var = "EnduranceCharge" }), --"buff_effect_duration_+%_per_endurance_charge"
	},
	levels = {
		[1] = { 34, 100, },
		[2] = { 36, 103, },
		[3] = { 38, 106, },
		[4] = { 40, 109, },
		[5] = { 42, 112, },
		[6] = { 44, 115, },
		[7] = { 46, 118, },
		[8] = { 48, 121, },
		[9] = { 50, 124, },
		[10] = { 52, 127, },
		[11] = { 54, 130, },
		[12] = { 56, 133, },
		[13] = { 58, 136, },
		[14] = { 60, 139, },
		[15] = { 62, 142, },
		[16] = { 64, 145, },
		[17] = { 66, 148, },
		[18] = { 68, 151, },
		[19] = { 69, 154, },
		[20] = { 70, 157, },
		[21] = { 72, 160, },
		[22] = { 74, 163, },
		[23] = { 76, 166, },
		[24] = { 78, 169, },
		[25] = { 80, 172, },
		[26] = { 82, 175, },
		[27] = { 84, 178, },
		[28] = { 86, 181, },
		[29] = { 88, 184, },
		[30] = { 90, 187, },
	},
}
skills["InfernalBlow"] = {
	name = "Infernal Blow",
	gemTags = {
		strength = true,
		active_skill = true,
		attack = true,
		area = true,
		melee = true,
		fire = true,
	},
	color = 1,
	baseFlags = {
		attack = true,
		melee = true,
		fire = true,
	},
	skillTypes = { [1] = true, [6] = true, [11] = true, [25] = true, [28] = true, [24] = true, [33] = true, },
	weaponTypes = {
		["None"] = true,
		["One Handed Mace"] = true,
		["Thrusting One Handed Sword"] = true,
		["Two Handed Sword"] = true,
		["Staff"] = true,
		["Two Handed Axe"] = true,
		["Two Handed Mace"] = true,
		["One Handed Axe"] = true,
		["One Handed Sword"] = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("manaCost", 6), 
		skill("critChance", 5), 
		mod("SkillPhysicalDamageConvertToFire", "BASE", 50), --"skill_physical_damage_%_to_convert_to_fire" = 50
		skill("duration", 0.5), --"base_skill_effect_duration" = 500
		--"corpse_explosion_monster_life_%" = 10
		skill("radius", 24), 
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 0.5), --"base_skill_area_of_effect_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("Damage", "MORE", nil, ModFlag.Attack), 
	},
	levels = {
		[1] = { 1, 30, },
		[2] = { 2, 31.6, },
		[3] = { 4, 33.2, },
		[4] = { 7, 34.8, },
		[5] = { 11, 36.4, },
		[6] = { 16, 38, },
		[7] = { 20, 39.6, },
		[8] = { 24, 41.2, },
		[9] = { 28, 42.8, },
		[10] = { 32, 44.4, },
		[11] = { 36, 46, },
		[12] = { 40, 47.6, },
		[13] = { 44, 49.2, },
		[14] = { 48, 50.8, },
		[15] = { 52, 52.4, },
		[16] = { 56, 54, },
		[17] = { 60, 55.6, },
		[18] = { 64, 57.2, },
		[19] = { 67, 58.8, },
		[20] = { 70, 60.4, },
		[21] = { 72, 62, },
		[22] = { 74, 63.6, },
		[23] = { 76, 65.2, },
		[24] = { 78, 66.8, },
		[25] = { 80, 68.4, },
		[26] = { 82, 70, },
		[27] = { 84, 71.6, },
		[28] = { 86, 73.2, },
		[29] = { 88, 74.8, },
		[30] = { 90, 76.4, },
	},
}
skills["LeapSlam"] = {
	name = "Leap Slam",
	gemTags = {
		strength = true,
		active_skill = true,
		attack = true,
		area = true,
		movement = true,
		melee = true,
	},
	color = 1,
	baseFlags = {
		attack = true,
		melee = true,
		area = true,
		movement = true,
	},
	skillTypes = { [1] = true, [6] = true, [7] = true, [11] = true, [24] = true, [38] = true, },
	weaponTypes = {
		["Two Handed Mace"] = true,
		["Two Handed Sword"] = true,
		["One Handed Mace"] = true,
		["Two Handed Axe"] = true,
		["Thrusting One Handed Sword"] = true,
		["One Handed Axe"] = true,
		["Staff"] = true,
		["One Handed Sword"] = true,
	},
	baseMods = {
		skill("castTime", 1.4), 
		skill("manaCost", 15), 
		--"base_global_chance_to_knockback_%" = 20
		--"is_area_damage" = ?
		skill("castTimeOverridesAttackTime", true), --"cast_time_overrides_attack_duration" = ?
		skill("radius", 15), 
	},
	qualityMods = {
		--"base_global_chance_to_knockback_%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("Damage", "MORE", nil, ModFlag.Attack), 
	},
	levels = {
		[1] = { 10, nil, },
		[2] = { 13, 1.2, },
		[3] = { 17, 2.4, },
		[4] = { 21, 3.6, },
		[5] = { 25, 4.8, },
		[6] = { 29, 6, },
		[7] = { 33, 7.2, },
		[8] = { 36, 8.4, },
		[9] = { 39, 9.6, },
		[10] = { 42, 10.8, },
		[11] = { 45, 12, },
		[12] = { 48, 13.2, },
		[13] = { 51, 14.4, },
		[14] = { 54, 15.6, },
		[15] = { 57, 16.8, },
		[16] = { 60, 18, },
		[17] = { 63, 19.2, },
		[18] = { 66, 20.4, },
		[19] = { 68, 21.6, },
		[20] = { 70, 22.8, },
		[21] = { 72, 24, },
		[22] = { 74, 25.2, },
		[23] = { 76, 26.4, },
		[24] = { 78, 27.6, },
		[25] = { 80, 28.8, },
		[26] = { 82, 30, },
		[27] = { 84, 31.2, },
		[28] = { 86, 32.4, },
		[29] = { 88, 33.6, },
		[30] = { 90, 34.8, },
	},
}
skills["MoltenShell"] = {
	name = "Molten Shell",
	gemTags = {
		strength = true,
		active_skill = true,
		spell = true,
		area = true,
		duration = true,
		fire = true,
	},
	color = 1,
	baseFlags = {
		spell = true,
		area = true,
		duration = true,
		fire = true,
	},
	skillTypes = { [2] = true, [10] = true, [11] = true, [12] = true, [18] = true, [31] = true, [36] = true, [26] = true, [33] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		skill("damageEffectiveness", 2), 
		skill("critChance", 5), 
		mod("ElementalResist", "BASE", 0, 0, 0, { type = "GlobalEffect", effectType = "Buff" }), --"base_resist_all_elements_%" = 0
		--"is_area_damage" = 1
		skill("duration", 10), --"base_skill_effect_duration" = 10000
		--"skill_override_pvp_scaling_time_ms" = 1200
		skill("showAverage", true), --"base_skill_show_average_damage_instead_of_dps" = ?
		skill("radius", 15), 
	},
	qualityMods = {
		mod("EnemyIgniteChance", "BASE", 1), --"base_chance_to_ignite_%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("FireMin", nil), --"spell_minimum_base_fire_damage"
		[4] = skill("FireMax", nil), --"spell_maximum_base_fire_damage"
		--[5] = "fire_shield_damage_threshold"
		[6] = mod("Armour", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Buff" }), --"base_physical_damage_reduction_rating"
	},
	levels = {
		[1] = { 4, 8, 14, 20, 26, 17, },
		[2] = { 6, 9, 17, 26, 32, 20, },
		[3] = { 9, 9, 24, 35, 41, 26, },
		[4] = { 12, 10, 32, 47, 52, 33, },
		[5] = { 16, 11, 45, 68, 70, 44, },
		[6] = { 20, 12, 64, 96, 93, 58, },
		[7] = { 24, 13, 88, 132, 120, 75, },
		[8] = { 28, 14, 120, 180, 155, 97, },
		[9] = { 32, 16, 161, 241, 197, 123, },
		[10] = { 36, 17, 214, 321, 250, 156, },
		[11] = { 40, 19, 283, 425, 313, 196, },
		[12] = { 44, 20, 372, 558, 391, 245, },
		[13] = { 48, 22, 486, 729, 487, 304, },
		[14] = { 52, 23, 631, 947, 602, 376, },
		[15] = { 55, 25, 766, 1149, 705, 440, },
		[16] = { 58, 25, 928, 1392, 823, 515, },
		[17] = { 61, 26, 1122, 1683, 960, 600, },
		[18] = { 64, 27, 1354, 2031, 1118, 698, },
		[19] = { 67, 27, 1631, 2447, 1299, 812, },
		[20] = { 70, 28, 1962, 2943, 1508, 943, },
		[21] = { 72, 29, 2217, 3326, 1664, 1040, },
		[22] = { 74, 29, 2504, 3756, 1836, 1148, },
		[23] = { 76, 29, 2827, 4240, 2024, 1265, },
		[24] = { 78, 30, 3189, 4784, 2231, 1394, },
		[25] = { 80, 30, 3596, 5394, 2457, 1536, },
		[26] = { 82, 31, 4053, 6080, 2705, 1691, },
		[27] = { 84, 31, 4566, 6849, 2977, 1861, },
		[28] = { 86, 31, 5141, 7712, 3275, 2047, },
		[29] = { 88, 32, 5787, 8680, 3601, 2251, },
		[30] = { 90, 32, 6510, 9766, 3958, 2474, },
	},
}
skills["VaalMoltenShell"] = {
	name = "Vaal Molten Shell",
	gemTags = {
		strength = true,
		active_skill = true,
		vaal = true,
		spell = true,
		area = true,
		duration = true,
		fire = true,
	},
	color = 1,
	baseFlags = {
		spell = true,
		area = true,
		duration = true,
		fire = true,
		vaal = true,
	},
	skillTypes = { [2] = true, [10] = true, [11] = true, [12] = true, [18] = true, [31] = true, [26] = true, [43] = true, [33] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		skill("damageEffectiveness", 2), 
		skill("critChance", 5), 
		mod("ElementalResist", "BASE", 0, 0, 0, { type = "GlobalEffect", effectType = "Buff" }), --"base_resist_all_elements_%" = 0
		--"is_area_damage" = 1
		skill("duration", 5), --"base_skill_effect_duration" = 5000
		--"skill_override_pvp_scaling_time_ms" = 1400
		skill("showAverage", true), --"base_skill_show_average_damage_instead_of_dps" = ?
		--"molten_shell_explode_each_hit" = ?
	},
	qualityMods = {
		mod("EnemyIgniteChance", "BASE", 1), --"base_chance_to_ignite_%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("FireMin", nil), --"spell_minimum_base_fire_damage"
		[3] = skill("FireMax", nil), --"spell_maximum_base_fire_damage"
		[4] = mod("Armour", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Buff" }), --"base_physical_damage_reduction_rating"
	},
	levels = {
		[1] = { 4, 9, 14, 17, },
		[2] = { 6, 11, 17, 20, },
		[3] = { 9, 15, 23, 26, },
		[4] = { 12, 20, 30, 33, },
		[5] = { 16, 27, 41, 44, },
		[6] = { 20, 37, 56, 58, },
		[7] = { 24, 49, 74, 75, },
		[8] = { 28, 64, 96, 97, },
		[9] = { 32, 83, 124, 123, },
		[10] = { 36, 106, 159, 156, },
		[11] = { 40, 135, 202, 196, },
		[12] = { 44, 170, 256, 245, },
		[13] = { 48, 214, 321, 304, },
		[14] = { 52, 267, 401, 376, },
		[15] = { 55, 315, 472, 440, },
		[16] = { 58, 370, 556, 515, },
		[17] = { 61, 435, 652, 600, },
		[18] = { 64, 509, 764, 698, },
		[19] = { 67, 596, 893, 812, },
		[20] = { 70, 696, 1043, 943, },
		[21] = { 72, 771, 1156, 1040, },
		[22] = { 74, 854, 1280, 1148, },
		[23] = { 76, 945, 1417, 1265, },
		[24] = { 78, 1045, 1568, 1394, },
		[25] = { 80, 1155, 1733, 1536, },
		[26] = { 82, 1277, 1915, 1691, },
		[27] = { 84, 1410, 2115, 1861, },
		[28] = { 86, 1557, 2335, 2047, },
		[29] = { 88, 1718, 2577, 2251, },
		[30] = { 90, 1895, 2843, 2474, },
	},
}
skills["MoltenStrike"] = {
	name = "Molten Strike",
	gemTags = {
		projectile = true,
		strength = true,
		active_skill = true,
		attack = true,
		area = true,
		melee = true,
		fire = true,
	},
	parts = {
		{
			name = "Melee Hit",
			melee = true,
			projectile = false,
			area = false,
		},
		{
			name = "Magma Balls",
			melee = false,
			projectile = true,
			area = true,
		},
	},
	color = 1,
	baseFlags = {
		attack = true,
		melee = true,
		projectile = true,
		area = true,
		fire = true,
	},
	skillTypes = { [1] = true, [3] = true, [6] = true, [11] = true, [24] = true, [25] = true, [28] = true, [33] = true, [48] = true, },
	weaponTypes = {
		["One Handed Mace"] = true,
		["Thrusting One Handed Sword"] = true,
		["Two Handed Sword"] = true,
		["Dagger"] = true,
		["Staff"] = true,
		["Two Handed Axe"] = true,
		["Two Handed Mace"] = true,
		["One Handed Axe"] = true,
		["Claw"] = true,
		["One Handed Sword"] = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("manaCost", 6), 
		mod("SkillPhysicalDamageConvertToFire", "BASE", 60), --"skill_physical_damage_%_to_convert_to_fire" = 60
		mod("ProjectileCount", "BASE", 2), --"number_of_additional_projectiles" = 2
		mod("Damage", "MORE", -40, ModFlag.Projectile), --"active_skill_projectile_damage_+%_final" = -40
		--"show_number_of_projectiles" = ?
	},
	qualityMods = {
		mod("FireDamage", "INC", 1), --"fire_damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("Damage", "MORE", nil, ModFlag.Attack), 
	},
	levels = {
		[1] = { 1, 20, },
		[2] = { 2, 21.4, },
		[3] = { 4, 22.8, },
		[4] = { 7, 24.2, },
		[5] = { 11, 25.6, },
		[6] = { 16, 27, },
		[7] = { 20, 28.4, },
		[8] = { 24, 29.8, },
		[9] = { 28, 31.2, },
		[10] = { 32, 32.6, },
		[11] = { 36, 34, },
		[12] = { 40, 35.4, },
		[13] = { 44, 36.8, },
		[14] = { 48, 38.2, },
		[15] = { 52, 39.6, },
		[16] = { 56, 41, },
		[17] = { 60, 42.4, },
		[18] = { 64, 43.8, },
		[19] = { 67, 45.2, },
		[20] = { 70, 46.6, },
		[21] = { 72, 48, },
		[22] = { 74, 49.4, },
		[23] = { 76, 50.8, },
		[24] = { 78, 52.2, },
		[25] = { 80, 53.6, },
		[26] = { 82, 55, },
		[27] = { 84, 56.4, },
		[28] = { 86, 57.8, },
		[29] = { 88, 59.2, },
		[30] = { 90, 60.6, },
	},
}
skills["Punishment"] = {
	name = "Punishment",
	gemTags = {
		curse = true,
		strength = true,
		active_skill = true,
		spell = true,
		area = true,
		duration = true,
	},
	color = 1,
	baseFlags = {
		spell = true,
		curse = true,
		area = true,
		duration = true,
	},
	skillTypes = { [2] = true, [11] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [32] = true, [36] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		--"newpunishment_applied_buff_duration_ms" = 4000
		skill("debuff", true), 
		skill("radius", 22), 
	},
	qualityMods = {
		mod("Speed", "INC", 0.25, ModFlag.Attack, 0, { type = "GlobalEffect", effectType = "Buff"}), --"newpunishment_attack_speed_+%" = 0.25
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("duration", nil), --"base_skill_effect_duration"
		[4] = mod("Damage", "MORE", nil, ModFlag.Melee, 0, { type = "GlobalEffect", effectType = "Buff"}), --"newpunishment_melee_damage_+%_final"
		[5] = mod("Speed", "INC", nil, ModFlag.Attack, 0, { type = "GlobalEffect", effectType = "Buff"}), --"newpunishment_attack_speed_+%"
		[6] = mod("AreaOfEffect", "INC", nil), --"base_skill_area_of_effect_+%"
	},
	levels = {
		[1] = { 24, 24, 9, 25, 10, 0, },
		[2] = { 27, 26, 9.1, 26, 10, 4, },
		[3] = { 30, 27, 9.2, 26, 11, 8, },
		[4] = { 33, 29, 9.3, 27, 11, 12, },
		[5] = { 36, 30, 9.4, 27, 12, 16, },
		[6] = { 39, 32, 9.5, 28, 12, 20, },
		[7] = { 42, 34, 9.6, 28, 13, 24, },
		[8] = { 45, 35, 9.7, 29, 13, 28, },
		[9] = { 48, 37, 9.8, 29, 14, 32, },
		[10] = { 50, 38, 9.9, 30, 14, 36, },
		[11] = { 52, 39, 10, 30, 15, 40, },
		[12] = { 54, 40, 10.1, 31, 15, 44, },
		[13] = { 56, 42, 10.2, 31, 16, 48, },
		[14] = { 58, 43, 10.3, 32, 16, 52, },
		[15] = { 60, 44, 10.4, 32, 17, 56, },
		[16] = { 62, 45, 10.5, 33, 17, 60, },
		[17] = { 64, 46, 10.6, 33, 18, 64, },
		[18] = { 66, 47, 10.7, 34, 18, 68, },
		[19] = { 68, 48, 10.8, 34, 19, 72, },
		[20] = { 70, 50, 10.9, 35, 19, 76, },
		[21] = { 72, 51, 11, 35, 20, 80, },
		[22] = { 74, 52, 11.1, 36, 20, 84, },
		[23] = { 76, 53, 11.2, 36, 21, 88, },
		[24] = { 78, 54, 11.3, 37, 21, 92, },
		[25] = { 80, 56, 11.4, 37, 22, 96, },
		[26] = { 82, 57, 11.5, 38, 22, 100, },
		[27] = { 84, 58, 11.6, 38, 23, 104, },
		[28] = { 86, 59, 11.7, 39, 23, 108, },
		[29] = { 88, 60, 11.8, 39, 24, 112, },
		[30] = { 90, 61, 11.9, 40, 24, 116, },
	},
}
skills["FireResistAura"] = {
	name = "Purity of Fire",
	gemTags = {
		aura = true,
		strength = true,
		active_skill = true,
		spell = true,
		area = true,
		fire = true,
	},
	color = 1,
	baseFlags = {
		spell = true,
		aura = true,
		area = true,
		fire = true,
	},
	skillTypes = { [2] = true, [11] = true, [5] = true, [15] = true, [27] = true, [16] = true, [18] = true, [44] = true, [33] = true, },
	baseMods = {
		skill("castTime", 1.2), 
		skill("manaCost", 35), 
		skill("cooldown", 1.2), 
		--"base_deal_no_damage" = ?
		skill("radius", 36), 
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 1), --"base_skill_area_of_effect_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("FireResist", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Aura" }), --"base_fire_damage_resistance_%"
		[3] = mod("FireResistMax", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Aura" }), --"base_maximum_fire_damage_resistance_%"
		[4] = mod("AreaOfEffect", "INC", nil), --"base_skill_area_of_effect_+%"
	},
	levels = {
		[1] = { 24, 22, 0, 0, },
		[2] = { 27, 23, 0, 3, },
		[3] = { 30, 24, 0, 6, },
		[4] = { 33, 25, 0, 9, },
		[5] = { 36, 26, 1, 12, },
		[6] = { 39, 27, 1, 15, },
		[7] = { 42, 28, 1, 18, },
		[8] = { 45, 29, 1, 21, },
		[9] = { 48, 30, 1, 23, },
		[10] = { 50, 31, 1, 25, },
		[11] = { 52, 32, 2, 27, },
		[12] = { 54, 33, 2, 29, },
		[13] = { 56, 34, 2, 31, },
		[14] = { 58, 35, 2, 33, },
		[15] = { 60, 36, 2, 35, },
		[16] = { 62, 37, 2, 36, },
		[17] = { 64, 38, 3, 37, },
		[18] = { 66, 39, 3, 38, },
		[19] = { 68, 40, 3, 39, },
		[20] = { 70, 41, 4, 40, },
		[21] = { 72, 42, 4, 41, },
		[22] = { 74, 43, 4, 42, },
		[23] = { 76, 44, 5, 43, },
		[24] = { 78, 45, 5, 44, },
		[25] = { 80, 46, 5, 45, },
		[26] = { 82, 47, 5, 46, },
		[27] = { 84, 48, 5, 47, },
		[28] = { 86, 49, 5, 48, },
		[29] = { 88, 50, 5, 49, },
		[30] = { 90, 51, 5, 50, },
	},
}
skills["RallyingCry"] = {
	name = "Rallying Cry",
	gemTags = {
		warcry = true,
		strength = true,
		active_skill = true,
		area = true,
		duration = true,
	},
	color = 1,
	baseFlags = {
		warcry = true,
		area = true,
		duration = true,
	},
	skillTypes = { [5] = true, [11] = true, [12] = true, },
	baseMods = {
		skill("castTime", 0.25), 
		skill("cooldown", 4), 
		skill("duration", 8), --"base_skill_effect_duration" = 8000
		--"base_deal_no_damage" = ?
		--"is_warcry" = ?
		skill("buffAllies", true), 
	},
	qualityMods = {
		mod("Duration", "INC", 1.5), --"skill_effect_duration_+%" = 1.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		--[3] = "inspiring_cry_damage_+%_per_one_hundred_nearby_enemies"
		[4] = mod("Damage", "INC", nil, 0, 0, { type = "GlobalEffect", effectType = "Buff" }), --"damage_+%"
		[5] = mod("ManaRegen", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Buff" }), --"base_mana_regeneration_rate_per_minute"
	},
	levels = {
		[1] = { 10, 8, 140, 10, 1.8, },
		[2] = { 13, 10, 142, 10, 2.4, },
		[3] = { 17, 12, 144, 11, 3.1, },
		[4] = { 21, 13, 146, 11, 3.8, },
		[5] = { 25, 14, 148, 11, 4.4, },
		[6] = { 29, 15, 150, 12, 5.1, },
		[7] = { 33, 16, 152, 12, 5.8, },
		[8] = { 36, 17, 154, 12, 6.5, },
		[9] = { 39, 18, 156, 13, 7.1, },
		[10] = { 42, 20, 158, 13, 7.8, },
		[11] = { 45, 21, 160, 13, 8.5, },
		[12] = { 48, 22, 162, 14, 9.2, },
		[13] = { 51, 24, 164, 14, 9.9, },
		[14] = { 54, 25, 166, 14, 10.6, },
		[15] = { 57, 26, 168, 15, 11.3, },
		[16] = { 60, 26, 170, 15, 12, },
		[17] = { 63, 26, 172, 15, 12.7, },
		[18] = { 66, 26, 174, 16, 13.4, },
		[19] = { 68, 27, 176, 16, 14.1, },
		[20] = { 70, 27, 178, 16, 14.8, },
		[21] = { 72, 28, 180, 17, 15.5, },
		[22] = { 74, 28, 182, 17, 16.2, },
		[23] = { 76, 29, 184, 17, 16.9, },
		[24] = { 78, 29, 186, 18, 17.7, },
		[25] = { 80, 30, 188, 18, 18.4, },
		[26] = { 82, 30, 190, 18, 19.1, },
		[27] = { 84, 30, 192, 19, 19.8, },
		[28] = { 86, 30, 194, 19, 20.5, },
		[29] = { 88, 31, 196, 19, 21.3, },
		[30] = { 90, 31, 198, 20, 22, },
	},
}
skills["Reckoning"] = {
	name = "Reckoning",
	gemTags = {
		trigger = true,
		strength = true,
		active_skill = true,
		attack = true,
		area = true,
		melee = true,
	},
	color = 1,
	baseFlags = {
		attack = true,
		area = true,
		melee = true,
	},
	skillTypes = { [1] = true, [7] = true, [13] = true, [24] = true, [11] = true, [47] = true, [57] = true, },
	weaponTypes = {
		["None"] = true,
		["One Handed Mace"] = true,
		["Claw"] = true,
		["Thrusting One Handed Sword"] = true,
		["One Handed Axe"] = true,
		["Dagger"] = true,
		["One Handed Sword"] = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("cooldown", 0.4), 
		--"melee_counterattack_trigger_on_block_%" = 100
		--"shield_counterattack_aoe_range" = 35
		--"attack_unusable_if_triggerable" = ?
		skill("showAverage", true), --"base_skill_show_average_damage_instead_of_dps" = ?
		--"is_area_damage" = ?
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 0.5), --"base_skill_area_of_effect_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("Damage", "MORE", nil, ModFlag.Attack), 
	},
	levels = {
		[1] = { 4, -30, },
		[2] = { 6, -28, },
		[3] = { 9, -26, },
		[4] = { 12, -24, },
		[5] = { 16, -22, },
		[6] = { 20, -20, },
		[7] = { 24, -18, },
		[8] = { 28, -16, },
		[9] = { 32, -14, },
		[10] = { 36, -12, },
		[11] = { 40, -10, },
		[12] = { 44, -8, },
		[13] = { 48, -6, },
		[14] = { 52, -4, },
		[15] = { 55, -2, },
		[16] = { 58, nil, },
		[17] = { 61, 2, },
		[18] = { 64, 4, },
		[19] = { 67, 6, },
		[20] = { 70, 8, },
		[21] = { 72, 10, },
		[22] = { 74, 12, },
		[23] = { 76, 14, },
		[24] = { 78, 16, },
		[25] = { 80, 18, },
		[26] = { 82, 20, },
		[27] = { 84, 22, },
		[28] = { 86, 24, },
		[29] = { 88, 26, },
		[30] = { 90, 28, },
	},
}
skills["RejuvenationTotem"] = {
	name = "Rejuvenation Totem",
	gemTags = {
		totem = true,
		aura = true,
		strength = true,
		active_skill = true,
		spell = true,
		area = true,
		duration = true,
	},
	color = 1,
	baseFlags = {
		spell = true,
		aura = true,
		totem = true,
		area = true,
		duration = true,
	},
	skillTypes = { [2] = true, [5] = true, [11] = true, [12] = true, [15] = true, [27] = true, [17] = true, [19] = true, [30] = true, [44] = true, },
	skillTotemId = 4,
	baseMods = {
		skill("castTime", 0.6), 
		--"is_totem" = 1
		--"base_totem_duration" = 8000
		--"base_totem_range" = 10
		--"base_skill_is_totemified" = ?
		--"base_deal_no_damage" = ?
		skill("radius", 10), 
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 3, 0, KeywordFlag.Aura), --"base_aura_area_of_effect_+%" = 3
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = mod("LifeRegen", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Aura" }), --"base_life_regeneration_rate_per_minute"
		[4] = skill("totemLevel", nil), --"base_active_skill_totem_level"
	},
	levels = {
		[1] = { 4, 13, 6.35, 4, },
		[2] = { 6, 14, 8.6833333333333, 6, },
		[3] = { 9, 15, 12.366666666667, 9, },
		[4] = { 12, 16, 16, 12, },
		[5] = { 16, 17, 21.033333333333, 16, },
		[6] = { 20, 18, 26.3, 20, },
		[7] = { 24, 19, 32.25, 24, },
		[8] = { 28, 20, 39.366666666667, 28, },
		[9] = { 32, 22, 46.116666666667, 32, },
		[10] = { 36, 24, 53.7, 36, },
		[11] = { 40, 26, 61.816666666667, 40, },
		[12] = { 44, 27, 72.8, 44, },
		[13] = { 48, 28, 82.716666666667, 48, },
		[14] = { 52, 29, 92.666666666667, 52, },
		[15] = { 55, 30, 102.85, 55, },
		[16] = { 58, 30, 113.98333333333, 58, },
		[17] = { 61, 31, 122.95, 61, },
		[18] = { 64, 31, 135.6, 64, },
		[19] = { 67, 32, 149.03333333333, 67, },
		[20] = { 70, 32, 162.2, 70, },
		[21] = { 72, 33, 168.61666666667, 72, },
		[22] = { 74, 34, 177.03333333333, 74, },
		[23] = { 76, 34, 182.1, 76, },
		[24] = { 78, 35, 191.2, 78, },
		[25] = { 80, 36, 200.66666666667, 80, },
		[26] = { 82, 37, 206.03333333333, 82, },
		[27] = { 84, 38, 217.43333333333, 84, },
		[28] = { 86, 38, 227.95, 86, },
		[29] = { 88, 39, 241.21666666667, 88, },
		[30] = { 90, 40, 243.65, 90, },
	},
}
skills["SearingBond"] = {
	name = "Searing Bond",
	gemTags = {
		totem = true,
		strength = true,
		active_skill = true,
		spell = true,
		duration = true,
		fire = true,
	},
	color = 1,
	baseFlags = {
		spell = true,
		totem = true,
		duration = true,
		fire = true,
	},
	skillTypes = { [2] = true, [40] = true, [12] = true, [17] = true, [19] = true, [27] = true, [29] = true, [30] = true, [36] = true, [33] = true, },
	skillTotemId = 9,
	baseMods = {
		skill("castTime", 1), 
		--"base_totem_duration" = 8000
		--"base_totem_range" = 100
		mod("ActiveTotemLimit", "BASE", 1), --"number_of_additional_totems_allowed" = 1
		--"is_totem" = ?
		--"base_skill_is_totemified" = ?
	},
	qualityMods = {
		mod("TotemLife", "INC", 1), --"totem_life_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("totemLevel", nil), --"base_active_skill_totem_level"
		[4] = skill("FireDot", nil), --"base_fire_damage_to_deal_per_minute"
	},
	levels = {
		[1] = { 12, 18, 12, 23.583333333333, },
		[2] = { 15, 19, 15, 31.35, },
		[3] = { 19, 20, 19, 44.816666666667, },
		[4] = { 23, 21, 23, 62.833333333333, },
		[5] = { 27, 23, 27, 86.783333333333, },
		[6] = { 31, 25, 31, 118.43333333333, },
		[7] = { 35, 27, 35, 160.06666666667, },
		[8] = { 38, 29, 38, 199.58333333333, },
		[9] = { 41, 31, 41, 247.88333333333, },
		[10] = { 44, 33, 44, 306.76666666667, },
		[11] = { 47, 35, 47, 378.48333333333, },
		[12] = { 50, 37, 50, 465.65, },
		[13] = { 53, 39, 53, 571.45, },
		[14] = { 56, 40, 56, 699.7, },
		[15] = { 59, 42, 59, 854.93333333333, },
		[16] = { 62, 44, 62, 1042.6166666667, },
		[17] = { 64, 46, 64, 1188.95, },
		[18] = { 66, 48, 66, 1354.8333333333, },
		[19] = { 68, 50, 68, 1542.7666666667, },
		[20] = { 70, 51, 70, 1755.6333333333, },
		[21] = { 72, 53, 72, 1996.5833333333, },
		[22] = { 74, 53, 74, 2269.2666666667, },
		[23] = { 76, 54, 76, 2577.7166666667, },
		[24] = { 78, 56, 78, 2926.5, },
		[25] = { 80, 58, 80, 3320.75, },
		[26] = { 82, 59, 82, 3766.2333333333, },
		[27] = { 84, 59, 84, 4269.4666666667, },
		[28] = { 86, 61, 86, 4837.7333333333, },
		[29] = { 88, 62, 88, 5479.2333333333, },
		[30] = { 90, 64, 90, 6203.2333333333, },
	},
}
skills["NewShieldCharge"] = {
	name = "Shield Charge",
	gemTags = {
		strength = true,
		active_skill = true,
		attack = true,
		area = true,
		movement = true,
		melee = true,
	},
	color = 1,
	baseFlags = {
		attack = true,
		melee = true,
		area = true,
		movement = true,
	},
	skillTypes = { [1] = true, [7] = true, [13] = true, [24] = true, [11] = true, [38] = true, },
	weaponTypes = {
		["None"] = true,
		["One Handed Mace"] = true,
		["Claw"] = true,
		["Thrusting One Handed Sword"] = true,
		["One Handed Axe"] = true,
		["Dagger"] = true,
		["One Handed Sword"] = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("manaCost", 8), 
		--"shield_charge_scaling_stun_threshold_reduction_+%_at_maximum_range" = 50
		mod("MovementSpeed", "INC", 75, 0, 0, nil), --"base_movement_velocity_+%" = 75
		--"shield_charge_damage_+%_maximum" = 200
		--"ignores_proximity_shield" = ?
		skill("showAverage", true), --"base_skill_show_average_damage_instead_of_dps" = ?
		--"is_area_damage" = ?
	},
	qualityMods = {
		mod("Damage", "INC", 1, 0, 0, nil), --"damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("Damage", "MORE", nil, ModFlag.Attack), 
	},
	levels = {
		[1] = { 10, -50, },
		[2] = { 13, -49.4, },
		[3] = { 17, -48.8, },
		[4] = { 21, -48.2, },
		[5] = { 25, -47.6, },
		[6] = { 29, -47, },
		[7] = { 33, -46.4, },
		[8] = { 36, -45.8, },
		[9] = { 39, -45.2, },
		[10] = { 42, -44.6, },
		[11] = { 45, -44, },
		[12] = { 48, -43.4, },
		[13] = { 51, -42.8, },
		[14] = { 54, -42.2, },
		[15] = { 57, -41.6, },
		[16] = { 60, -41, },
		[17] = { 63, -40.4, },
		[18] = { 66, -39.8, },
		[19] = { 68, -39.2, },
		[20] = { 70, -38.6, },
		[21] = { 72, -38, },
		[22] = { 74, -37.4, },
		[23] = { 76, -36.8, },
		[24] = { 78, -36.2, },
		[25] = { 80, -35.6, },
		[26] = { 82, -35, },
		[27] = { 84, -34.4, },
		[28] = { 86, -33.8, },
		[29] = { 88, -33.2, },
		[30] = { 90, -32.6, },
	},
}
skills["ShockwaveTotem"] = {
	name = "Shockwave Totem",
	gemTags = {
		totem = true,
		strength = true,
		active_skill = true,
		spell = true,
		area = true,
		duration = true,
	},
	color = 1,
	baseFlags = {
		spell = true,
		totem = true,
		area = true,
		duration = true,
	},
	skillTypes = { [2] = true, [10] = true, [11] = true, [12] = true, [17] = true, [19] = true, [30] = true, [26] = true, },
	skillTotemId = 5,
	baseMods = {
		skill("castTime", 0.6), 
		skill("damageEffectiveness", 0.6), 
		skill("critChance", 5), 
		--"base_totem_duration" = 8000
		--"base_totem_range" = 100
		--"base_global_chance_to_knockback_%" = 25
		--"is_totem" = ?
		--"is_area_damage" = ?
		--"base_skill_is_totemified" = ?
		skill("radius", 24), 
	},
	qualityMods = {
		mod("TotemLife", "INC", 1), --"totem_life_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("PhysicalMin", nil), --"spell_minimum_base_physical_damage"
		[4] = skill("PhysicalMax", nil), --"spell_maximum_base_physical_damage"
		[5] = skill("totemLevel", nil), --"base_active_skill_totem_level"
	},
	levels = {
		[1] = { 28, 24, 23, 46, 28, },
		[2] = { 31, 26, 28, 51, 31, },
		[3] = { 34, 28, 33, 62, 34, },
		[4] = { 37, 31, 40, 74, 37, },
		[5] = { 40, 33, 47, 88, 40, },
		[6] = { 42, 34, 53, 98, 42, },
		[7] = { 44, 36, 59, 110, 44, },
		[8] = { 46, 39, 66, 123, 46, },
		[9] = { 48, 43, 74, 137, 48, },
		[10] = { 50, 46, 82, 153, 50, },
		[11] = { 52, 49, 92, 170, 52, },
		[12] = { 54, 51, 102, 189, 54, },
		[13] = { 56, 53, 113, 210, 56, },
		[14] = { 58, 53, 126, 233, 58, },
		[15] = { 60, 55, 139, 259, 60, },
		[16] = { 62, 55, 154, 287, 62, },
		[17] = { 64, 57, 171, 318, 64, },
		[18] = { 66, 57, 189, 351, 66, },
		[19] = { 68, 58, 209, 389, 68, },
		[20] = { 70, 58, 231, 429, 70, },
		[21] = { 72, 59, 255, 474, 72, },
		[22] = { 74, 60, 282, 524, 74, },
		[23] = { 76, 61, 311, 578, 76, },
		[24] = { 78, 62, 343, 637, 78, },
		[25] = { 80, 62, 378, 702, 80, },
		[26] = { 82, 63, 416, 773, 82, },
		[27] = { 84, 64, 458, 851, 84, },
		[28] = { 86, 65, 504, 936, 86, },
		[29] = { 88, 66, 555, 1030, 88, },
		[30] = { 90, 66, 610, 1132, 90, },
	},
}
skills["StaticStrike"] = {
	name = "Static Strike",
	gemTags = {
		strength = true,
		active_skill = true,
		attack = true,
		melee = true,
		area = true,
		duration = true,
		lightning = true,
	},
	parts = {
		{
			name = "Melee hit",
			area = false,
		},
		{
			name = "Explosion",
			area = true,
		},
	},
	color = 1,
	baseFlags = {
		attack = true,
		melee = true,
		area = true,
		duration = true,
		lightning = true,
	},
	skillTypes = { [1] = true, [6] = true, [25] = true, [28] = true, [24] = true, [11] = true, [12] = true, [35] = true, },
	weaponTypes = {
		["One Handed Mace"] = true,
		["Thrusting One Handed Sword"] = true,
		["Two Handed Sword"] = true,
		["Dagger"] = true,
		["Staff"] = true,
		["Two Handed Axe"] = true,
		["Two Handed Mace"] = true,
		["One Handed Axe"] = true,
		["Claw"] = true,
		["One Handed Sword"] = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("manaCost", 6), 
		mod("SkillPhysicalDamageConvertToLightning", "BASE", 60), --"skill_physical_damage_%_to_convert_to_lightning" = 60
		skill("duration", 0.75), --"base_skill_effect_duration" = 750
		mod("Damage", "MORE", -40, ModFlag.Attack, 0, { type = "SkillPart", skillPart = 2 }), --"static_strike_explosion_damage_+%_final" = -40
		skill("radius", 19), 
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 0.5), --"base_skill_area_of_effect_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("Damage", "MORE", nil, ModFlag.Attack), 
		[3] = skill("radiusExtra", nil), --"active_skill_base_radius_+"
	},
	levels = {
		[1] = { 12, 10, 0, },
		[2] = { 15, 12.6, 0, },
		[3] = { 19, 15.2, 0, },
		[4] = { 23, 17.8, 0, },
		[5] = { 27, 20.4, 1, },
		[6] = { 31, 23, 1, },
		[7] = { 35, 25.6, 1, },
		[8] = { 38, 28.2, 1, },
		[9] = { 41, 30.8, 1, },
		[10] = { 44, 33.4, 2, },
		[11] = { 47, 36, 2, },
		[12] = { 50, 38.6, 2, },
		[13] = { 53, 41.2, 2, },
		[14] = { 56, 43.8, 2, },
		[15] = { 59, 46.4, 3, },
		[16] = { 62, 49, 3, },
		[17] = { 64, 51.6, 3, },
		[18] = { 66, 54.2, 3, },
		[19] = { 68, 56.8, 3, },
		[20] = { 70, 59.4, 4, },
		[21] = { 72, 62, 4, },
		[22] = { 74, 64.6, 4, },
		[23] = { 76, 67.2, 4, },
		[24] = { 78, 69.8, 4, },
		[25] = { 80, 72.4, 5, },
		[26] = { 82, 75, 5, },
		[27] = { 84, 77.6, 5, },
		[28] = { 86, 80.2, 5, },
		[29] = { 88, 82.8, 5, },
		[30] = { 90, 85.4, 6, },
	},
}
skills["SummonFireGolem"] = {
	name = "Summon Flame Golem",
	gemTags = {
		strength = true,
		active_skill = true,
		fire = true,
		minion = true,
		spell = true,
		golem = true,
	},
	minionList = {
		"SummonedFlameGolem",
	},
	color = 1,
	baseFlags = {
		spell = true,
		minion = true,
		golem = true,
		fire = true,
	},
	skillTypes = { [36] = true, [33] = true, [19] = true, [9] = true, [21] = true, [26] = true, [2] = true, [18] = true, [17] = true, [49] = true, [62] = true, },
	minionSkillTypes = { [10] = true, [11] = true, [3] = true, [2] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("cooldown", 6), 
		mod("ActiveGolemLimit", "BASE", 1), --"base_number_of_golems_allowed" = 1
		--"display_minion_monster_type" = 7
		flag("Condition:HaveFireGolem", { type = "GlobalEffect", effectType = "Buff" }), 
	},
	qualityMods = {
		mod("MinionModifier", "LIST", { mod = mod("Life", "INC", 1) }), --"minion_maximum_life_+%" = 1
		mod("MinionModifier", "LIST", { mod = mod("Damage", "INC", 1) }), --"minion_damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		--[3] = "base_actor_scale_+%"
		[4] = mod("Damage", "INC", nil, 0, 0, { type = "GlobalEffect", effectType = "Buff" }), --"fire_golem_grants_damage_+%"
		[5] = mod("MinionModifier", "LIST", { mod = mod("Life", "INC", nil) }), --"minion_maximum_life_+%"
		[6] = skill("minionLevel", nil), --"display_minion_monster_level"
	},
	levels = {
		[1] = { 34, 30, 0, 15, 30, 34, },
		[2] = { 36, 32, 1, 15, 32, 36, },
		[3] = { 38, 34, 1, 16, 34, 38, },
		[4] = { 40, 36, 2, 16, 36, 40, },
		[5] = { 42, 38, 2, 16, 38, 42, },
		[6] = { 44, 40, 3, 16, 40, 44, },
		[7] = { 46, 42, 3, 17, 42, 46, },
		[8] = { 48, 44, 4, 17, 44, 48, },
		[9] = { 50, 44, 4, 17, 46, 50, },
		[10] = { 52, 46, 5, 17, 48, 52, },
		[11] = { 54, 48, 5, 18, 50, 54, },
		[12] = { 56, 48, 6, 18, 52, 56, },
		[13] = { 58, 50, 6, 18, 54, 58, },
		[14] = { 60, 50, 7, 18, 56, 60, },
		[15] = { 62, 52, 7, 19, 58, 62, },
		[16] = { 64, 52, 8, 19, 60, 64, },
		[17] = { 66, 52, 8, 19, 62, 66, },
		[18] = { 68, 52, 9, 19, 64, 68, },
		[19] = { 69, 54, 9, 20, 66, 69, },
		[20] = { 70, 54, 10, 20, 68, 70, },
		[21] = { 72, 56, 10, 20, 70, 72, },
		[22] = { 74, 56, 11, 20, 72, 74, },
		[23] = { 76, 58, 11, 21, 74, 76, },
		[24] = { 78, 58, 12, 21, 76, 78, },
		[25] = { 80, 60, 12, 21, 78, 80, },
		[26] = { 82, 60, 13, 21, 80, 82, },
		[27] = { 84, 60, 13, 22, 82, 84, },
		[28] = { 86, 60, 14, 22, 84, 86, },
		[29] = { 88, 62, 14, 22, 86, 88, },
		[30] = { 90, 62, 15, 22, 88, 90, },
	},
}
skills["SummonRockGolem"] = {
	name = "Summon Stone Golem",
	gemTags = {
		strength = true,
		active_skill = true,
		minion = true,
		spell = true,
		golem = true,
	},
	minionList = {
		"SummonedStoneGolem",
	},
	color = 1,
	baseFlags = {
		spell = true,
		minion = true,
		golem = true,
	},
	skillTypes = { [36] = true, [19] = true, [9] = true, [21] = true, [26] = true, [2] = true, [18] = true, [17] = true, [49] = true, [62] = true, },
	minionSkillTypes = { [1] = true, [24] = true, [25] = true, [38] = true, [11] = true, [28] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("cooldown", 6), 
		mod("ActiveGolemLimit", "BASE", 1), --"base_number_of_golems_allowed" = 1
		--"display_minion_monster_type" = 10
		flag("Condition:HavePhysicalGolem", { type = "GlobalEffect", effectType = "Buff" }), 
	},
	qualityMods = {
		mod("MinionModifier", "LIST", { mod = mod("Life", "INC", 1) }), --"minion_maximum_life_+%" = 1
		mod("MinionModifier", "LIST", { mod = mod("Damage", "INC", 1) }), --"minion_damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		--[3] = "base_actor_scale_+%"
		[4] = mod("MinionModifier", "LIST", { mod = mod("Life", "INC", nil) }), --"minion_maximum_life_+%"
		[5] = mod("LifeRegen", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Buff" }), --"stone_golem_grants_base_life_regeneration_rate_per_minute"
		[6] = skill("minionLevel", nil), --"display_minion_monster_level"
	},
	levels = {
		[1] = { 34, 30, 0, 30, 33, 34, },
		[2] = { 36, 32, 1, 32, 36, 36, },
		[3] = { 38, 34, 1, 34, 39, 38, },
		[4] = { 40, 36, 2, 36, 42, 40, },
		[5] = { 42, 38, 2, 38, 45, 42, },
		[6] = { 44, 40, 3, 40, 49, 44, },
		[7] = { 46, 42, 3, 42, 52, 46, },
		[8] = { 48, 44, 4, 44, 56, 48, },
		[9] = { 50, 44, 4, 46, 60, 50, },
		[10] = { 52, 46, 5, 48, 64, 52, },
		[11] = { 54, 48, 5, 50, 68, 54, },
		[12] = { 56, 48, 6, 52, 72, 56, },
		[13] = { 58, 50, 6, 54, 76, 58, },
		[14] = { 60, 50, 7, 56, 81, 60, },
		[15] = { 62, 52, 7, 58, 85, 62, },
		[16] = { 64, 52, 8, 60, 90, 64, },
		[17] = { 66, 52, 8, 62, 95, 66, },
		[18] = { 68, 52, 9, 64, 100, 68, },
		[19] = { 69, 54, 9, 66, 103, 69, },
		[20] = { 70, 54, 10, 68, 105, 70, },
		[21] = { 72, 56, 10, 70, 110, 72, },
		[22] = { 74, 56, 11, 72, 116, 74, },
		[23] = { 76, 58, 11, 74, 121, 76, },
		[24] = { 78, 58, 12, 76, 127, 78, },
		[25] = { 80, 60, 12, 78, 133, 80, },
		[26] = { 82, 60, 13, 80, 139, 82, },
		[27] = { 84, 60, 13, 82, 145, 84, },
		[28] = { 86, 60, 14, 84, 151, 86, },
		[29] = { 88, 62, 14, 86, 157, 88, },
		[30] = { 90, 62, 15, 88, 164, 90, },
	},
}
skills["Sunder"] = {
	name = "Sunder",
	gemTags = {
		strength = true,
		active_skill = true,
		attack = true,
		area = true,
		melee = true,
	},
	parts = {
		{
			name = "Primary wave",
		},
		{
			name = "Shockwaves",
		},
	},
	color = 1,
	baseFlags = {
		attack = true,
		melee = true,
		area = true,
	},
	skillTypes = { [1] = true, [6] = true, [7] = true, [11] = true, [28] = true, [24] = true, },
	weaponTypes = {
		["One Handed Mace"] = true,
		["Two Handed Axe"] = true,
		["Two Handed Mace"] = true,
		["One Handed Axe"] = true,
		["Staff"] = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("manaCost", 8), 
		mod("Damage", "MORE", -60, ModFlag.Attack, 0, { type = "SkillPart", skillPart = 2 }), --"shockwave_slam_explosion_damage_+%_final" = -60
		mod("Speed", "MORE", -15, ModFlag.Attack), --"active_skill_attack_speed_+%_final" = -15
		--"is_area_damage" = ?
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 0.5), --"base_skill_area_of_effect_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("Damage", "MORE", nil, ModFlag.Attack), 
		[3] = skill("radiusExtra", nil), --"active_skill_base_radius_+"
	},
	levels = {
		[1] = { 12, 40, 0, },
		[2] = { 15, 42.2, 0, },
		[3] = { 19, 44.4, 1, },
		[4] = { 23, 46.6, 1, },
		[5] = { 27, 48.8, 1, },
		[6] = { 31, 51, 2, },
		[7] = { 35, 53.2, 2, },
		[8] = { 38, 55.4, 2, },
		[9] = { 41, 57.6, 3, },
		[10] = { 44, 59.8, 3, },
		[11] = { 47, 62, 3, },
		[12] = { 50, 64.2, 4, },
		[13] = { 53, 66.4, 4, },
		[14] = { 56, 68.6, 4, },
		[15] = { 59, 70.8, 5, },
		[16] = { 62, 73, 5, },
		[17] = { 64, 75.2, 5, },
		[18] = { 66, 77.4, 6, },
		[19] = { 68, 79.6, 6, },
		[20] = { 70, 81.8, 6, },
		[21] = { 72, 84, 7, },
		[22] = { 74, 86.2, 7, },
		[23] = { 76, 88.4, 7, },
		[24] = { 78, 90.6, 8, },
		[25] = { 80, 92.8, 8, },
		[26] = { 82, 95, 8, },
		[27] = { 84, 97.2, 9, },
		[28] = { 86, 99.4, 9, },
		[29] = { 88, 101.6, 9, },
		[30] = { 90, 103.8, 10, },
	},
}
skills["Sweep"] = {
	name = "Sweep",
	gemTags = {
		strength = true,
		active_skill = true,
		attack = true,
		area = true,
		melee = true,
	},
	color = 1,
	baseFlags = {
		attack = true,
		melee = true,
		area = true,
	},
	skillTypes = { [1] = true, [11] = true, [28] = true, [24] = true, },
	weaponTypes = {
		["Two Handed Mace"] = true,
		["Two Handed Sword"] = true,
		["Staff"] = true,
		["Two Handed Axe"] = true,
	},
	baseMods = {
		skill("castTime", 1.15), 
		skill("manaCost", 8), 
		mod("Speed", "MORE", -10, ModFlag.Attack), --"active_skill_attack_speed_+%_final" = -10
		--"is_area_damage" = ?
		skill("radius", 26), 
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 0.5), --"base_skill_area_of_effect_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		--[2] = "base_global_chance_to_knockback_%"
		[3] = skill("radiusExtra", nil), --"active_skill_base_radius_+"
		[4] = mod("Damage", "MORE", nil, ModFlag.Attack), 
	},
	levels = {
		[1] = { 12, 30, 0, nil, },
		[2] = { 15, 30, 0, 2, },
		[3] = { 19, 31, 0, 4, },
		[4] = { 23, 31, 0, 6, },
		[5] = { 27, 32, 1, 8, },
		[6] = { 31, 32, 1, 10, },
		[7] = { 35, 33, 1, 12, },
		[8] = { 38, 33, 1, 14, },
		[9] = { 41, 34, 1, 16, },
		[10] = { 44, 34, 2, 18, },
		[11] = { 47, 35, 2, 20, },
		[12] = { 50, 35, 2, 22, },
		[13] = { 53, 36, 2, 24, },
		[14] = { 56, 36, 2, 26, },
		[15] = { 59, 37, 3, 28, },
		[16] = { 62, 37, 3, 30, },
		[17] = { 64, 38, 3, 32, },
		[18] = { 66, 38, 3, 34, },
		[19] = { 68, 39, 3, 36, },
		[20] = { 70, 39, 4, 38, },
		[21] = { 72, 40, 4, 40, },
		[22] = { 74, 40, 4, 42, },
		[23] = { 76, 41, 4, 44, },
		[24] = { 78, 41, 4, 46, },
		[25] = { 80, 42, 5, 48, },
		[26] = { 82, 42, 5, 50, },
		[27] = { 84, 43, 5, 52, },
		[28] = { 86, 43, 5, 54, },
		[29] = { 88, 44, 5, 56, },
		[30] = { 90, 44, 6, 58, },
	},
}
skills["Vengeance"] = {
	name = "Vengeance",
	gemTags = {
		trigger = true,
		strength = true,
		active_skill = true,
		attack = true,
		area = true,
		melee = true,
	},
	color = 1,
	baseFlags = {
		attack = true,
		melee = true,
		area = true,
	},
	skillTypes = { [1] = true, [11] = true, [24] = true, [47] = true, [6] = true, [57] = true, },
	weaponTypes = {
		["One Handed Mace"] = true,
		["Thrusting One Handed Sword"] = true,
		["Two Handed Sword"] = true,
		["Dagger"] = true,
		["Staff"] = true,
		["Two Handed Axe"] = true,
		["Two Handed Mace"] = true,
		["One Handed Axe"] = true,
		["Claw"] = true,
		["One Handed Sword"] = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("cooldown", 1.2), 
		--"melee_counterattack_trigger_on_hit_%" = 30
		--"attack_unusable_if_triggerable" = ?
		skill("showAverage", true), --"base_skill_show_average_damage_instead_of_dps" = ?
		--"is_area_damage" = ?
	},
	qualityMods = {
		--"melee_counterattack_trigger_on_hit_%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("Damage", "MORE", nil, ModFlag.Attack), 
	},
	levels = {
		[1] = { 24, -25, },
		[2] = { 27, -23, },
		[3] = { 30, -21, },
		[4] = { 33, -19, },
		[5] = { 36, -17, },
		[6] = { 39, -15, },
		[7] = { 42, -13, },
		[8] = { 45, -11, },
		[9] = { 48, -9, },
		[10] = { 50, -7, },
		[11] = { 52, -5, },
		[12] = { 54, -3, },
		[13] = { 56, -1, },
		[14] = { 58, 1, },
		[15] = { 60, 3, },
		[16] = { 62, 5, },
		[17] = { 64, 7, },
		[18] = { 66, 9, },
		[19] = { 68, 11, },
		[20] = { 70, 13, },
		[21] = { 72, 15, },
		[22] = { 74, 17, },
		[23] = { 76, 19, },
		[24] = { 78, 21, },
		[25] = { 80, 23, },
		[26] = { 82, 25, },
		[27] = { 84, 27, },
		[28] = { 86, 29, },
		[29] = { 88, 31, },
		[30] = { 90, 33, },
	},
}
skills["VigilantStrike"] = {
	name = "Vigilant Strike",
	gemTags = {
		attack = true,
		strength = true,
		active_skill = true,
		melee = true,
	},
	color = 1,
	baseFlags = {
		attack = true,
		melee = true,
	},
	skillTypes = { [1] = true, [5] = true, [24] = true, [6] = true, [28] = true, [25] = true, [53] = true, },
	weaponTypes = {
		["One Handed Mace"] = true,
		["Thrusting One Handed Sword"] = true,
		["Two Handed Sword"] = true,
		["Dagger"] = true,
		["Staff"] = true,
		["Two Handed Axe"] = true,
		["Two Handed Mace"] = true,
		["One Handed Axe"] = true,
		["Claw"] = true,
		["One Handed Sword"] = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("manaCost", 6), 
		skill("cooldown", 4), 
		skill("cannotBeEvaded", true), --"global_always_hit" = ?
	},
	qualityMods = {
		mod("FortifyDuration", "INC", 1), --"fortify_duration_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("Damage", "MORE", nil, ModFlag.Attack), 
		[3] = mod("FortifyDuration", "INC", nil), --"fortify_duration_+%"
	},
	levels = {
		[1] = { 4, 65, 75, },
		[2] = { 6, 67, 80, },
		[3] = { 9, 69, 85, },
		[4] = { 12, 71, 90, },
		[5] = { 16, 73, 95, },
		[6] = { 20, 75, 100, },
		[7] = { 24, 77, 105, },
		[8] = { 28, 79, 110, },
		[9] = { 32, 81, 115, },
		[10] = { 36, 83, 120, },
		[11] = { 40, 85, 125, },
		[12] = { 44, 87, 130, },
		[13] = { 48, 89, 135, },
		[14] = { 52, 91, 140, },
		[15] = { 55, 93, 145, },
		[16] = { 58, 95, 150, },
		[17] = { 61, 97, 155, },
		[18] = { 64, 99, 160, },
		[19] = { 67, 101, 165, },
		[20] = { 70, 103, 170, },
		[21] = { 72, 105, 175, },
		[22] = { 74, 107, 180, },
		[23] = { 76, 109, 185, },
		[24] = { 78, 111, 190, },
		[25] = { 80, 113, 195, },
		[26] = { 82, 115, 200, },
		[27] = { 84, 117, 205, },
		[28] = { 86, 119, 210, },
		[29] = { 88, 121, 215, },
		[30] = { 90, 123, 220, },
	},
}
skills["Vitality"] = {
	name = "Vitality",
	gemTags = {
		aura = true,
		strength = true,
		active_skill = true,
		spell = true,
		area = true,
	},
	color = 1,
	baseFlags = {
		spell = true,
		aura = true,
		area = true,
	},
	skillTypes = { [2] = true, [11] = true, [5] = true, [15] = true, [27] = true, [16] = true, [18] = true, [44] = true, },
	baseMods = {
		skill("castTime", 1.2), 
		skill("manaCost", 35), 
		skill("cooldown", 1.2), 
		--"base_deal_no_damage" = ?
		skill("radius", 36), 
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 1), --"base_skill_area_of_effect_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("LifeRegenPercent", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Aura" }), --"life_regeneration_rate_per_minute_%"
		[3] = mod("AreaOfEffect", "INC", nil), --"base_skill_area_of_effect_+%"
	},
	levels = {
		[1] = { 24, 0.7, 0, },
		[2] = { 27, 0.75, 3, },
		[3] = { 30, 0.8, 6, },
		[4] = { 33, 0.85, 9, },
		[5] = { 36, 0.9, 12, },
		[6] = { 39, 0.95, 15, },
		[7] = { 42, 1, 18, },
		[8] = { 45, 1.05, 21, },
		[9] = { 48, 1.1, 23, },
		[10] = { 50, 1.15, 25, },
		[11] = { 52, 1.2, 27, },
		[12] = { 54, 1.25, 29, },
		[13] = { 56, 1.3, 31, },
		[14] = { 58, 1.35, 33, },
		[15] = { 60, 1.4, 35, },
		[16] = { 62, 1.45, 36, },
		[17] = { 64, 1.5, 37, },
		[18] = { 66, 1.55, 38, },
		[19] = { 68, 1.6, 39, },
		[20] = { 70, 1.65, 40, },
		[21] = { 72, 1.7, 41, },
		[22] = { 74, 1.75, 42, },
		[23] = { 76, 1.8, 43, },
		[24] = { 78, 1.85, 44, },
		[25] = { 80, 1.9, 45, },
		[26] = { 82, 1.95, 46, },
		[27] = { 84, 2, 47, },
		[28] = { 86, 2.05, 48, },
		[29] = { 88, 2.1, 49, },
		[30] = { 90, 2.15, 50, },
	},
}
skills["WarlordsMark"] = {
	name = "Warlord's Mark",
	gemTags = {
		curse = true,
		strength = true,
		active_skill = true,
		spell = true,
		area = true,
		duration = true,
	},
	color = 1,
	baseFlags = {
		spell = true,
		curse = true,
		area = true,
		duration = true,
	},
	skillTypes = { [2] = true, [11] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [32] = true, [36] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		--"chance_to_be_stunned_%" = 10
		mod("SelfDamageLifeLeech", "BASE", 200, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"life_leech_on_any_damage_when_hit_permyriad" = 200
		mod("SelfDamageManaLeech", "BASE", 200, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"mana_leech_on_any_damage_when_hit_permyriad" = 200
		--"base_deal_no_damage" = ?
		skill("debuff", true), 
		skill("radius", 22), 
	},
	qualityMods = {
		--"chance_to_grant_endurance_charge_on_death_%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("duration", nil), --"base_skill_effect_duration"
		[4] = mod("AreaOfEffect", "INC", nil), --"base_skill_area_of_effect_+%"
		[5] = mod("StunRecovery", "INC", nil, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"base_stun_recovery_+%"
		--[6] = "chance_to_grant_endurance_charge_on_death_%"
	},
	levels = {
		[1] = { 24, 24, 6, 0, -21, 21, },
		[2] = { 27, 26, 6.2, 4, -21, 21, },
		[3] = { 30, 27, 6.4, 8, -22, 22, },
		[4] = { 33, 29, 6.6, 12, -22, 22, },
		[5] = { 36, 30, 6.8, 16, -23, 23, },
		[6] = { 39, 32, 7, 20, -23, 23, },
		[7] = { 42, 34, 7.2, 24, -24, 24, },
		[8] = { 45, 35, 7.4, 28, -24, 24, },
		[9] = { 48, 37, 7.6, 32, -25, 25, },
		[10] = { 50, 38, 7.8, 36, -25, 25, },
		[11] = { 52, 39, 8, 40, -26, 26, },
		[12] = { 54, 40, 8.2, 44, -26, 26, },
		[13] = { 56, 42, 8.4, 48, -27, 27, },
		[14] = { 58, 43, 8.6, 52, -27, 27, },
		[15] = { 60, 44, 8.8, 56, -28, 28, },
		[16] = { 62, 45, 9, 60, -28, 28, },
		[17] = { 64, 46, 9.2, 64, -29, 29, },
		[18] = { 66, 47, 9.4, 68, -29, 29, },
		[19] = { 68, 48, 9.6, 72, -30, 30, },
		[20] = { 70, 50, 9.8, 76, -30, 30, },
		[21] = { 72, 51, 10, 80, -31, 31, },
		[22] = { 74, 52, 10.2, 84, -31, 31, },
		[23] = { 76, 53, 10.4, 88, -32, 32, },
		[24] = { 78, 54, 10.6, 92, -32, 32, },
		[25] = { 80, 56, 10.8, 96, -33, 33, },
		[26] = { 82, 57, 11, 100, -33, 33, },
		[27] = { 84, 58, 11.2, 104, -34, 34, },
		[28] = { 86, 59, 11.4, 108, -34, 34, },
		[29] = { 88, 60, 11.6, 112, -35, 35, },
		[30] = { 90, 61, 11.8, 116, -35, 35, },
	},
}
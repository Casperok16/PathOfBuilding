-- Path of Building
--
-- Intelligence support gems
-- Skill data (c) Grinding Gear Games
--
local skills, mod, flag, skill = ...

skills["SupportAddedChaosDamage"] = {
	name = "Added Chaos Damage",
	gemTags = {
		chaos = true,
		intelligence = true,
		support = true,
	},
	support = true,
	color = 3,
	requireSkillTypes = { 10, 1, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 30), 
	},
	qualityMods = {
		mod("ChaosDamage", "INC", 0.5), --"chaos_damage_+%" = 0.5
	},
	levelMods = {
		[1] = mod("ChaosMin", "BASE", nil), --"global_minimum_added_chaos_damage"
		[2] = mod("ChaosMax", "BASE", nil), --"global_maximum_added_chaos_damage"
	},
	levels = {
		[1] = { 18, 26, },
		[2] = { 21, 32, },
		[3] = { 24, 36, },
		[4] = { 27, 41, },
		[5] = { 31, 46, },
		[6] = { 35, 52, },
		[7] = { 39, 59, },
		[8] = { 44, 67, },
		[9] = { 50, 75, },
		[10] = { 56, 84, },
		[11] = { 63, 94, },
		[12] = { 71, 106, },
		[13] = { 79, 118, },
		[14] = { 88, 132, },
		[15] = { 99, 148, },
		[16] = { 110, 165, },
		[17] = { 123, 185, },
		[18] = { 137, 206, },
		[19] = { 153, 229, },
		[20] = { 170, 256, },
		[21] = { 190, 284, },
		[22] = { 211, 316, },
		[23] = { 234, 352, },
		[24] = { 260, 391, },
		[25] = { 289, 434, },
		[26] = { 321, 482, },
		[27] = { 356, 534, },
		[28] = { 395, 592, },
		[29] = { 438, 657, },
		[30] = { 485, 728, },
	},
}
skills["SupportAddedLightningDamage"] = {
	name = "Added Lightning Damage",
	gemTags = {
		lightning = true,
		intelligence = true,
		support = true,
	},
	support = true,
	color = 3,
	requireSkillTypes = { 1, 10, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 30), 
	},
	qualityMods = {
		mod("LightningDamage", "INC", 0.5), --"lightning_damage_+%" = 0.5
	},
	levelMods = {
		[1] = mod("LightningMin", "BASE", nil), --"global_minimum_added_lightning_damage"
		[2] = mod("LightningMax", "BASE", nil), --"global_maximum_added_lightning_damage"
	},
	levels = {
		[1] = { 1, 8, },
		[2] = { 1, 9, },
		[3] = { 1, 12, },
		[4] = { 1, 16, },
		[5] = { 1, 22, },
		[6] = { 1, 28, },
		[7] = { 2, 36, },
		[8] = { 2, 47, },
		[9] = { 3, 59, },
		[10] = { 4, 70, },
		[11] = { 4, 83, },
		[12] = { 5, 98, },
		[13] = { 6, 116, },
		[14] = { 7, 136, },
		[15] = { 8, 159, },
		[16] = { 10, 186, },
		[17] = { 11, 218, },
		[18] = { 13, 253, },
		[19] = { 16, 295, },
		[20] = { 18, 342, },
		[21] = { 20, 378, },
		[22] = { 22, 417, },
		[23] = { 24, 459, },
		[24] = { 27, 506, },
		[25] = { 29, 557, },
		[26] = { 32, 614, },
		[27] = { 36, 675, },
		[28] = { 39, 743, },
		[29] = { 43, 816, },
		[30] = { 47, 897, },
	},
}
skills["SupportBlasphemy"] = {
	name = "Blasphemy",
	gemTags = {
		intelligence = true,
		support = true,
		curse = true,
		aura = true,
	},
	support = true,
	color = 3,
	requireSkillTypes = { 32, },
	addSkillTypes = { 15, 16, 31, 44, },
	excludeSkillTypes = { },
	baseMods = {
		skill("manaCostOverride", 35), 
		skill("cooldown", 0.5), 
		--"curse_apply_as_aura" = ?
	},
	qualityMods = {
		mod("CurseEffect", "INC", 0.5), --"curse_effect_+%" = 0.5
	},
	levelMods = {
		[1] = mod("AreaOfEffect", "INC", nil, 0, KeywordFlag.Curse), --"curse_area_of_effect_+%"
	},
	levels = {
		[1] = { 0, },
		[2] = { 4, },
		[3] = { 8, },
		[4] = { 12, },
		[5] = { 16, },
		[6] = { 20, },
		[7] = { 24, },
		[8] = { 28, },
		[9] = { 32, },
		[10] = { 36, },
		[11] = { 40, },
		[12] = { 44, },
		[13] = { 48, },
		[14] = { 52, },
		[15] = { 56, },
		[16] = { 60, },
		[17] = { 64, },
		[18] = { 68, },
		[19] = { 72, },
		[20] = { 76, },
		[21] = { 80, },
		[22] = { 84, },
		[23] = { 88, },
		[24] = { 92, },
		[25] = { 96, },
		[26] = { 100, },
		[27] = { 104, },
		[28] = { 108, },
		[29] = { 112, },
		[30] = { 116, },
	},
}
skills["SupportCastOnStunned"] = {
	name = "Cast when Stunned",
	gemTags = {
		intelligence = true,
		support = true,
		spell = true,
		trigger = true,
	},
	support = true,
	color = 3,
	requireSkillTypes = { 36, },
	addSkillTypes = { 42, },
	excludeSkillTypes = { 37, 41, 30, 44, 61, },
	baseMods = {
		skill("cooldown", 0.25), 
		skill("triggered", true, { type = "SkillType", skillType = SkillType.TriggerableSpell }), --"spell_uncastable_if_triggerable" = ?
		skill("showAverage", true), --"base_skill_show_average_damage_instead_of_dps" = ?
	},
	qualityMods = {
		mod("Damage", "INC", 0.5, 0, 0, nil), --"damage_+%" = 0.5
	},
	levelMods = {
		--[1] = "cast_on_stunned_%"
	},
	levels = {
		[1] = { 50, },
		[2] = { 51, },
		[3] = { 52, },
		[4] = { 53, },
		[5] = { 54, },
		[6] = { 55, },
		[7] = { 56, },
		[8] = { 57, },
		[9] = { 58, },
		[10] = { 59, },
		[11] = { 60, },
		[12] = { 61, },
		[13] = { 62, },
		[14] = { 63, },
		[15] = { 64, },
		[16] = { 65, },
		[17] = { 66, },
		[18] = { 67, },
		[19] = { 68, },
		[20] = { 69, },
		[21] = { 70, },
		[22] = { 71, },
		[23] = { 72, },
		[24] = { 73, },
		[25] = { 74, },
		[26] = { 75, },
		[27] = { 76, },
		[28] = { 77, },
		[29] = { 78, },
		[30] = { 79, },
	},
}
skills["SupportCastWhileChannelling"] = {
	name = "Cast while Channelling",
	gemTags = {
		intelligence = true,
		support = true,
		channelling = true,
		spell = true,
	},
	support = true,
	color = 3,
	requireSkillTypes = { 58, 36, },
	addSkillTypes = { },
	excludeSkillTypes = { 30, 61, },
	baseMods = {
		mod("ManaCost", "MORE", 40), 
		skill("triggered", true, { type = "SkillType", skillType = SkillType.TriggerableSpell }), --"spell_uncastable_if_triggerable" = ?
	},
	qualityMods = {
		mod("Damage", "INC", 0.5, 0, 0, nil), --"damage_+%" = 0.5
	},
	levelMods = {
		[1] = skill("timeOverride", nil, { type = "SkillType", skillType = SkillType.TriggerableSpell }), --"cast_while_channelling_time_ms"
		[2] = mod("Damage", "MORE", nil, 0, 0, { type = "SkillType", skillType = SkillType.TriggerableSpell }), --"support_cast_while_channelling_triggered_skill_damage_+%_final"
	},
	levels = {
		[1] = { 0.45, 0, },
		[2] = { 0.44, 0, },
		[3] = { 0.44, 1, },
		[4] = { 0.43, 1, },
		[5] = { 0.43, 2, },
		[6] = { 0.42, 2, },
		[7] = { 0.42, 3, },
		[8] = { 0.41, 3, },
		[9] = { 0.41, 4, },
		[10] = { 0.4, 4, },
		[11] = { 0.4, 5, },
		[12] = { 0.39, 5, },
		[13] = { 0.39, 6, },
		[14] = { 0.38, 6, },
		[15] = { 0.38, 7, },
		[16] = { 0.37, 7, },
		[17] = { 0.37, 8, },
		[18] = { 0.36, 8, },
		[19] = { 0.36, 9, },
		[20] = { 0.35, 9, },
		[21] = { 0.35, 10, },
		[22] = { 0.34, 10, },
		[23] = { 0.34, 11, },
		[24] = { 0.33, 11, },
		[25] = { 0.33, 12, },
		[26] = { 0.32, 12, },
		[27] = { 0.32, 13, },
		[28] = { 0.31, 13, },
		[29] = { 0.31, 14, },
		[30] = { 0.3, 14, },
	},
}
skills["SupportChanceToIgnite"] = {
	name = "Chance to Ignite",
	gemTags = {
		fire = true,
		intelligence = true,
		support = true,
	},
	support = true,
	color = 3,
	requireSkillTypes = { 10, 1, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 10), 
	},
	qualityMods = {
		mod("FireDamage", "INC", 0.5, ModFlag.Dot), --"burn_damage_+%" = 0.5
	},
	levelMods = {
		[1] = mod("EnemyIgniteChance", "BASE", nil), --"base_chance_to_ignite_%"
	},
	levels = {
		[1] = { 30, },
		[2] = { 31, },
		[3] = { 32, },
		[4] = { 33, },
		[5] = { 34, },
		[6] = { 35, },
		[7] = { 36, },
		[8] = { 37, },
		[9] = { 38, },
		[10] = { 39, },
		[11] = { 40, },
		[12] = { 41, },
		[13] = { 42, },
		[14] = { 43, },
		[15] = { 44, },
		[16] = { 45, },
		[17] = { 46, },
		[18] = { 47, },
		[19] = { 48, },
		[20] = { 49, },
		[21] = { 50, },
		[22] = { 51, },
		[23] = { 52, },
		[24] = { 53, },
		[25] = { 54, },
		[26] = { 55, },
		[27] = { 56, },
		[28] = { 57, },
		[29] = { 58, },
		[30] = { 59, },
	},
}
skills["SupportConcentratedEffect"] = {
	name = "Concentrated Effect",
	gemTags = {
		intelligence = true,
		support = true,
		area = true,
	},
	support = true,
	color = 3,
	requireSkillTypes = { 11, 21, 53, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 40), 
		mod("AreaOfEffect", "MORE", -30), --"support_concentrated_effect_skill_area_of_effect_+%_final" = -30
	},
	qualityMods = {
		mod("Damage", "INC", 0.5, ModFlag.Area), --"area_damage_+%" = 0.5
	},
	levelMods = {
		[1] = mod("Damage", "MORE", nil, ModFlag.Area), --"support_area_concentrate_area_damage_+%_final"
	},
	levels = {
		[1] = { 35, },
		[2] = { 36, },
		[3] = { 37, },
		[4] = { 38, },
		[5] = { 39, },
		[6] = { 40, },
		[7] = { 41, },
		[8] = { 42, },
		[9] = { 43, },
		[10] = { 44, },
		[11] = { 45, },
		[12] = { 46, },
		[13] = { 47, },
		[14] = { 48, },
		[15] = { 49, },
		[16] = { 50, },
		[17] = { 51, },
		[18] = { 52, },
		[19] = { 53, },
		[20] = { 54, },
		[21] = { 55, },
		[22] = { 56, },
		[23] = { 57, },
		[24] = { 58, },
		[25] = { 59, },
		[26] = { 60, },
		[27] = { 61, },
		[28] = { 62, },
		[29] = { 63, },
		[30] = { 64, },
	},
}
skills["SupportControlledDestruction"] = {
	name = "Controlled Destruction",
	gemTags = {
		spell = true,
		intelligence = true,
		support = true,
	},
	support = true,
	color = 3,
	requireSkillTypes = { 10, 1, 59, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 30), 
		mod("CritChance", "INC", -100, 0, 0, nil), --"critical_strike_chance_+%" = -100
	},
	qualityMods = {
		mod("Damage", "INC", 0.5, ModFlag.Spell, 0, nil), --"spell_damage_+%" = 0.5
	},
	levelMods = {
		[1] = mod("Damage", "MORE", nil, ModFlag.Spell), --"support_controlled_destruction_spell_damage_+%_final"
	},
	levels = {
		[1] = { 25, },
		[2] = { 26, },
		[3] = { 27, },
		[4] = { 28, },
		[5] = { 29, },
		[6] = { 30, },
		[7] = { 31, },
		[8] = { 32, },
		[9] = { 33, },
		[10] = { 34, },
		[11] = { 35, },
		[12] = { 36, },
		[13] = { 37, },
		[14] = { 38, },
		[15] = { 39, },
		[16] = { 40, },
		[17] = { 41, },
		[18] = { 42, },
		[19] = { 43, },
		[20] = { 44, },
		[21] = { 45, },
		[22] = { 46, },
		[23] = { 47, },
		[24] = { 48, },
		[25] = { 49, },
		[26] = { 50, },
		[27] = { 51, },
		[28] = { 52, },
		[29] = { 53, },
		[30] = { 54, },
	},
}
skills["SupportCurseOnHit"] = {
	name = "Curse On Hit",
	gemTags = {
		curse = true,
		trigger = true,
		intelligence = true,
		support = true,
	},
	support = true,
	color = 3,
	requireSkillTypes = { 1, 10, 32, },
	addSkillTypes = { },
	excludeSkillTypes = { 37, 41, 44, },
	baseMods = {
		--"apply_linked_curses_on_hit_%" = 100
		--"cannot_cast_curses" = ?
	},
	qualityMods = {
		mod("CurseEffect", "INC", 0.5), --"curse_effect_+%" = 0.5
	},
	levelMods = {
		[1] = mod("Duration", "INC", nil, 0, KeywordFlag.Curse), --"base_curse_duration_+%"
	},
	levels = {
		[1] = { -50, },
		[2] = { -48, },
		[3] = { -46, },
		[4] = { -44, },
		[5] = { -42, },
		[6] = { -40, },
		[7] = { -38, },
		[8] = { -36, },
		[9] = { -34, },
		[10] = { -32, },
		[11] = { -30, },
		[12] = { -28, },
		[13] = { -26, },
		[14] = { -24, },
		[15] = { -22, },
		[16] = { -20, },
		[17] = { -18, },
		[18] = { -16, },
		[19] = { -14, },
		[20] = { -12, },
		[21] = { -10, },
		[22] = { -8, },
		[23] = { -6, },
		[24] = { -4, },
		[25] = { -2, },
		[26] = { 0, },
		[27] = { 2, },
		[28] = { 4, },
		[29] = { 6, },
		[30] = { 8, },
	},
}
skills["SupportElementalFocus"] = {
	name = "Elemental Focus",
	gemTags = {
		intelligence = true,
		support = true,
	},
	support = true,
	color = 3,
	requireSkillTypes = { 10, 1, 29, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 30), 
		--"cannot_inflict_status_ailments" = ?
		flag("CannotShock"), 
		flag("CannotChill"), 
		flag("CannotFreeze"), 
		flag("CannotIgnite"), 
	},
	qualityMods = {
		mod("ElementalDamage", "INC", 0.5), --"elemental_damage_+%" = 0.5
	},
	levelMods = {
		[1] = mod("ElementalDamage", "MORE", nil), --"support_gem_elemental_damage_+%_final"
	},
	levels = {
		[1] = { 30, },
		[2] = { 31, },
		[3] = { 32, },
		[4] = { 33, },
		[5] = { 34, },
		[6] = { 35, },
		[7] = { 36, },
		[8] = { 37, },
		[9] = { 38, },
		[10] = { 39, },
		[11] = { 40, },
		[12] = { 41, },
		[13] = { 42, },
		[14] = { 43, },
		[15] = { 44, },
		[16] = { 45, },
		[17] = { 46, },
		[18] = { 47, },
		[19] = { 48, },
		[20] = { 49, },
		[21] = { 50, },
		[22] = { 51, },
		[23] = { 52, },
		[24] = { 53, },
		[25] = { 54, },
		[26] = { 55, },
		[27] = { 56, },
		[28] = { 57, },
		[29] = { 58, },
		[30] = { 59, },
	},
}
skills["SupportElementalProliferation"] = {
	name = "Elemental Proliferation",
	gemTags = {
		cold = true,
		fire = true,
		lightning = true,
		intelligence = true,
		support = true,
		area = true,
	},
	support = true,
	color = 3,
	requireSkillTypes = { 10, 1, 20, },
	addSkillTypes = { 11, },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 40), 
		--"elemental_status_effect_aura_radius" = 16
		--"display_what_elemental_proliferation_does" = 1
	},
	qualityMods = {
		mod("EnemyIgniteDuration", "INC", 0.5), --"ignite_duration_+%" = 0.5
		mod("EnemyChillDuration", "INC", 0.5), --"chill_duration_+%" = 0.5
		mod("EnemyFreezeDuration", "INC", 0.5), --"freeze_duration_+%" = 0.5
		mod("EnemyShockDuration", "INC", 0.5), --"shock_duration_+%" = 0.5
	},
	levelMods = {
		[1] = mod("Damage", "MORE", nil), --"support_elemental_proliferation_damage_+%_final"
	},
	levels = {
		[1] = { -30, },
		[2] = { -30, },
		[3] = { -29, },
		[4] = { -29, },
		[5] = { -28, },
		[6] = { -28, },
		[7] = { -27, },
		[8] = { -27, },
		[9] = { -26, },
		[10] = { -26, },
		[11] = { -25, },
		[12] = { -25, },
		[13] = { -24, },
		[14] = { -24, },
		[15] = { -23, },
		[16] = { -23, },
		[17] = { -22, },
		[18] = { -22, },
		[19] = { -21, },
		[20] = { -21, },
		[21] = { -20, },
		[22] = { -20, },
		[23] = { -19, },
		[24] = { -19, },
		[25] = { -18, },
		[26] = { -18, },
		[27] = { -17, },
		[28] = { -17, },
		[29] = { -16, },
		[30] = { -16, },
	},
}
skills["SupportAdditionalXP"] = {
	name = "Enlighten",
	gemTags = {
		low_max_level = true,
		intelligence = true,
		support = true,
	},
	support = true,
	color = 3,
	requireSkillTypes = { },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
	},
	qualityMods = {
		--"local_gem_experience_gain_+%" = 5
	},
	levelMods = {
		[1] = mod("ManaCost", "MORE", nil), 
	},
	levels = {
		[1] = { nil, },
		[2] = { -4, },
		[3] = { -8, },
		[4] = { -12, },
		[5] = { -16, },
		[6] = { -20, },
		[7] = { -24, },
		[8] = { -28, },
		[9] = { -32, },
		[10] = { -36, },
	},
}
skills["SupportFasterCast"] = {
	name = "Faster Casting",
	gemTags = {
		intelligence = true,
		support = true,
		spell = true,
	},
	support = true,
	color = 3,
	requireSkillTypes = { 2, 39, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 20), 
	},
	qualityMods = {
		mod("Speed", "INC", 0.5, ModFlag.Cast), --"base_cast_speed_+%" = 0.5
	},
	levelMods = {
		[1] = mod("Speed", "INC", nil, ModFlag.Cast), --"base_cast_speed_+%"
	},
	levels = {
		[1] = { 20, },
		[2] = { 21, },
		[3] = { 22, },
		[4] = { 23, },
		[5] = { 24, },
		[6] = { 25, },
		[7] = { 26, },
		[8] = { 27, },
		[9] = { 28, },
		[10] = { 29, },
		[11] = { 30, },
		[12] = { 31, },
		[13] = { 32, },
		[14] = { 33, },
		[15] = { 34, },
		[16] = { 35, },
		[17] = { 36, },
		[18] = { 37, },
		[19] = { 38, },
		[20] = { 39, },
		[21] = { 40, },
		[22] = { 41, },
		[23] = { 42, },
		[24] = { 43, },
		[25] = { 44, },
		[26] = { 45, },
		[27] = { 46, },
		[28] = { 47, },
		[29] = { 48, },
		[30] = { 49, },
	},
}
skills["SupportIncreasedAreaOfEffect"] = {
	name = "Increased Area of Effect",
	gemTags = {
		intelligence = true,
		support = true,
		area = true,
	},
	support = true,
	color = 3,
	requireSkillTypes = { 11, 21, 53, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 40), 
	},
	qualityMods = {
		mod("Damage", "INC", 0.5, ModFlag.Area), --"area_damage_+%" = 0.5
	},
	levelMods = {
		[1] = mod("AreaOfEffect", "INC", nil), --"base_skill_area_of_effect_+%"
	},
	levels = {
		[1] = { 30, },
		[2] = { 31, },
		[3] = { 32, },
		[4] = { 33, },
		[5] = { 34, },
		[6] = { 35, },
		[7] = { 36, },
		[8] = { 37, },
		[9] = { 38, },
		[10] = { 39, },
		[11] = { 40, },
		[12] = { 41, },
		[13] = { 42, },
		[14] = { 43, },
		[15] = { 44, },
		[16] = { 45, },
		[17] = { 46, },
		[18] = { 47, },
		[19] = { 48, },
		[20] = { 49, },
		[21] = { 50, },
		[22] = { 51, },
		[23] = { 52, },
		[24] = { 53, },
		[25] = { 54, },
		[26] = { 55, },
		[27] = { 56, },
		[28] = { 57, },
		[29] = { 58, },
		[30] = { 59, },
	},
}
skills["SupportIncreasedCriticalDamage"] = {
	name = "Increased Critical Damage",
	gemTags = {
		intelligence = true,
		support = true,
	},
	support = true,
	color = 3,
	requireSkillTypes = { 10, 1, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 30), 
	},
	qualityMods = {
		mod("CritMultiplier", "BASE", 0.75, 0, 0, nil), --"base_critical_strike_multiplier_+" = 0.75
	},
	levelMods = {
		[1] = mod("CritMultiplier", "BASE", nil, 0, 0, nil), --"base_critical_strike_multiplier_+"
	},
	levels = {
		[1] = { 75, },
		[2] = { 76, },
		[3] = { 78, },
		[4] = { 79, },
		[5] = { 81, },
		[6] = { 82, },
		[7] = { 84, },
		[8] = { 85, },
		[9] = { 87, },
		[10] = { 88, },
		[11] = { 90, },
		[12] = { 91, },
		[13] = { 93, },
		[14] = { 94, },
		[15] = { 96, },
		[16] = { 97, },
		[17] = { 99, },
		[18] = { 100, },
		[19] = { 102, },
		[20] = { 103, },
		[21] = { 105, },
		[22] = { 106, },
		[23] = { 108, },
		[24] = { 109, },
		[25] = { 111, },
		[26] = { 112, },
		[27] = { 114, },
		[28] = { 115, },
		[29] = { 117, },
		[30] = { 118, },
	},
}
skills["SupportIncreasedCriticalStrikes"] = {
	name = "Increased Critical Strikes",
	gemTags = {
		intelligence = true,
		support = true,
	},
	support = true,
	color = 3,
	requireSkillTypes = { 10, 1, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 15), 
	},
	qualityMods = {
		mod("CritChance", "INC", 1, 0, 0, nil), --"critical_strike_chance_+%" = 1
	},
	levelMods = {
		[1] = mod("CritChance", "INC", nil, 0, 0, nil), --"critical_strike_chance_+%"
		[2] = mod("CritChance", "BASE", nil, 0, 0, nil), --"additional_base_critical_strike_chance"
	},
	levels = {
		[1] = { 50, 1, },
		[2] = { 52, 1, },
		[3] = { 54, 1.1, },
		[4] = { 56, 1.1, },
		[5] = { 58, 1.2, },
		[6] = { 60, 1.2, },
		[7] = { 62, 1.3, },
		[8] = { 64, 1.3, },
		[9] = { 66, 1.4, },
		[10] = { 68, 1.4, },
		[11] = { 70, 1.5, },
		[12] = { 72, 1.5, },
		[13] = { 74, 1.6, },
		[14] = { 76, 1.6, },
		[15] = { 78, 1.7, },
		[16] = { 80, 1.7, },
		[17] = { 82, 1.8, },
		[18] = { 84, 1.8, },
		[19] = { 86, 1.9, },
		[20] = { 88, 1.9, },
		[21] = { 90, 2, },
		[22] = { 92, 2, },
		[23] = { 94, 2.1, },
		[24] = { 96, 2.1, },
		[25] = { 98, 2.2, },
		[26] = { 100, 2.2, },
		[27] = { 102, 2.3, },
		[28] = { 104, 2.3, },
		[29] = { 106, 2.4, },
		[30] = { 108, 2.4, },
	},
}
skills["SupportOnslaughtOnSlayingShockedEnemy"] = {
	name = "Innervate",
	gemTags = {
		lightning = true,
		intelligence = true,
		support = true,
	},
	support = true,
	color = 3,
	requireSkillTypes = { 10, 1, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 10), 
		mod("EnemyShockChance", "BASE", 15), --"base_chance_to_shock_%" = 15
	},
	qualityMods = {
		mod("EnemyShockDuration", "INC", 1.5), --"shock_duration_+%" = 1.5
	},
	levelMods = {
		--[1] = "onslaught_time_granted_on_killing_shocked_enemy_ms"
	},
	levels = {
		[1] = { 5000, },
		[2] = { 5100, },
		[3] = { 5200, },
		[4] = { 5300, },
		[5] = { 5400, },
		[6] = { 5500, },
		[7] = { 5600, },
		[8] = { 5700, },
		[9] = { 5800, },
		[10] = { 5900, },
		[11] = { 6000, },
		[12] = { 6100, },
		[13] = { 6200, },
		[14] = { 6300, },
		[15] = { 6400, },
		[16] = { 6500, },
		[17] = { 6600, },
		[18] = { 6700, },
		[19] = { 6800, },
		[20] = { 6900, },
		[21] = { 7000, },
		[22] = { 7100, },
		[23] = { 7200, },
		[24] = { 7300, },
		[25] = { 7400, },
		[26] = { 7500, },
		[27] = { 7600, },
		[28] = { 7700, },
		[29] = { 7800, },
		[30] = { 7900, },
	},
}
skills["SupportItemRarity"] = {
	name = "Item Rarity",
	gemTags = {
		intelligence = true,
		support = true,
	},
	support = true,
	color = 3,
	requireSkillTypes = { 10, 1, 40, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
	},
	qualityMods = {
		mod("LootRarity", "INC", 0.5), --"base_killed_monster_dropped_item_rarity_+%" = 0.5
	},
	levelMods = {
		[1] = mod("LootRarity", "INC", nil), --"base_killed_monster_dropped_item_rarity_+%"
	},
	levels = {
		[1] = { 40, },
		[2] = { 41, },
		[3] = { 42, },
		[4] = { 43, },
		[5] = { 44, },
		[6] = { 45, },
		[7] = { 46, },
		[8] = { 47, },
		[9] = { 48, },
		[10] = { 49, },
		[11] = { 50, },
		[12] = { 51, },
		[13] = { 52, },
		[14] = { 53, },
		[15] = { 54, },
		[16] = { 55, },
		[17] = { 56, },
		[18] = { 57, },
		[19] = { 58, },
		[20] = { 59, },
		[21] = { 60, },
		[22] = { 61, },
		[23] = { 62, },
		[24] = { 63, },
		[25] = { 64, },
		[26] = { 65, },
		[27] = { 66, },
		[28] = { 67, },
		[29] = { 68, },
		[30] = { 69, },
	},
}
skills["SupportLightningPenetration"] = {
	name = "Lightning Penetration",
	gemTags = {
		lightning = true,
		intelligence = true,
		support = true,
	},
	support = true,
	color = 3,
	requireSkillTypes = { 10, 1, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 40), 
	},
	qualityMods = {
		mod("LightningDamage", "INC", 0.5), --"lightning_damage_+%" = 0.5
	},
	levelMods = {
		[1] = mod("LightningPenetration", "BASE", nil), --"base_reduce_enemy_lightning_resistance_%"
	},
	levels = {
		[1] = { 18, },
		[2] = { 19, },
		[3] = { 20, },
		[4] = { 21, },
		[5] = { 22, },
		[6] = { 23, },
		[7] = { 24, },
		[8] = { 25, },
		[9] = { 26, },
		[10] = { 27, },
		[11] = { 28, },
		[12] = { 29, },
		[13] = { 30, },
		[14] = { 31, },
		[15] = { 32, },
		[16] = { 33, },
		[17] = { 34, },
		[18] = { 35, },
		[19] = { 36, },
		[20] = { 37, },
		[21] = { 38, },
		[22] = { 39, },
		[23] = { 40, },
		[24] = { 41, },
		[25] = { 42, },
		[26] = { 43, },
		[27] = { 44, },
		[28] = { 45, },
		[29] = { 46, },
		[30] = { 47, },
	},
}
skills["SupportMinefield"] = {
	name = "Minefield",
	gemTags = {
		intelligence = true,
		support = true,
		mine = true,
	},
	support = true,
	color = 3,
	requireSkillTypes = { 41, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 60), 
		--"number_of_additional_mines_to_place" = 2
		mod("ActiveMineLimit", "BASE", 2), --"number_of_additional_remote_mines_allowed" = 2
	},
	qualityMods = {
		mod("MineDetonationAreaOfEffect", "INC", 1), --"mine_detonation_radius_+%" = 1
	},
	levelMods = {
		[1] = mod("Damage", "MORE", nil), --"support_minefield_mine_damage_+%_final"
	},
	levels = {
		[1] = { -40, },
		[2] = { -39, },
		[3] = { -38, },
		[4] = { -37, },
		[5] = { -36, },
		[6] = { -35, },
		[7] = { -34, },
		[8] = { -33, },
		[9] = { -32, },
		[10] = { -31, },
		[11] = { -30, },
		[12] = { -29, },
		[13] = { -28, },
		[14] = { -27, },
		[15] = { -26, },
		[16] = { -25, },
		[17] = { -24, },
		[18] = { -23, },
		[19] = { -22, },
		[20] = { -21, },
		[21] = { -20, },
		[22] = { -19, },
		[23] = { -18, },
		[24] = { -17, },
		[25] = { -16, },
		[26] = { -15, },
		[27] = { -14, },
		[28] = { -13, },
		[29] = { -12, },
		[30] = { -11, },
	},
}
skills["SupportMinionDamage"] = {
	name = "Minion Damage",
	gemTags = {
		intelligence = true,
		support = true,
		minion = true,
	},
	support = true,
	color = 3,
	requireSkillTypes = { 9, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 30), 
	},
	qualityMods = {
		mod("MinionModifier", "LIST", { mod = mod("Damage", "INC", 0.75) }), --"minion_damage_+%" = 0.75
	},
	levelMods = {
		[1] = mod("MinionModifier", "LIST", { mod = mod("Damage", "MORE", nil) }), --"support_minion_damage_+%_final"
	},
	levels = {
		[1] = { 30, },
		[2] = { 31, },
		[3] = { 32, },
		[4] = { 33, },
		[5] = { 34, },
		[6] = { 35, },
		[7] = { 36, },
		[8] = { 37, },
		[9] = { 38, },
		[10] = { 39, },
		[11] = { 40, },
		[12] = { 41, },
		[13] = { 42, },
		[14] = { 43, },
		[15] = { 44, },
		[16] = { 45, },
		[17] = { 46, },
		[18] = { 47, },
		[19] = { 48, },
		[20] = { 49, },
		[21] = { 50, },
		[22] = { 51, },
		[23] = { 52, },
		[24] = { 53, },
		[25] = { 54, },
		[26] = { 55, },
		[27] = { 56, },
		[28] = { 57, },
		[29] = { 58, },
		[30] = { 59, },
	},
}
skills["SupportMinionLife"] = {
	name = "Minion Life",
	gemTags = {
		intelligence = true,
		support = true,
		minion = true,
	},
	support = true,
	color = 3,
	requireSkillTypes = { 9, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 40), 
	},
	qualityMods = {
		mod("MinionModifier", "LIST", { mod = mod("Life", "INC", 0.75) }), --"minion_maximum_life_+%" = 0.75
	},
	levelMods = {
		[1] = mod("MinionModifier", "LIST", { mod = mod("Life", "INC", nil) }), --"minion_maximum_life_+%"
	},
	levels = {
		[1] = { 30, },
		[2] = { 31, },
		[3] = { 32, },
		[4] = { 33, },
		[5] = { 34, },
		[6] = { 35, },
		[7] = { 36, },
		[8] = { 37, },
		[9] = { 38, },
		[10] = { 39, },
		[11] = { 40, },
		[12] = { 41, },
		[13] = { 42, },
		[14] = { 43, },
		[15] = { 44, },
		[16] = { 45, },
		[17] = { 46, },
		[18] = { 47, },
		[19] = { 48, },
		[20] = { 49, },
		[21] = { 50, },
		[22] = { 51, },
		[23] = { 52, },
		[24] = { 53, },
		[25] = { 54, },
		[26] = { 55, },
		[27] = { 56, },
		[28] = { 57, },
		[29] = { 58, },
		[30] = { 59, },
	},
}
skills["SupportMinionSpeed"] = {
	name = "Minion Speed",
	gemTags = {
		movement = true,
		intelligence = true,
		support = true,
		minion = true,
	},
	support = true,
	color = 3,
	requireSkillTypes = { 9, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 40), 
	},
	qualityMods = {
		mod("MinionModifier", "LIST", { mod = mod("MovementSpeed", "INC", 0.5) }), --"minion_movement_speed_+%" = 0.5
	},
	levelMods = {
		[1] = mod("MinionModifier", "LIST", { mod = mod("MovementSpeed", "INC", nil) }), --"minion_movement_speed_+%"
		[2] = mod("MinionModifier", "LIST", { mod = mod("Speed", "INC", nil, ModFlag.Attack) }), --"minion_attack_speed_+%"
		[3] = mod("MinionModifier", "LIST", { mod = mod("Speed", "INC", nil, ModFlag.Cast) }), --"minion_cast_speed_+%"
	},
	levels = {
		[1] = { 25, 10, 10, },
		[2] = { 26, 10, 10, },
		[3] = { 27, 11, 11, },
		[4] = { 28, 11, 11, },
		[5] = { 29, 12, 12, },
		[6] = { 30, 12, 12, },
		[7] = { 31, 13, 13, },
		[8] = { 32, 13, 13, },
		[9] = { 33, 14, 14, },
		[10] = { 34, 14, 14, },
		[11] = { 35, 15, 15, },
		[12] = { 36, 15, 15, },
		[13] = { 37, 16, 16, },
		[14] = { 38, 16, 16, },
		[15] = { 39, 17, 17, },
		[16] = { 40, 17, 17, },
		[17] = { 41, 18, 18, },
		[18] = { 42, 18, 18, },
		[19] = { 43, 19, 19, },
		[20] = { 44, 19, 19, },
		[21] = { 45, 20, 20, },
		[22] = { 46, 20, 20, },
		[23] = { 47, 21, 21, },
		[24] = { 48, 21, 21, },
		[25] = { 49, 22, 22, },
		[26] = { 50, 22, 22, },
		[27] = { 51, 23, 23, },
		[28] = { 52, 23, 23, },
		[29] = { 53, 24, 24, },
		[30] = { 54, 24, 24, },
	},
}
skills["SupportSummonElementalResistances"] = {
	name = "Minion and Totem Elemental Resistance",
	gemTags = {
		intelligence = true,
		support = true,
		minion = true,
	},
	support = true,
	color = 3,
	requireSkillTypes = { 9, 30, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 40), 
	},
	qualityMods = {
		mod("MinionModifier", "LIST", { mod = mod("FireResist", "BASE", 0.5) }), --"summon_fire_resistance_+" = 0.5
		mod("MinionModifier", "LIST", { mod = mod("ColdResist", "BASE", 0.5) }), --"summon_cold_resistance_+" = 0.5
		mod("MinionModifier", "LIST", { mod = mod("LightningResist", "BASE", 0.5) }), --"summon_lightning_resistance_+" = 0.5
	},
	levelMods = {
		[1] = mod("MinionModifier", "LIST", { mod = mod("FireResist", "BASE", nil) }), --"summon_fire_resistance_+"
		[2] = mod("MinionModifier", "LIST", { mod = mod("ColdResist", "BASE", nil) }), --"summon_cold_resistance_+"
		[3] = mod("MinionModifier", "LIST", { mod = mod("LightningResist", "BASE", nil) }), --"summon_lightning_resistance_+"
		[4] = { mod("ElementalDamage", "MORE", nil, 0, KeywordFlag.Totem), mod("MinionModifier", "LIST", { mod = mod("ElementalDamage", "MORE", nil) }) }, --"support_minion_totem_resistance_elemental_damage_+%_final"
	},
	levels = {
		[1] = { 25, 25, 25, 10, },
		[2] = { 26, 26, 26, 10, },
		[3] = { 27, 27, 27, 11, },
		[4] = { 28, 28, 28, 11, },
		[5] = { 29, 29, 29, 12, },
		[6] = { 30, 30, 30, 12, },
		[7] = { 31, 31, 31, 13, },
		[8] = { 32, 32, 32, 13, },
		[9] = { 33, 33, 33, 14, },
		[10] = { 34, 34, 34, 14, },
		[11] = { 35, 35, 35, 15, },
		[12] = { 36, 36, 36, 15, },
		[13] = { 37, 37, 37, 16, },
		[14] = { 38, 38, 38, 16, },
		[15] = { 39, 39, 39, 17, },
		[16] = { 40, 40, 40, 17, },
		[17] = { 41, 41, 41, 18, },
		[18] = { 42, 42, 42, 18, },
		[19] = { 43, 43, 43, 19, },
		[20] = { 44, 44, 44, 19, },
		[21] = { 45, 45, 45, 20, },
		[22] = { 46, 46, 46, 20, },
		[23] = { 47, 47, 47, 21, },
		[24] = { 48, 48, 48, 21, },
		[25] = { 49, 49, 49, 22, },
		[26] = { 50, 50, 50, 22, },
		[27] = { 51, 51, 51, 23, },
		[28] = { 52, 52, 52, 23, },
		[29] = { 53, 53, 53, 24, },
		[30] = { 54, 54, 54, 24, },
	},
}
skills["SupportPhysicalToLightning"] = {
	name = "Physical to Lightning",
	gemTags = {
		lightning = true,
		intelligence = true,
		support = true,
	},
	support = true,
	color = 3,
	requireSkillTypes = { 10, 1, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 10), 
		mod("SkillPhysicalDamageConvertToLightning", "BASE", 50), --"skill_physical_damage_%_to_convert_to_lightning" = 50
	},
	qualityMods = {
		mod("PhysicalDamage", "INC", 0.5), --"physical_damage_+%" = 0.5
		mod("LightningDamage", "INC", 0.5), --"lightning_damage_+%" = 0.5
	},
	levelMods = {
		[1] = mod("PhysicalDamageGainAsLightning", "BASE", nil, 0, 0, nil), --"physical_damage_%_to_add_as_lightning"
	},
	levels = {
		[1] = { 10, },
		[2] = { 11, },
		[3] = { 12, },
		[4] = { 13, },
		[5] = { 14, },
		[6] = { 15, },
		[7] = { 16, },
		[8] = { 17, },
		[9] = { 18, },
		[10] = { 19, },
		[11] = { 20, },
		[12] = { 21, },
		[13] = { 22, },
		[14] = { 23, },
		[15] = { 24, },
		[16] = { 25, },
		[17] = { 26, },
		[18] = { 27, },
		[19] = { 28, },
		[20] = { 29, },
		[21] = { 30, },
		[22] = { 31, },
		[23] = { 32, },
		[24] = { 33, },
		[25] = { 34, },
		[26] = { 35, },
		[27] = { 36, },
		[28] = { 37, },
		[29] = { 38, },
		[30] = { 39, },
	},
}
skills["SupportPowerChargeOnCrit"] = {
	name = "Power Charge On Critical",
	gemTags = {
		intelligence = true,
		support = true,
	},
	support = true,
	color = 3,
	requireSkillTypes = { 10, 1, },
	addSkillTypes = { },
	excludeSkillTypes = { },
	baseMods = {
		mod("ManaCost", "MORE", 10), 
	},
	qualityMods = {
		mod("CritChance", "INC", 1, 0, 0, nil), --"critical_strike_chance_+%" = 1
	},
	levelMods = {
		--[1] = "add_power_charge_on_critical_strike_%"
	},
	levels = {
		[1] = { 35, },
		[2] = { 36, },
		[3] = { 37, },
		[4] = { 38, },
		[5] = { 39, },
		[6] = { 40, },
		[7] = { 41, },
		[8] = { 42, },
		[9] = { 43, },
		[10] = { 44, },
		[11] = { 45, },
		[12] = { 46, },
		[13] = { 47, },
		[14] = { 48, },
		[15] = { 49, },
		[16] = { 50, },
		[17] = { 51, },
		[18] = { 52, },
		[19] = { 53, },
		[20] = { 54, },
		[21] = { 55, },
		[22] = { 56, },
		[23] = { 57, },
		[24] = { 58, },
		[25] = { 59, },
		[26] = { 60, },
		[27] = { 61, },
		[28] = { 62, },
		[29] = { 63, },
		[30] = { 64, },
	},
}
skills["SupportRemoteMine"] = {
	name = "Remote Mine",
	gemTags = {
		intelligence = true,
		support = true,
		mine = true,
		duration = true,
	},
	support = true,
	addFlags = {
		mine = true,
		duration = true,
	},
	color = 3,
	requireSkillTypes = { 19, },
	addSkillTypes = { 12, 41, },
	excludeSkillTypes = { 61, },
	baseMods = {
		mod("ManaCost", "MORE", 50), 
		--"is_remote_mine" = 1
		--"base_mine_duration" = 16000
		--"mine_override_pvp_scaling_time_ms" = 900
		--"base_skill_is_mined" = ?
		--"disable_skill_if_melee_attack" = ?
		skill("showAverage", true, { type = "SkillType", skillType = SkillType.SkillCanMine }), --"base_skill_show_average_damage_instead_of_dps" = ?
	},
	qualityMods = {
		mod("MineLayingSpeed", "MORE", 0.5), --"mine_laying_speed_+%" = 0.5
	},
	levelMods = {
		[1] = mod("Damage", "MORE", nil, ModFlag.Hit, KeywordFlag.Mine), --"support_remote_mine_hit_damage_+%_final"
	},
	levels = {
		[1] = { 30, },
		[2] = { 31, },
		[3] = { 32, },
		[4] = { 33, },
		[5] = { 34, },
		[6] = { 35, },
		[7] = { 36, },
		[8] = { 37, },
		[9] = { 38, },
		[10] = { 39, },
		[11] = { 40, },
		[12] = { 41, },
		[13] = { 42, },
		[14] = { 43, },
		[15] = { 44, },
		[16] = { 45, },
		[17] = { 46, },
		[18] = { 47, },
		[19] = { 48, },
		[20] = { 49, },
		[21] = { 50, },
		[22] = { 51, },
		[23] = { 52, },
		[24] = { 53, },
		[25] = { 54, },
		[26] = { 55, },
		[27] = { 56, },
		[28] = { 57, },
		[29] = { 58, },
		[30] = { 59, },
	},
}
skills["SupportMulticast"] = {
	name = "Spell Echo",
	gemTags = {
		spell = true,
		intelligence = true,
		support = true,
	},
	support = true,
	color = 3,
	requireSkillTypes = { 26, },
	addSkillTypes = { },
	excludeSkillTypes = { 30, 37, 41, 42, 15, },
	baseMods = {
		mod("ManaCost", "MORE", 40), 
		skill("repeatCount", 1), --"base_spell_repeat_count" = 1
		mod("Damage", "MORE", -10), --"support_echo_damage_+%_final" = -10
	},
	qualityMods = {
		mod("Damage", "INC", 0.5, ModFlag.Spell, 0, nil), --"spell_damage_+%" = 0.5
	},
	levelMods = {
		[1] = mod("Speed", "MORE", nil, ModFlag.Cast), --"support_multicast_cast_speed_+%_final"
	},
	levels = {
		[1] = { 51, },
		[2] = { 52, },
		[3] = { 53, },
		[4] = { 54, },
		[5] = { 55, },
		[6] = { 56, },
		[7] = { 57, },
		[8] = { 58, },
		[9] = { 59, },
		[10] = { 60, },
		[11] = { 61, },
		[12] = { 62, },
		[13] = { 63, },
		[14] = { 64, },
		[15] = { 65, },
		[16] = { 66, },
		[17] = { 67, },
		[18] = { 68, },
		[19] = { 69, },
		[20] = { 70, },
		[21] = { 71, },
		[22] = { 72, },
		[23] = { 73, },
		[24] = { 74, },
		[25] = { 75, },
		[26] = { 76, },
		[27] = { 77, },
		[28] = { 78, },
		[29] = { 79, },
		[30] = { 80, },
	},
}
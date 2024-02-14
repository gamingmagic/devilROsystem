tbl = {
	[70001] = {
		unidentifiedDisplayName = "Mask",
		unidentifiedResourceName = "마스크",
		unidentifiedDescriptionName = { "Unknown Item, can be identified by using a ^6666CCMagnifier^000000." },
		identifiedDisplayName = "Angel Wings",
		identifiedResourceName = "angel_wings",
		identifiedDescriptionName = {
			"Wings from a lovely angeling.",
			"Agi +5.",
			"Attack Speed +7%.",
			"Class:^6666CC Headgear^000000",
			"Defense:^0000FF 0^000000",
			"Position:^6666CC Lower^000000",
			"Weight:^009900 10^000000",
		},
		slotCount = 1,
		ClassNum = 5277
	},
	[70002] = {
		unidentifiedDisplayName = "Mask",
		unidentifiedResourceName = "마스크",
		unidentifiedDescriptionName = { "Unknown Item, can be identified by using a ^6666CCMagnifier^000000." },
		identifiedDisplayName = "Devil Wings",
		identifiedResourceName = "devil_wings",
		identifiedDescriptionName = {
			"Wings from a Devil.",
			"Str +3.",
			"Vit +3.",
			"Class:^6666CC Headgear^000000",
			"Defense:^0000FF 0^000000",
			"Position:^6666CC Lower^000000",
			"Weight:^009900 10^000000",
		},
		slotCount = 1,
		ClassNum = 5278
	},
	[70003] = {
		unidentifiedDisplayName = "Mask",
		unidentifiedResourceName = "마스크",
		unidentifiedDescriptionName = { "Unknown Item, can be identified by using a ^6666CCMagnifier^000000." },
		identifiedDisplayName = "Arc Demon Wings",
		identifiedResourceName = "archdemonwings",
		identifiedDescriptionName = {
			"Wings from a Demon.",
			"Dex +3.",
			"Agi +3.",
			"Class:^6666CC Headgear^000000",
			"Defense:^0000FF 0^000000",
			"Position:^6666CC Lower^000000",
			"Weight:^009900 10^000000",
		},
		slotCount = 1,
		ClassNum = 3007
	},
	[70004] = {
		unidentifiedDisplayName = "Mask",
		unidentifiedResourceName = "마스크",
		unidentifiedDescriptionName = { "Unknown Item, can be identified by using a ^6666CCMagnifier^000000." },
		identifiedDisplayName = "Torn Wings",
		identifiedResourceName = "tornwings",
		identifiedDescriptionName = {
			"A set of lucky-charmed wings that solely exist only because of chance. Granted with the gift of luck, you can say it'll rub off on you.",
			"Luk +10.",
			"Perfect Dogde +3.",
			"Critical Damage +5%.",
			"Class:^6666CC Headgear^000000",
			"Defense:^0000FF 0^000000",
			"Position:^6666CC Lower^000000",
			"Weight:^009900 10^000000",
		},
		slotCount = 1,
		ClassNum = 5279
	},
	[70005] = {
		unidentifiedDisplayName = "Mask",
		unidentifiedResourceName = "마스크",
		unidentifiedDescriptionName = { "Unknown Item, can be identified by using a ^6666CCMagnifier^000000." },
		identifiedDisplayName = "Artic Wings",
		identifiedResourceName = "artic_wing",
		identifiedDescriptionName = {
			"Int +10.",
			"Matk Rate +10%.",
			"10% Resistance against Water Property. ",
			"Receive 5% more damage from Wind attacks",
			"Has certain chance of inflicting the Freeze status to enemies when user receives Physical Damage.",
			"Class:^6666CC Headgear^000000",
			"Defense:^0000FF 0^000000",
			"Position:^6666CC Lower^000000",
			"Weight:^009900 10^000000",
		},
		slotCount = 1,
		ClassNum = 5280
	},
	[70006] = {
		unidentifiedDisplayName = "Mask",
		unidentifiedResourceName = "마스크",
		unidentifiedDescriptionName = { "Unknown Item, can be identified by using a ^6666CCMagnifier^000000." },
		identifiedDisplayName = "Evil Demon Wings",
		identifiedResourceName = "Evil_Demon_Wings",
		identifiedDescriptionName = {
			"Str +10.",
			"5% Resistance against Shadow Property.",
			"Receive 5% more damage from Holy attacks.",
			"Class:^6666CC Headgear^000000",
			"Defense:^0000FF 0^000000",
			"Position:^6666CC Lower^000000",
			"Weight:^009900 10^000000",
		},
		slotCount = 1,
		ClassNum = 4415
	},
}

function main()
	for ItemID, DESC in pairs(tbl) do
		result, msg = AddItem(ItemID, DESC.unidentifiedDisplayName, DESC.unidentifiedResourceName, DESC.identifiedDisplayName, DESC.identifiedResourceName, DESC.slotCount, DESC.ClassNum)
		if not result then
			return false, msg
		end
		for k, v in pairs(DESC.unidentifiedDescriptionName) do
			result, msg = AddItemUnidentifiedDesc(ItemID, v)
			if not result then
				return false, msg
			end
		end
		for k, v in pairs(DESC.identifiedDescriptionName) do
			result, msg = AddItemIdentifiedDesc(ItemID, v)
			if not result then
				return false, msg
			end
		end
	end
	return true, "good"
end

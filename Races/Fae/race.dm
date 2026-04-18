race
	fae
		name = "Fae"
		desc = "Typically small creatures with an innate gift for magic. Mana runs in their veins like blood."
		visual = 'Fae.png'
		power = 1
		strength = 1.25
		endurance = 1.25
		speed = 1.75
		force = 1.75
		offense = 1.25
		defense = 1.5
		anger = 1.5
		regeneration = 2
		recovery = 2
		imagination = 3

		onFinalization(mob/user)
			user.Class = input(user,"What type of Fae are you?", "Fae Species") in list("Pixie","Goblin")//I may add other types like Dryads later. Went with my 2 favorite types for now.
			switch(user.Class)
				if("Pixie") //Your typical butterfly-winged little tricksters. Forcies
					skills = list(/obj/Skills/Buffs/SlotlessBuffs/Autonomous/FaeBuffs/Pixie_Mania) //give them Hideous Laughter once its coded.
					passives["ManaGeneration"] = 1
					passives["QuickCast"] = 1
				if("Goblin") //Playable Raccoons with a need for speed.
					skills = list(/obj/Skills/Buffs/SlotlessBuffs/Autonomous/FaeBuffs/Fury_of_the_Small) //Give them Pack Tactics once its coded.
					passives["ManaSteal"] = 1
					passives["BlurringStrikes"] = 1

			..()

//ok chat, I was planning to make it so Fae got all the spell passives during their Buffs due to Innovation they get during it.
//But I didn't add that JUST yet due to how wonky magic balance seems to be. I may just make their innovations do special things outside of the original idea.
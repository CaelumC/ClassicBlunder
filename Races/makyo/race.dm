race
	makyo
		name = "Faetouched" //PLACEHOLDER
		desc = "These spiritual beings are rumored to have connections to the Courts of the Fae.."
		visual = 'Makyos.png'
		locked = FALSE
		strength = 1.25
		endurance = 1.25
		speed = 1.25
		force = 1.25
		offense = 1.25
		defense = 1.25
		imagination = 3
		passives = list("ManaCapMult" = 0.25, "Adaptation" = 1)
		onFinalization(mob/user)
			. = ..()
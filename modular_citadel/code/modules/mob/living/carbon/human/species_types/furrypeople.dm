/datum/species/mammal
	name = "Mammal"
	id = "mammal"
	default_color = "4B4B4B"
	species_traits = list(MUTCOLORS,EYECOLOR,LIPS,HAIR,SPECIES_ORGANIC)
	mutant_bodyparts = list("mam_tail", "mam_ears", "mam_body_markings", "snout", "taur")
	default_features = list("mcolor" = "FFF","mcolor2" = "FFF","mcolor3" = "FFF", "body_markings" = "husky", "mam_tail" = "husky", "mam_ears" = "husky", "mam_body_markings" = "husky", "taur" = "None")
	attack_verb = "claw"
	attack_sound = 'sound/weapons/slash.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'
	meat = /obj/item/reagent_containers/food/snacks/meat/slab/human/mutant/mammal
	liked_food = MEAT | FRIED
	disliked_food = TOXIC

/datum/species/mammal/spec_death(gibbed, mob/living/carbon/human/H)
	if(H)
		H.endTailWag()

/datum/species/mammal/qualifies_for_rank(rank, list/features)
	return TRUE

/datum/species/mammal/on_species_gain(mob/living/carbon/human/C)
	C.draw_citadel_parts()
	. = ..()

/datum/species/mammal/on_species_loss(mob/living/carbon/human/C)
	C.draw_citadel_parts(TRUE)
	. = ..()
//AVIAN//
/datum/species/avian
	name = "Avian"
	id = "avian"
	say_mod = "chirps"
	default_color = "BCAC9B"
	species_traits = list(MUTCOLORS,EYECOLOR,LIPS,HAIR,SPECIES_ORGANIC)
	mutant_bodyparts = list("snout", "wings", "taur", "mam_tail", "mam_body_markings", "taur")
	default_features = list("snout" = "Sharp", "wings" = "None", "taur" = "None", "mam_body_markings" = "Hawk")
	attack_verb = "peck"
	attack_sound = 'sound/weapons/slash.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'
	liked_food = MEAT | FRUIT
	disliked_food = TOXIC

/datum/species/avian/spec_death(gibbed, mob/living/carbon/human/H)
	if(H)
		H.endTailWag()

/datum/species/avian/qualifies_for_rank(rank, list/features)
	return TRUE

/datum/species/avian/on_species_gain(mob/living/carbon/human/C)
	C.draw_citadel_parts()
	. = ..()

/datum/species/avian/on_species_loss(mob/living/carbon/human/C)
	C.draw_citadel_parts(TRUE)
	. = ..()

//AQUATIC//
/datum/species/aquatic
	name = "Aquatic"
	id = "aquatic"
	default_color = "BCAC9B"
	species_traits = list(MUTCOLORS,EYECOLOR,LIPS,HAIR,SPECIES_ORGANIC)
	mutant_bodyparts = list("mam_tail", "mam_body_markings", "mam_ears", "taur")
	default_features = list("mcolor" = "FFF","mcolor2" = "FFF","mcolor3" = "FFF","mam_tail" = "shark", "mam_body_markings" = "None", "mam_ears" = "None")
	attack_verb = "bite"
	attack_sound = 'sound/weapons/bite.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'
	liked_food = MEAT
	disliked_food = TOXIC
	meat = /obj/item/reagent_containers/food/snacks/carpmeat/aquatic

/datum/species/aquatic/spec_death(gibbed, mob/living/carbon/human/H)
	if(H)
		H.endTailWag()

/datum/species/aquatic/qualifies_for_rank(rank, list/features)
	return TRUE

/datum/species/aquatic/on_species_gain(mob/living/carbon/human/C)
	C.draw_citadel_parts()
	. = ..()

/datum/species/aquatic/on_species_loss(mob/living/carbon/human/C)
	C.draw_citadel_parts(TRUE)
	. = ..()

//INSECT//
/datum/species/insect
	name = "Insect"
	id = "insect"
	default_color = "BCAC9B"
	species_traits = list(MUTCOLORS,EYECOLOR,LIPS,HAIR,SPECIES_ORGANIC)
	mutant_bodyparts = list("mam_body_markings", "mam_ears", "mam_tail", "taur", "moth_wings")
	default_features = list("mcolor" = "FFF","mcolor2" = "FFF","mcolor3" = "FFF", "mam_body_markings" = "moth", "mam_tail" = "None", "mam_ears" = "None", "moth_wings" = "None")
	attack_verb = "flutter" //wat?
	attack_sound = 'sound/weapons/slash.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'
	liked_food = MEAT | FRUIT
	disliked_food = TOXIC

/datum/species/insect/spec_death(gibbed, mob/living/carbon/human/H)
	if(H)
		H.endTailWag()

/datum/species/insect/qualifies_for_rank(rank, list/features)
	return TRUE

/datum/species/insect/on_species_gain(mob/living/carbon/human/C)
	C.draw_citadel_parts()
	. = ..()

/datum/species/insect/on_species_loss(mob/living/carbon/human/C)
	C.draw_citadel_parts(TRUE)
	. = ..()

//Alien//
/datum/species/xeno
	// A cloning mistake, crossing human and xenomorph DNA
	name = "xeno"
	id = "xeno"
	say_mod = "hisses"
	default_color = "00FF00"
	species_traits = list(MUTCOLORS,EYECOLOR,LIPS,SPECIES_ORGANIC)
	mutant_bodyparts = list("xenotail", "xenohead", "xenodorsal", "legs", "taur","mam_body_markings")
	default_features = list("xenotail"="xeno","xenohead"="standard","xenodorsal"="standard","mcolor" = "0F0","mcolor2" = "0F0","mcolor3" = "0F0","taur" = "None","mam_body_markings" = "xeno")
	attack_verb = "slash"
	attack_sound = 'sound/weapons/slash.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'
	meat = /obj/item/reagent_containers/food/snacks/meat/slab/xeno
	skinned_type = /obj/item/stack/sheet/animalhide/xeno
	exotic_bloodtype = "L"
	damage_overlay_type = "xeno"
	liked_food = MEAT

/datum/species/xeno/on_species_gain(mob/living/carbon/human/C)
	C.draw_citadel_parts()
	. = ..()

/datum/species/xeno/on_species_loss(mob/living/carbon/human/C)
	C.draw_citadel_parts(TRUE)
	. = ..()

//Praise the Omnissiah, A challange worthy of my skills - HS

//EXOTIC//
//These races will likely include lots of downsides and upsides. Keep them relatively balanced.//
/*
/datum/species/xeno
	name = "Xenomorph"
	id = "xeno"
	say_mod = "hisses"
	eyes = "none"
	species_traits = list()
	mutant_organs = list(/obj/item/organ/tongue/alien)
	mutant_bodyparts = list("xenohead",
							"xenodorsal",
							"xenotail")
	default_features = list("xenohead"="Hunter",
							"xenodorsal"="Dorsal Tubes",
							"xenotail"="Xenomorph Tail")
	attack_verb = "slash"
	attack_sound = 'sound/weapons/slash.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'
	burnmod = 1.75
	heatmod = 1.75
	darksight = 4 //Just above slimes
	exotic_blood = "xblood"
	damage_overlay_type = "xeno"
	no_equip = list(slot_glasses) //MY EYES, THEY'RE GONE
	meat = /obj/item/reagent_containers/food/snacks/meat/slab/xeno
	skinned_type = /obj/item/stack/sheet/animalhide/xeno
//	safe_toxins_max = 32 //Too much of anything is bad.
//	whitelisted = 1
//	whitelist = list("talkingcactus") //testing whitelisting

/datum/species/xeno/on_species_gain(mob/living/carbon/C, datum/species/old_species)
	..()
	var/obj/effect/decal/cleanable/xenoblood/xgibs/XG
	if(istype(C.gib_type, XG))
		return
	else
		C.gib_type = XG

/datum/species/xeno/on_species_loss(mob/living/carbon/C)
	..()
	var/obj/effect/decal/cleanable/xenoblood/xgibs/XG
	var/obj/effect/decal/cleanable/blood/gibs/HG
	if(istype(C.gib_type, XG))
		C.gib_type = HG
	else
		return

/datum/reagent/toxin/acid/xenoblood
	name = "acid blood"
	id = "xblood"
	description = "A highly corrosive substance, it is capable of burning through most natural or man-made materials in short order."
	color = "#66CC00"
	toxpwr = 0
	acidpwr = 12 */


//misc
/mob/living/carbon/human/dummy
	no_vore = TRUE

/mob/living/carbon/human/vore
	devourable = TRUE
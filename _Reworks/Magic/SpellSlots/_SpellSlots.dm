/obj/Skills/var
    SpellSlot=0;//hands down the worst way to do this, but unfortunately, we don't use inheritance well for our skills system so it's just gonna have to work

/mob/proc/getSpellSlots()
    var/list/slots = list()
    for(var/obj/Skills/s in src)
        if(s.SpellSlot) slots |= s;
    return slots.len > 0 ? slots : 0;

/mob/verb/find_spell_slots()
    set category="Debug"
    set name = "DEBUG: Find Spell Slots"
    var/list/slots = getSpellSlots()
    if(!slots)
        src << "no slots"
        return;
    for(var/x in slots)
        src << "slot found: [x]";

//water
/obj/Skills/Buffs/SlotlessBuffs/Magic/Water
    Wetten_Socks
        SpellSlot=1;
/obj/Skills/AutoHit/Magic/Water
    Riptide
        SpellSlot=1;
/obj/Skills/Projectile/Magic/Water
    Frost_Shamshir
        SpellSlot=1;

//fire
/obj/Skills/AutoHit/Magic/Fire
    Inferno_Cannon
        SpellSlot=1;
/obj/Skills/Projectile/Fire//line, specifically
    Dragon_Arc
        SpellSlot=1;
/obj/Skills/Projectile/Fire//projectile version
    Fireball
        SpellSlot=1;

//earth
/obj/Skills/AutoHit/Magic/Earth//aoe
    Seismic_Entry
        SpellSlot=1;
/obj/Skills/Buffs/SlotlessBuffs/Magic/Earth
    Ward_of_Stone
        SpellSlot=1;//buff
    Prickly_Ballet
        SpellSlot=1;//debuff

//air
/obj/Skills/AutoHit/Magic/Air
    Breaking_Twister
        SpellSlot=1;
/obj/Skills/Buffs/SlotlessBuffs/Magic/Air
    Evading_Zephyr
        SpellSlot=1;
/obj/Skills/Projectile/Magic/Air
    Mentis_Imperium//line; but really emulate mach stunner
        SpellSlot=1;

//light
/obj/Skills/Buffs/SlotlessBuffs/Magic/Light
    Bless//buff
        SpellSlot=1;
/obj/Skills/Projectile/Magic/Light
    Lightspeed//line
        SpellSlot=1;
    Solar_Burst//projectile
        SpellSlot=1;

//time
/obj/Skills/AutoHit/Magic/Time
    Tempus_Cessat//aoe
        SpellSlot=1;
/obj/Skills/Buffs/SlotlessBuffs/Magic/Time
    Haste//buff
        SpellSlot=1;
    Wither//debuff
        SpellSlot=1;

//dark
/obj/Skills/AutoHit/Magic/Dark
    Shadow_Cleave
        SpellSlot=1;
/obj/Skills/Projectile/Magic/Dark
    Arachnae_Touch//line
        SpellSlot=1;
    Void_Blast//projectile
        SpellSlot=1;

//space
/obj/Skills/AutoHit/Magic/Space
    Flux//aoe
        SpellSlot=1;
    Flow//autohit
        SpellSlot=1;
/obj/Skills/Buffs/SlotlessBuffs/Magic/Space
    Friction//debuff
        SpellSlot=1;
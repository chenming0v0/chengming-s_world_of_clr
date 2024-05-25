//mods.randomtweaker.tconstruct.IBook.setMaterialPriority(material as string, priority as int)

//mods.randomtweaker.tconstruct.IBook.changeMaterialItem(material as string, stack as IItemStack)


if(true){
    //魔法木头
    mods.randomtweaker.tconstruct.IBook.changeMaterialItem("xu_magical_wood", <extrautils2:decorativesolidwood:1>);
    //恶魔金属
    mods.randomtweaker.tconstruct.IBook.changeMaterialItem("xu_evil_metal", <extrautils2:ingredients:17>);
    //附魔金属
    mods.randomtweaker.tconstruct.IBook.changeMaterialItem("xu_enchanted_metal", <extrautils2:ingredients:12>);
    //恶魔金属
    mods.randomtweaker.tconstruct.IBook.changeMaterialItem("xu_demonic_metal", <extrautils2:ingredients:11>);
    //恶魔金属
    mods.randomtweaker.tconstruct.IBook.changeMaterialItem("psigem", <psi:material:2>);
}
val tcon as string[] =
[
"wood", 
"stone", 
"obsidian", 
"sponge",
"netherrack", 
"firewood",
"prismarine", 
"endstone", 
//末地石
"sky_stone",

"flint", 
"tic_coal", 
"tic_iron", 
"tic_gold_ingot", 
"tic_copper", 
"tic_tin", 
"tic_lead", 
"tic_silver", 
"tic_aluminum", 
"uranium",
"nickel",
"platinum",
"iridium",

"fluix_steel", 

"tic_diamond", 
"tic_emerald", 

"slime", 
"blueslime", 
"magmaslime", 

"tic_certusquartz", 
"tic_certusquartz1", 
"fluix", 

"tic_knowledge", 
"alumite",
"pigiron", 
"cactus", 
"paper", 
"bone", 
"tic_crystalshard", 
"tic_crab_shell", 
"tic_glass_shards", 

"tic_vilespine",
"umbrium",
"tic_ravaging",

"silentwood",
"aurorianstone",
"moonstone",
"cerulean",
"auroriansteel",

"nagascale",
"steeleaf",
"moretcon.ironwood",
"knightmetal",
"moretcon.penguinite",
"fierymetal",

"knightslime",
"tic_universe_sky",
];

for i in 0 to tcon.length{
    var b as int = i;
    var a as int = -100000 + b;
    mods.randomtweaker.tconstruct.IBook.setMaterialPriority(tcon[i], a);
}


val tcon1 as string[]=
[
"moretcon.slimewood",
"moretcon.nahuatl",
//钢叶合金
"moretcon.ferroherb",
//天境
"moretcon.amberwood",
//暗影玻璃
"moretcon.shadowglass",
//末影
"moretcon.enderexamite",

//特殊
"moretcon.plasma",
"moretcon.technoblade",
"moretcon.triblade",
"moretcon.trailblazer",
];
for i in 0 to tcon1.length{
    var b as int = i;
    var a as int = 100000 + b;
    mods.randomtweaker.tconstruct.IBook.setMaterialPriority(tcon1[i], a);
}


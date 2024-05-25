import crafttweaker.item.IItemStack;

val remove as IItemStack[]=[
    //充能红石水晶
    <actuallyadditions:item_crystal_empowered>,
    //充能红石水晶块
    <actuallyadditions:block_crystal_empowered>,
    //充能钻石水晶
    <actuallyadditions:item_crystal_empowered:2>,
    //充能钻石水晶块
    <actuallyadditions:block_crystal_empowered:2>,
    
];

for item in remove {
    mods.actuallyadditions.Empowerer.removeRecipe(item);
}

//充能红石水晶
mods.actuallyadditions.Empowerer.addRecipe(
    <actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal>,
    <extrautils2:ingredients:9>,<defiledlands:scarlite>, <tconstruct:edible:3>, <extrautils2:ingredients:11>, 5000, 60
);

//充能红石水晶块
mods.actuallyadditions.Empowerer.addRecipe(
    <actuallyadditions:block_crystal_empowered>,<actuallyadditions:block_crystal>,
    <extrautils2:ingredients:9>,<defiledlands:scarlite>, <tconstruct:edible:3>, <extrautils2:ingredients:11>, 5000, 60
);

//充能钻石水晶
mods.actuallyadditions.Empowerer.addRecipe(
    <actuallyadditions:item_crystal_empowered:2>,<actuallyadditions:item_crystal:2>,
    <mekanism:reinforcedalloy>,<botania:manaresource:2>, <netherex:rime_crystal>,<contenttweaker:tian>, 10000, 80
);

//充能钻石水晶块
mods.actuallyadditions.Empowerer.addRecipe(
    <actuallyadditions:block_crystal_empowered:2>,<actuallyadditions:block_crystal:2>,
    <mekanism:reinforcedalloy>,<botania:manaresource:2>, <netherex:rime_crystal>,<contenttweaker:tian>, 10000, 80
);

//充能钻石水晶
mods.actuallyadditions.Empowerer.addRecipe(
    <actuallyadditions:item_crystal_empowered:2>,<actuallyadditions:item_crystal:2>,
    <mekanism:reinforcedalloy>,<botania:manaresource:2>, <netherex:rime_crystal>,<thermalfoundation:material:2048>, 10000, 80
);

//充能钻石水晶块
mods.actuallyadditions.Empowerer.addRecipe(
    <actuallyadditions:block_crystal_empowered:2>,<actuallyadditions:block_crystal:2>,
    <mekanism:reinforcedalloy>,<botania:manaresource:2>, <netherex:rime_crystal>,<thermalfoundation:material:2048>, 10000, 80
);

//高级控制电路
mods.actuallyadditions.Empowerer.addRecipe(
    <mekanism:controlcircuit:1>,<contenttweaker:wei_jia_gong_de_gjdlb>,
    <actuallyadditions:item_crystal_empowered>,<mekanism:enrichedalloy>,<actuallyadditions:item_crystal_empowered>,<extrautils2:ingredients:11>, 12000, 80
);
import crafttweaker.item.IItemStack;
import mods.mekatweaker.InfuserType;

InfuserType.addTypeObject(<contenttweaker:fu_ji_wu_3>, "HONG_SHI_SHUI_JING", 80);
InfuserType.addTypeObject(<actuallyadditions:item_crystal>, "HONG_SHI_SHUI_JING", 20);

InfuserType.addTypeObject(<contenttweaker:fu_ji_wu_2>, "JING_TAI_HAN_SHUANHG", 80);
InfuserType.addTypeObject(<netherex:rime_crystal>, "JING_TAI_HAN_SHUANHG", 20);

InfuserType.addTypeObject(<contenttweaker:fu_ji_wu_4>, "GONG_ZHENG", 80);
InfuserType.addTypeObject(<threng:material:5>, "GONG_ZHENG", 20);


val remove as IItemStack[]=[
//基础电路板
<mekanism:controlcircuit>,
//富集合金
<mekanism:enrichedalloy>,
//强化合金
<mekanism:reinforcedalloy>,
//原子合金
<mekanism:atomicalloy>,
];
for item in remove {
    mods.mekanism.infuser.removeRecipe(item);
}


//电路板
mods.mekanism.infuser.addRecipe("HONG_SHI_SHUI_JING", 20, <contenttweaker:wei_jia_gong_de_jcdlb>, <mekanism:controlcircuit>);

//富集合金
mods.mekanism.infuser.addRecipe("HONG_SHI_SHUI_JING", 20, <extrautils2:ingredients:12>, <mekanism:enrichedalloy>);

//强化合金
mods.mekanism.infuser.addRecipe("JING_TAI_HAN_SHUANHG", 20, <mekanism:enrichedalloy>, <mekanism:reinforcedalloy>);

//原子合金
mods.mekanism.infuser.addRecipe("GONG_ZHENG", 20, <mekanism:reinforcedalloy>, <mekanism:atomicalloy>);
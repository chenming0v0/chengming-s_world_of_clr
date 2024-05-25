import crafttweaker.item.IItemStack;

val banitem1 as IItemStack[]=
[
<enderio:item_material:9>,
<enderio:item_material:10>,
<enderio:item_material:11>,
<enderio:item_material:12>,
<enderio:item_material:13>,
<enderio:item_material:73>,
/*这上面的是末影接口的齿轮 */
<cyclicmagic:uncrafting_block>,
<twilightforest:uncrafting_table>,
/* 分解台 */
<super_solar_panels:iridium_block>,
<super_solar_panels:platium_block>,
<super_solar_panels:iridium_ore>,
<super_solar_panels:platium_ore>,
/*sb 的超级太阳能矿石,没一点用 */
];

for ban_item in banitem1{
mods.ItemStages.addItemStage("ban",ban_item);
}

mods.orestages.OreStages.addReplacement("ban", <super_solar_panels:iridium_ore>, <taiga:jauxum_ore>);
mods.orestages.OreStages.addReplacement("ban", <super_solar_panels:platium_ore>, <taiga:ovium_ore>);

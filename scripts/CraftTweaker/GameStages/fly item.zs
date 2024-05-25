import crafttweaker.item.IItemStack;

val flyitem as IItemStack[]=
[
<cyclicmagic:charm_air:*>,
/* 御空饰品 */
];

for fly_item in flyitem{
mods.ItemStages.addItemStage("fly",fly_item);
}